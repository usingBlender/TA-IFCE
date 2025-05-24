print("Insira seu numero: ")

if let input = readLine() {
    print() // nova linha pra ficar bonitin

    if let num = Int(input) {
        print("Antecessor: \(num-1)")
        print("Atual: \(num)")
        print("Sucessor: \(num+1)")
    }
}
