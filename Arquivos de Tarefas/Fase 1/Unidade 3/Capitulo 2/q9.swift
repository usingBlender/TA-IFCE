func verificarPrimo() {
    var num:Int? = nil

    print("Insira um número para verificar se é primo: ")
    if let input = readLine() {
        if(Int(input) != nil) {
            num = Int(input)
        }
        else {
            print("Número inválido.\n")
            return verificarPrimo();
        }
    }
    else {
        print("Falha ao ler input, tente novamente.\n")
        return verificarPrimo();
    }

    // reciclar o algoritmo da unidade 2 tarefa 2, a explicação mais detalhada tá por lá:
    // obrigado stack overflow...

    // verificações iniciais, não usa loop mas deixa mais rapido e não quebra
    if(num! < 0) {
        print("Números negativos não podem ser primos.\n")
        return;
    }
    if(num! >= 1 && num! <= 3) {
        print("O número \(num!) é primo.\n")
        return;
    }
    if(num! % 2 == 0 || num! % 3 == 0) {
        print("O número \(num!) não é primo.\n")
        return;
    }

    // o loop, não ficou bonito, mas enfim
    var i:Int = 5

    while(i*i <= num!) {
        if(num!%i == 0 || num!%(i+2) == 0) {
            print("O número \(num!) não é primo.\n")
            return;
        }

        i += 6
    }

    print("O número \(num!) é primo.\n")
}

// teste

verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
verificarPrimo()
