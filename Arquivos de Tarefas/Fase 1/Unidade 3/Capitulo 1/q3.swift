var num1:Int = 0
var num2:Int = 0

print("Insira o primeiro numero:")

if let input1 = readLine() {
    if let convert1 = Int(input1) {
        num1 = convert1
        print() // nova linha
    }
}

print("Insira o segundo numero:")

if let input2 = readLine() {
    if let convert2 = Int(input2) {
        num2 = convert2
        print() // nova linha
    }
}

print("Soma: \(num1+num2)")
print("Diferença: \(num1-num2)")
print("Produto: \(num1*num2)")
