# Tarefas (U3 Capitulo 3)

# Questão 1

### Escreva uma função chamada soma que receba dois números inteiros como parâmetros e retorne a soma deles. Em seguida, chame essa função no programa principal e exiba o resultado.

```swift
func soma(num1: Int, num2: Int) -> Int {
    return num1 + num2;
}

// teste
print(soma(num1: 2, num2: 3))
print(soma(num1: 3, num2: 5))
```

```
5
8

=== Code Execution Successful ===
```

# Questão 2

### Crie uma função chamada exibirMensagem que receba um parâmetro nome do tipo String e exiba a mensagem:

```
Bem-vindo(a), <nome>!
```

### Teste a função passando o nome "Ana".

```swift
func exibirMensagem(nome: String) {
    print("Bem-vindo(a), \(nome)!")
}

//teste
exibirMensagem(nome: "Ana")
```

```
Bem-vindo(a), Ana!

=== Code Execution Successful ===
```

# Questão 3

### Implemente uma função chamada calcularArea que receba dois parâmetros: a largura e o comprimento de um retângulo (ambos do tipo Double) e retorne a área. Utilize a função para calcular a área de um retângulo com largura 5.0 e comprimento 10.0.

```swift
func calcularArea(largura: Double, comprimento: Double) -> Double {
    return largura * comprimento;
}

// teste

let area:Double = calcularArea(largura: 5.0, comprimento: 10.0)
print("\(area)m²")
```

```
50.0m²

=== Code Execution Successful ===
```

# Questão 4

### Crie uma função chamada verificarMaiorIdade que receba a idade de uma pessoa como parâmetro e retorne uma String:

- **"Maior de idade" se a idade for maior ou igual a 18.**
- **"Menor de idade" caso contrário.**

```swift
func verificarMaiorIdade(idade: UInt8) -> String {
    return idade >= 18 ? "Maior de idade" : "Menor de idade"
}

// teste

print(verificarMaiorIdade(idade: 17))
print(verificarMaiorIdade(idade: 18))
```

```
Menor de idade
Maior de idade

=== Code Execution Successful ===
```

# Questão 5

### Escreva uma função chamada calcularMedia que receba três notas (do tipo Double) e retorne a média. Utilize a função para calcular a média das notas 7.5, 8.0 e 9.0.

```swift
func calcularMedia(nota1: Double, nota2: Double, nota3: Double) -> Double {
    return (nota1 + nota2 + nota3) / 3
}

// teste

let media:Double = calcularMedia(nota1: 7.5, nota2: 8.0, nota3: 9.0)
print("Média: \(media)")
```

```
Média: 8.166666666666666

=== Code Execution Successful ===
```

# Questão 6

### Escreva uma função chamada verificarPar que receba um número inteiro como parâmetro e retorne true se o número for par e false caso contrário. Teste a função com diferentes números.

```swift
func verificarPar(input: Int) -> Bool {
    return input%2 == 0 ? true : false
}

// teste

print(verificarPar(input: 2))
print(verificarPar(input: 7))
```

```
true
false

=== Code Execution Successful ===
```

# Questão 7

### Implemente uma função chamada imprimirTabuada que receba um número inteiro como parâmetro e imprima a tabuada de 1 a 10 para esse número. Chame a função no programa principal com o número 7.

```swift
func imprimirTabuada(input: Int) {
    for i in 1...10 {
        print("\(i)x\(input) = \(i*input)")
    }
}

// teste

imprimirTabuada(input: 7)
```

```
1x7 = 7
2x7 = 14
3x7 = 21
4x7 = 28
5x7 = 35
6x7 = 42
7x7 = 49
8x7 = 56
9x7 = 63
10x7 = 70

=== Code Execution Successful ===
```

# Questão 8

### Escreva uma função chamada verificarPalindromo que receba uma palavra do tipo String e retorne true se a palavra for um palíndromo (ou seja, se puder ser lida da mesma forma de trás para frente) e false caso contrário.

```swift
func verificarPalindromo(input: String) -> Bool {
    return String(input.reversed()) == input ? true : false
}

// teste

print(verificarPalindromo(input: "veiculo"))
print(verificarPalindromo(input: "arara"))
```

```
false
true

=== Code Execution Successful ===
```
