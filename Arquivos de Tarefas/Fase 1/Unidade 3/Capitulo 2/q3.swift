func verificarIdade() {
    var idade:Int? = nil

    print("Insira sua idade: ")
    if let input = readLine() {
        if(Int(input) != nil) {
            idade = Int(input)
        }
        else {
            print("Idade inválida.\n")
            return verificarIdade();
        }
    }
    else {
        print("Falha ao ler input, tente novamente.\n")
        return verificarIdade();
    }

    if(idade!<=12) {
        print("Você é criança.")
    }
    if(idade!>12 && idade!<=17) {
        print("Você é adolescente.")
    }
    if(idade!>=18) {
        print("Você é adulto.")
    }
}

// teste

verificarIdade()
