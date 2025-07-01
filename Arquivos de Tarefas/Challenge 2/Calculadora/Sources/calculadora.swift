import ArgumentParser

@main
struct Calculadora:AsyncParsableCommand {
    @Option(name: .long, help: "Input the gamepass price, get the value the seller is given, tax accounted for (30%)")
    var gamepassReward:Int? = nil // IMPLEMENTADO

    @Option(name: .long, help: "Input the desired value, get the price of the gamepass needed to reward it")
    var gamepassCost:Int? = nil // IMPLEMENTADO

    // Coisas de dinheiro abaixo
    @Option(name: .long, help: "Input a currency to translate outputs to, works alongside other options")
    var currency:String = "usd" // IMPLEMENTADO

    @Option(name: .long, help: "Input a value to see how much it'll amount to through DevEx")
    var devex:Int? = nil // IMPLEMENTADO

    @Flag(name: .long, help: "Enable or disable the purchase guides on the RBX-Money or Money-RBX options")
    var hidePurchaseGuide:Bool = false // IMPLEMENTADO

    @Option(name: .long, help: "Input an amount of robux, get how much it'll cost and what to purchase")
    var robux:Int? = nil // IMPLEMENTADO

    @Option(name: .long, help: "Input an amount of money, get how much roblox it'll total to and what to purchase")
    var money:Double? = nil // IMPLEMENTADO

    mutating func run() async throws {
        // CALCULO DE LIQUIDEZ DE GAMEPASS
        if gamepassReward != nil {
            let reward = CalculateGamepassReward(gamepassPrice:gamepassReward!)

            let output = """
            \n=========================================
            CALCULO DE RECOMPENSA DE GAMEPASS: 

            CUSTO (INICIAL): \(gamepassReward!) RBX
            RECOMPENSA (FINAL): \(reward) RBX

            """

            print(output)
        }

        // CALCULO DE CUSTO DE GAMEPASS
        if gamepassCost != nil {
            let cost = CalculateGamepassCost(desiredReward: gamepassCost!)

            let output = """
            \n=========================================
            CALCULO DE CUSTO DE GAMEPASS:

            CUSTO (FINAL): \(cost) RBX
            RECOMPENSA (INICIAL): \(gamepassCost!) RBX

            """

            print(output)
        }

        // VERIFICAR SE HOUVE MUDANÇA DE MOEDA
        var rate:Double = 1.0 // base rate pra USD
        if currency != "usd" {
            let manager = CurrencyExchangeManager()

            // muito feio, mas acho que assim funciona do jeito que eu quero que funcione
            var isLoaded = false
            switch (await manager.LoadData()) {
                case .success(let bool):
                    isLoaded = bool
                    break
                case .failure(let error):
                    let errorOutput = """
                    \n=========================================
                    ERRO ENCONTRADO:

                    \(error.localizedDescription)

                    """

                    print(errorOutput)
                    return
            }

            // verificação de validade dos codigos & busca da taxa
            let invalidOutput = """
            \n=========================================
            ERRO ENCONTRADO:

            Código de moeda inválido, siga o padrão (USD, BRL, aud, gbp)

            """

            let validity = manager.VerifyCodeValidity(currencyCode: currency)

            if !validity {
                print(invalidOutput)
                return
            }

            let (foundRate, wasFound) = manager.FindRateByCode(currencyCode: currency)

            if wasFound {
                rate = foundRate
            } else {
                print(invalidOutput)
                return
            }
        }

        // DEVEX
        if devex != nil {
            var payout = CalculateDevEx(robuxAmount: devex!)

            if currency != "usd" {
                payout = payout*rate
            }

            let output = """
            \n=========================================
            CALCULO DE DEVEX:

            ROBUX: \(devex!) RBX
            RECOMPENSA: \(payout) \(currency.uppercased())

            """

            print(output)
        }

        // GUIA ROBUX->DINHEIRO
        if robux != nil {
            var (remainder, mixedTotal, desktopTotal, costBreakdown, costTransactions) = RobuxToMoney(robux: robux!, hideDescription: hidePurchaseGuide, multiplier: rate, currency: currency)

            var output = """
            \n=========================================
            GUIA ROBUX -> DINHEIRO:

            ROBUX (PARA COMPRAR): \(robux!) RBX
            RESTO (NÃO COMPRÁVEL): \(remainder) RBX

            """

            if costTransactions <= 0 {
                output += """
                \n--------------------

                A quantia de robux em questão não permite nenhuma compra, tente um valor maior

                """
            } else {
                if currency != "usd" {
                    mixedTotal = mixedTotal*rate
                    desktopTotal = desktopTotal*rate
                }

                output += """
                \n--------------------

                TOTAL (COMPRAS PC + MOBILE): \(mixedTotal) \(currency.uppercased())
                TOTAL (COMPRAS SOMENTE PC): \(desktopTotal) \(currency.uppercased())

                \n--------------------
                """

                if costBreakdown != nil {
                    output += costBreakdown!
                }
            }

            print(output)
        }

        // GUIA DINHEIRO->ROBUX
        if money != nil {
            var (remainder, mixedTotal, desktopTotal, costBreakdown, costTransactions) = MoneyToRobux(money: money!, hideDescription: hidePurchaseGuide, multiplier: rate, currency: currency)

            var output = """
            \n=========================================
            GUIA DINHEIRO -> ROBUX:

            DINHEIRO (PARA GASTAR): \(money!) \(currency.uppercased())
            RESTO (NÃO GASTÁVEL): \(remainder) \(currency.uppercased())

            """

            if costTransactions <= 0 {
                output += """
                \n--------------------

                A quantia de dinheiro em questão não permite nenhuma compra, tente um valor maior
                """
            } else {
                output += """
                \n--------------------

                TOTAL (COMPRAS PC + MOBILE): \(mixedTotal) RBX
                TOTAL (COMPRAS SOMENTE PC): \(desktopTotal) RBX

                \n--------------------
                """

                if costBreakdown != nil {
                    output += costBreakdown!
                }
            }

            print(output)
        }
    }
}
