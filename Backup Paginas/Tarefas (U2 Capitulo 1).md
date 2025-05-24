## Desenvolva seu código na IDE Portugol WebStudio ou Portugol Studio!

# Cálculo de Média Aritmética

### Crie um programa que solicite três números reais ao usuário, calcule a média aritmética dos números e, por fim, exibir o resultado da média.

**CODIGO**

```c
programa {
  funcao inicio()
  {
    /*
    Sequencia de testes:
    */

    calculeMedia()
  }

  funcao calculeMedia()
  {
    inteiro a, b, c

    escreva("Digite o numero inteiro A: ")
    leia(a)
    escreva("Digite o numero inteiro B: ")
    leia(b)
    escreva("Digite o numero inteiro C: ")
    leia(c)

    real media = (a+b+c)/3
    escreva("A sua média  é: ", media, "\n")
  }
}
```

**CONSOLE**

```
Digite o numero inteiro A: 2
Digite o numero inteiro B: 3
Digite o numero inteiro C: 4
A sua média  é: 3

Programa finalizado. Tempo de execução: 4153 milissegundos
```

**ARQUIVO .POR**

[Média Aritmetica.por](attachment:774e1d60-9493-4fe0-b464-da64bace8725:Mdia_Aritmetica.por)

# Operações Aritméticas

### Crie um programa que leia dois números inteiros informados pelo usuário e exiba:

### A soma dos dois números; A diferença (subtração) entre eles; O produto (multiplicação) deles.

**CODIGO**

```c
programa {
  funcao inicio()
  {
    // Teste maior-menor
    calculeOperacoes()

    // Teste menor-maior
    calculeOperacoes()
  }
  
  funcao calculeOperacoes()
  {
    inteiro a, b

    // Recepção de Dados
    escreva("Você tem que escolher dois numeros:\n")

    escreva("Numero A: ")
    leia(a)

    escreva("Numero B: ")
    leia(b)

    // Soma
    escreva("\nSOMA: ", a+b, " | ")

    // Diferença
    se(a>b)
    {
      escreva("DIFERENÇA: ", a-b, " | ")
    }
    senao
    {
      escreva("DIFERENÇA: ", b-a, " | ")
    }

    // Produto
    escreva("PRODUTO: ", a*b, "\n")
  }
}
```

**CONSOLE**

```
Você tem que escolher dois numeros:
Numero A: 7
Numero B: 2

SOMA: 9 | DIFERENÇA: 5 | PRODUTO: 14
Você tem que escolher dois numeros:
Numero A: 2
Numero B: 7

SOMA: 9 | DIFERENÇA: 5 | PRODUTO: 14

Programa finalizado. Tempo de execução: 3978 milissegundos
```

**ARQUIVO .POR**

[Operações Aritmeticas.por](attachment:d7b4df56-204a-444c-a366-3161a7b0118b:Operaes_Aritmeticas.por)

# Conversão de Temperatura

### Crie um programa que leia uma temperatura em graus Celsius, a converta para Fahrenheit e exiba o resultado. Use a fórmula: $F=(C×1,8)+32$

**CODIGO**

```c
programa {
  funcao inicio()
  {
    /*
    Sequencia de testes
    */

    converterTemperatura()
    converterTemperatura()
  }

  funcao converterTemperatura()
  {
    real farenheit, celcius

    escreva("Digite a atual temperatura: (C°)\n")
    leia(celcius)

    farenheit = (celcius*1.8)+32

    escreva("A atual temperatura em F° é: ", farenheit, "\n")
  }
}
```

**CONSOLE**

```
Digite a atual temperatura: (C°)
32
A atual temperatura em F° é: 89.6
Digite a atual temperatura: (C°)
37.6
A atual temperatura em F° é: 99.68

Programa finalizado. Tempo de execução: 6946 milissegundos
```

**ARQUIVO .POR**

[Conversão Temperatura.por](attachment:c7d41ed6-a3c3-472c-9da2-40b76a0f35bf:Converso_Temperatura.por)

# Entrada e Saída de Dados

### Crie um algoritmo que:

### (a) Solicite o nome de um usuário.

### (b) Exiba uma mensagem personalizada, como: "Olá, [nome]! Seja bem-vindo ao mundo da programação."

**CODIGO**

```c
programa {
  funcao inicio()
  {
    /*
    Sequencia de testes
    */

    cumprimente()
    cumprimente()
  }

  funcao cumprimente()
  {
    cadeia nome

    escreva("\nInsira seu nome de usuário: ")
    leia(nome)

    escreva("Olá, ", nome, "! Seja bem-vindo ao mundo da programação.")
  }
}
```

**CONSOLE**

```
Insira seu nome de usuário: 342693473248
Olá, 342693473248! Seja bem-vindo ao mundo da programação.
Insira seu nome de usuário: carregador usb tipo c
Olá, carregador usb tipo c! Seja bem-vindo ao mundo da programação.
Programa finalizado. Tempo de execução: 8138 milissegundos
```

**ARQUIVO .POR**

[Cumprimentação.por](attachment:6a059cd4-6a7d-4757-babf-cc7d38ea1153:Cumprimentao.por)

# Implemente um algoritmo que:

### (a) Solicite a base e a altura de um triângulo.

### (b) Calcule e exiba a área do triângulo usando a fórmula: $𝐴𝑟𝑒𝑎 = 𝐵𝑎𝑠𝑒 𝑥 𝑎𝑙𝑡𝑢𝑟𝑎2$

**CODIGO**

```c
programa {
  funcao inicio()
  {
    calculeAreaTriangulo()
  }
  
  funcao calculeAreaTriangulo()
  {
    real altura, base

    escreva("Para determinar a area do triangulo é preciso que:\n")

    escreva("Escreva a base: ")
    leia(base)
    se(base<0)
    {
      escreva("Numero negativo encontrado, tente de novo\n\n")
      retorne calculeAreaTriangulo()
    }

    escreva("Escreva a altura: ")
    leia(altura)
    se(altura<0)
    {
      escreva("Numero negativo encontrado, tente de novo\n\n")
      retorne calculeAreaTriangulo()
    }

    real area = (base*altura)/2
    escreva("A area do triangulo é: ", area, "\n")
  }
}
```

**CONSOLE**

```
Para determinar a area do triangulo é preciso que:
Escreva a base: 2
Escreva a altura: -3
Numero negativo encontrado, tente de novo

Para determinar a area do triangulo é preciso que:
Escreva a base: -2
Numero negativo encontrado, tente de novo

Para determinar a area do triangulo é preciso que:
Escreva a base: 2
Escreva a altura: 3
A area do triangulo é: 3

Programa finalizado. Tempo de execução: 11952 milissegundos
```

**ARQUIVO .POR**

[Area Triângulo.por](attachment:96263967-da9b-4cc5-8e94-89e993bed71d:Area_Tringulo.por)

# Cálculo do Perímetro

### Desenvolva um algoritmo que:

### (a) Solicite o comprimento e a largura de um retângulo.

### (b) Calcule e exiba o perímetro usando a fórmula: $𝑝𝑒𝑟í𝑚𝑒𝑡𝑟𝑜 = 2 𝑥 (𝑐𝑜𝑚𝑝𝑟𝑖𝑚𝑒𝑛𝑡𝑜+𝑙𝑎𝑟g𝑢𝑟𝑎)$

**CODIGO**

```c
programa {
  funcao inicio()
  {
    calculePerimetroRetangulo()
  }
  
  funcao calculePerimetroRetangulo()
  {
    real comprimento, largura

    escreva("Para determinar o perimetro do retângulo é preciso que:\n")

    escreva("Escreva o comprimento: ")
    leia(comprimento)
    se(comprimento<0)
    {
      escreva("Numero negativo encontrado, tente de novo\n\n")
      retorne calculePerimetroRetangulo()
    }

    escreva("Escreva a largura: ")
    leia(largura)
    se(largura<0)
    {
      escreva("Numero negativo encontrado, tente de novo\n\n")
      retorne calculePerimetroRetangulo()
    }

    real perimetro = 2*(comprimento+largura)

    escreva("O perímetro do retângulo é: ", perimetro, "\n")
  }
}
```

**CONSOLE**

```
Para determinar o perimetro do retângulo é preciso que:
Escreva o comprimento: 2
Escreva a largura: -3
Numero negativo encontrado, tente de novo

Para determinar o perimetro do retângulo é preciso que:
Escreva o comprimento: -2
Numero negativo encontrado, tente de novo

Para determinar o perimetro do retângulo é preciso que:
Escreva o comprimento: 2
Escreva a largura: 3
O perímetro do retângulo é: 10

Programa finalizado. Tempo de execução: 7046 milissegundos
```

**ARQUIVO .POR**

[Perímetro.por](attachment:eef54810-6f62-4365-a1f8-18b0ed00fe76:Permetro.por)

# Operadores com Restos

### Crie um algoritmo que:

### (a) Solicite dois números inteiros.

### (b) Calcule e exiba o resto da divisão do primeiro número pelo segundo.

**CODIGO**

```c
programa {
  funcao inicio()
  {
    // ó os teste aí

    calculeResto()
    calculeResto()
  }

  funcao calculeResto()
  {
    inteiro a, b
    
    escreva("Escreva o numero a ser dividido: ")
    leia(a)
    escreva("Escreva o divisor: ")
    leia(b)

    inteiro resto = a%b
    escreva("O resto é: ", resto, "\n")
  }
}
```

**CONSOLE**

```
Escreva o numero a ser dividido: 2
Escreva o divisor: 9
O resto é: 2
Escreva o numero a ser dividido: 9
Escreva o divisor: 2
O resto é: 1

Programa finalizado. Tempo de execução: 5453 milissegundos
```

**ARQUIVO .POR**

[Restante.por](attachment:47067903-e4f2-452c-951d-02d62b1a1127:Restante.por)

# Faça um algoritmo que receba um número inteiro e imprima na tela o seu antecessor e o seu sucessor.

**CODIGO**

```c
programa {
  funcao inicio() 
  {
    // Ultima atividade ae, os teste aqui

    sequencia()
    sequencia()
  }

  funcao sequencia()
  {
    inteiro input

    escreva("Escreva o numero para escrever sua sequencia!\n")
    leia(input)
    
    escreva("\n", input-1, " <- ", input, " -> ", input+1, "\n\n")
  }
}
```

**CONSOLE**

```
Escreva o numero para escrever sua sequencia!
1

0 <- 1 -> 2

Escreva o numero para escrever sua sequencia!
-3

-4 <- -3 -> -2

Programa finalizado. Tempo de execução: 3281 milissegundos
```

**ARQUIVO .POR**

[Sequencia.por](attachment:401368b2-ac5e-4561-a130-dbdb0759a3fa:Sequencia.por)
