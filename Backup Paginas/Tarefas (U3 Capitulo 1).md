# Tarefas (U3 Capitulo 1)

# Questão 1

### Crie um algoritmo que:

### (a) Solicite o nome de um usuário.

### (b) Exiba uma mensagem personalizada, como: "Olá, [nome]! Seja bem-vindo ao mundo da programação."

```swift
print("Escreva seu nome:")

if let name:String = readLine() {
    print("Olá, \(name)! Seja bem-vindo ao mundo da programação.")
}
```

```
Escreva seu nome:
Enzo
Olá, Enzo! Seja bem-vindo ao mundo da programação.

=== Code Execution Successful ===
```

# Questão 2

### Escreva um programa em Swift que:

**● Declare uma constante chamada nome e atribua o valor "Swift".**

**● Declare uma variável chamada versao e atribua o valor 5.9.**

**● Imprima na tela: "A linguagem nome está na versão versao".**

### Exemplo de saída esperada:

```
A linguagem Swift está na versão 5.9
```

**RESPOSTA:**

```swift
let nome:String = "Swift"
var versao:String = "5.9"

print("A linguagem \(nome) está na versão \(versao)")
```

```
A linguagem Swift está na versão 5.9

=== Code Execution Successful ===
```

# Questão 3

### Crie um programa que:

**Solicite dois números inteiros do usuário;**

**Calcule e exiba:**

**● A soma dos dois números.**

**● A diferença entre os dois números.**

**● O produto dos dois números.**

### Saída esperada:

```
Digite o primeiro número: 8 
Digite o segundo número: 3 
Soma: 11 
Diferença: 5 
Produto: 24
```

**RESPOSTA:**

```swift
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
```

```
Insira o primeiro numero:
23

Insira o segundo numero:
2

Soma: 25
Diferença: 21
Produto: 46

=== Code Execution Successful ===
```

# Questão 4

### Crie uma tupla chamada carro que contenha as informações: modelo (String), ano de fabricação (Int) e preço (Double).

### Imprima cada valor da tupla separadamente.

```
Modelo: Mustang
Ano: 2020
Preço: 450000.0
```

**RESPOSTA:**

```swift
let veiculo:(modelo:String, ano:Int, preco:Float) = ("Mustang", 2020, 450000.0)

print("Modelo: \(veiculo.modelo)")
print("Ano: \(veiculo.ano)")
print("Preço: \(veiculo.preco)")
```

```
Modelo: Mustang
Ano: 2020
Preço: 450000.0

=== Code Execution Successful ===
```

# Questão 5

### Faça um programa em Swift que receba um número inteiro e imprima na tela o seu antecessor e o seu sucessor.

**RESPOSTA:**

```swift
print("Insira seu numero: ")

if let input = readLine() {
    print() // nova linha pra ficar bonitin

    if let num = Int(input) {
        print("Antecessor: \(num-1)")
        print("Atual: \(num)")
        print("Sucessor: \(num+1)")
    }
}
```

```
Insira seu numero: 
234

Antecessor: 233
Atual: 234
Sucessor: 235

=== Code Execution Successful ===
```
