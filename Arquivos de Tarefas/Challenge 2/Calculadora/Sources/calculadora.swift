import ArgumentParser

@main
struct Calculadora:ParsableCommand {
    @Option(help: "Input the gamepass price, get the value the seller is given, tax accounted for (30%)")
    var gamepassReward:Int? = nil // func done

    @Option(help: "Input the desired value, get the price of the gamepass needed to reward it")
    var gamepassCost:Int? = nil // func done

    // Money stuff below
    @Option(help: "Input a currency to translate outputs to, works alongside other options")
    var currency:String = "USD" // to-do

    @Option(help: "Input a value to see how much it'll amount to through DevEx")
    var devex:Int? = nil // func done

    @Flag(help: "Enable or disable the purchase guides on the RBX-Money or Money-RBX options")
    var hidePurchaseGuide:Bool = false

    @Option(help: "Input an amount of robux, get how much it'll cost and what to purchase")
    var robux:Int? = nil

    @Option(help: "Input an amount of money, get how much roblox it'll total to and what to purchase")
    var money:Int? = nil

    mutating func run() throws {
    }
}
