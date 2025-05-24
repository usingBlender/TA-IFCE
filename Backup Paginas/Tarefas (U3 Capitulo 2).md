# Tarefas (U3 Capitulo 2)

# Questão 1

### Crie um array de strings contendo nomes de frutas: ["maçã", "banana", "laranja", "uva"]. Verifique se o array contém a fruta "morango". Caso não contenha, adicione-a ao array.

```swift
var frutas:[String] = [
    "maçã",
    "banana",
    "laranja",
    "uva"
]

// solução sensivel a caps/case
if (!frutas.contains("morango")) {
    frutas.append("morango")
}

// testes
for fruta in frutas {
    print(fruta)
}
```

```
maçã
banana
laranja
uva
morango

=== Code Execution Successful ===
```

# Questão 2

### Crie um array com os números [3, 5, 7, 9, 11]. Use um loop para calcular a soma de todos os elementos do array.

```swift
var nums:[Int] = [3, 5, 7, 9, 11]
var result = 0

for num in nums {
    result += num
}

// teste

print(result)
```

```
35

=== Code Execution Successful ===
```

# Questão 3

### Crie uma variável que armazene a idade de uma pessoa. Use uma estrutura if-else para classificar a idade como:

- **"Criança" se menor que 12.**
- **"Adolescente" se entre 12 e 17.**
- **"Adulto" se maior ou igual a 18.**

```swift
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
```

```
Insira sua idade: 
teste
Idade inválida.

Insira sua idade: 
11
Você é criança.

=== Code Execution Successful ===
```

# Questão 4

### Crie uma variável que armazene uma nota de 0 a 100. Use uma estrutura if-else para atribuir conceitos:

- **Nota maior ou igual a 90: "A".**
- **Nota entre 80 e 89: "B".**
- **Nota entre 70 e 79: "C".**
- **Nota abaixo de 70: "Reprovado".**

```swift
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
```

```
Insira a nota: (0-100)
-100
Nota inválida. Verifique se está entre 0 e 100.

Insira a nota: (0-100)
101
Nota inválida. Verifique se está entre 0 e 100.

Insira a nota: (0-100)
79
C

=== Code Execution Successful ===
```

# Questão 5

### Escreva um programa que solicite um número ao usuário e use um loop while para imprimir a tabuada desse número (1 a 10).Use um loop para somar todos os números ímpares de 1 a 50. Imprima o resultado da soma.

```swift
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

// teste

fazerTabuada()
```

```
Insira seu número:
12
1x12 = 12
2x12 = 24
3x12 = 36
4x12 = 48
5x12 = 60
6x12 = 72
7x12 = 84
8x12 = 96
9x12 = 108
10x12 = 120

=== Code Execution Successful ===
```

# Questão 6

### Use um loop para somar todos os números ímpares de 1 a 50. Imprima o resultado da soma.

```swift
var sum:Int = 0

for i in 1...50 {
    if(i % 2 == 1) {
        sum += i
    }
}

print("Resultado da soma de 1 -> 50: \(sum)")
```

```
Resultado da soma de 1 -> 50: 625

=== Code Execution Successful ===
```

# Questão 7

### Crie uma string qualquer, como "swift programming". Use um loop para contar o número de vogais (a, e, i, o, u) na string.

```swift
let input = "swift programming"
var tally = 0

for i in input {
    switch(i) {
        case "a", "e", "i", "o", "u":
            tally += 1
        default:
            continue
    }
}

print("Quantia de vogais: \(tally)")
```

```
Quantia de vogais: 4

=== Code Execution Successful ===
```

# Questão 8

### Crie um array de nomes: ["Ana", "João", "Maria", "Pedro"]. Use um loop para verificar se o nome "Carlos" está presente. Caso não esteja, adicione o nome ao array.

```swift
var nomes:[String] = [
    "Ana",
    "João",
    "Maria",
    "Pedro"
]

print("Antes: \(nomes)") // teste

let nomeInput:String = "Carlos"
var nomePresente:Bool = false

for nome in nomes {
    if(nome == nomeInput) {
        nomePresente = true
    }
}

if(!nomePresente) {
    nomes.append(nomeInput)
}

print("Depois: \(nomes)") // teste
```

```
Antes: ["Ana", "João", "Maria", "Pedro"]
Depois: ["Ana", "João", "Maria", "Pedro", "Carlos"]

=== Code Execution Successful ===
```

# Questão 9

### Solicite ao usuário um número inteiro positivo. Escreva um programa que use um loop para verificar se o número é primo.

```swift
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

verificarPrimo() // isso aqui 18 vezes
```

```
Insira um número para verificar se é primo: 
1
O número 1 é primo.

Insira um número para verificar se é primo: 
2
O número 2 é primo.

Insira um número para verificar se é primo: 
3
O número 3 é primo.

Insira um número para verificar se é primo: 
4
O número 4 não é primo.

Insira um número para verificar se é primo: 
5
O número 5 é primo.

Insira um número para verificar se é primo: 
6
O número 6 não é primo.

Insira um número para verificar se é primo: 
7
O número 7 é primo.

Insira um número para verificar se é primo: 
8
O número 8 não é primo.

Insira um número para verificar se é primo: 
9
O número 9 não é primo.

Insira um número para verificar se é primo: 
10
O número 10 não é primo.

Insira um número para verificar se é primo: 
11
O número 11 é primo.

Insira um número para verificar se é primo: 
12
O número 12 não é primo.

Insira um número para verificar se é primo: 
13
O número 13 é primo.

Insira um número para verificar se é primo: 
14
O número 14 não é primo.

Insira um número para verificar se é primo: 
15
O número 15 não é primo.

Insira um número para verificar se é primo: 
16
O número 16 não é primo.

Insira um número para verificar se é primo: 
17
O número 17 é primo.

Insira um número para verificar se é primo: 
18
O número 18 não é primo.

=== Code Execution Successful ===
```

# Questão 10

### Crie um array que armazene as notas de uma turma: [85, 90, 78, 92, 88]. Calcule a média das notas usando um loop. Use uma estrutura if-else para imprimir "Aprovado" se a média for maior ou igual a 70, caso contrário, "Reprovado".

```swift
var notas:[Int] = [85, 90, 78, 92, 88]

var soma:Int = 0

for nota in notas {
    soma += nota
}

let media:Int = soma / notas.count

if(media >= 70) {
    print("Aprovado")
}
else {
    print("Reprovado")
}
```

```
Aprovado

=== Code Execution Successful ===
```
