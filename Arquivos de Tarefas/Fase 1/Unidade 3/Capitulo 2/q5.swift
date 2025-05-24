func fazerTabuada() {
    var num:Int? = nil

    print("Insira seu número:")
    if let input = readLine() {
        if(Int(input) != nil) {
            num = Int(input)
        }
        else {
            print("Número inválido, tente novamente.")
            return fazerTabuada()
        }
    }
    else {
        print("Falha ao ler input, tente novamente.\n")
        return fazerTabuada();
    }

    for i in 1...10 {
        print("\(i)x\(num!) = \(i*num!)")
    }
}

// testes
fazerTabuada()
