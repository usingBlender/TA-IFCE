func verificarNota() {
    var nota:UInt8? = nil

    print("Insira a nota: (0-100)")
    if let input = readLine() {
        if(UInt8(input) != nil) {
            nota = UInt8(input)
        }
        else {
            print("Nota inválida. Verifique se está entre 0 e 100.\n")
            return verificarNota();
        }
    }
    else {
        print("Falha ao ler input, tente novamente.\n")
        return verificarNota();
    }
    
    if(nota!>100) { // não pode ser menor que 0, aqui verifica se é maior de 100
        print("Nota inválida. Verifique se está entre 0 e 100.\n")
        return verificarNota();
    }

    if(nota!>=90) {
        print("A")
    }
    if(nota!>=80 && nota!<=89) {
        print("B")
    }
    if(nota!>=70 && nota!<=79) {
        print("C")
    }
    if(nota!<70) {
        print("Reprovado")
    }
}

// teste

verificarNota()
