## Desenvolva seu código na IDE Portugol WebStudio ou Portugol Studio

# Estruturas de Decisão

## Maior Número:

Crie um algoritmo que solicite dois números inteiros e exiba qual deles é maior. Caso sejam iguais, exiba uma mensagem informando que são iguais.

**CODIGO**

```c
programa {
  funcao inicio()
  {
    qualMaior()
    qualMaior()
  }

  funcao qualMaior()
  {
    inteiro a, b

    escreva("Insira o numero A: ")
    leia(a)
    escreva("Insira o numero B: ")
    leia(b)

    se(a == b)
    {
      escreva("Ambos números são iguais.")
    }

    se(a > b)
    {
      escreva("O número maior é o número A de valor ", a, ", é maior pela diferença de ", a-b, "\n")
    }
    senao
    {
      escreva("O número maior é o número B de valor ", b, ", é maior pela diferença de ", b-a, "\n")
    }
  }
}
```

**CONSOLE**

```
Insira o numero A: 5
Insira o numero B: 9
O número maior é o número B de valor 9, é maior pela diferença de 4
Insira o numero A: 30
Insira o numero B: 25
O número maior é o número A de valor 30, é maior pela diferença de 5

Programa finalizado. Tempo de execução: 5790 milissegundos
```

**ARQUIVO .POR**

[Maior Número.por](attachment:592c98f7-00cb-4788-9970-716c6b0e71b2:Maior_Nmero.por)

## Classificação de Idade:

Escreva um algoritmo que solicite a idade de uma pessoa e exiba se ela é "criança" (menor que 12 anos), "adolescente" (entre 12 e 18 anos), "adulto" (entre 19 e 60 anos) ou "idoso" (mais de 60 anos).

**CODIGO**

```c
programa {
  funcao inicio()
  {
    verificarIdade()
    verificarIdade()
    verificarIdade()
    verificarIdade()
  }

  funcao verificarIdade()
  {
    inteiro idade

    escreva("\nInsira sua idade: ")
    leia(idade)

    se(idade < 12)
    {
      escreva("Você é: criança\n")
    }
    se(idade >= 12 e idade <= 18)
    {
      escreva("Você é: adolescente\n")
    }
    se(idade >= 19 e idade <= 60)
    {
      escreva("Você é: adulto\n")
    }
    se(idade > 60)
    {
      escreva("Você é: idoso\n")
    }
  }
}
```

**CONSOLE**

```

Insira sua idade: 11
Você é: criança

Insira sua idade: 12
Você é: adolescente

Insira sua idade: 19
Você é: adulto

Insira sua idade: 61
Você é: idoso

Programa finalizado. Tempo de execução: 9649 milissegundos
```

**ARQUIVO .POR**

[Verificar Idade.por](attachment:3fabf558-0e67-4f4e-b062-d4709672eba2:Verificar_Idade.por)

## Par ou Ímpar:

Crie um algoritmo que leia um número inteiro e informe se ele é par ou ímpar.

**CODIGO**

```c
programa {
  funcao inicio()
  {
    parOuImpar()
    parOuImpar()
    parOuImpar()
  }

  funcao parOuImpar()
  {
    inteiro a

    escreva("\nQual numero quer analisar? Escreva: ")
    leia(a)

    se(a%2 == 0)
    {
      escreva("O número ", a, " é par.\n")
    }
    senao
    {
      escreva("O número ", a, " não é par.\n")
    }
  }
}
```

**CONSOLE**

```
Qual numero quer analisar? Escreva: 3
O número 3 não é par.

Qual numero quer analisar? Escreva: 6
O número 6 é par.

Qual numero quer analisar? Escreva: 8
O número 8 é par.

Programa finalizado. Tempo de execução: 1842 milissegundos
```

**ARQUIVO .POR**

[Par ou Impar.por](attachment:28f946ed-95f6-49d4-a6b6-1f44aaa6e4ce:Par_ou_Impar.por)

## Categoria por Peso:

Desenvolva um algoritmo que, dado o peso de uma pessoa em kg, exiba se ela está na categoria "leve" (menos de 50kg), "médio" (entre 50kg e 100kg) ou "pesado" (mais de 100kg).

**CODIGO**

```c
programa {
  funcao inicio()
  {
    verificarPeso()
    verificarPeso()
    verificarPeso()
  }

  funcao verificarPeso()
  {
    inteiro a

    escreva("\nInsira seu peso: ")
    leia(a)

    se(a < 50)
    {
      escreva("Peso leve, peso: ", a, " (", 50-a, " abaixo do médio)\n")
    }
    se(a >= 50 e a <= 100)
    {
      escreva("Peso médio, peso: ", a, " (Peso entre 50->100)\n")
    }
    se(a > 100)
    {
      escreva("Peso pesado, peso: ", a, " (", a-100, " acima do médio)\n")
    }
  }
}
```

**CONSOLE**

```
Insira seu peso: 1
Peso leve, peso: 1 (49 abaixo do médio)

Insira seu peso: 549
Peso pesado, peso: 549 (449 acima do médio)

Insira seu peso: 65
Peso médio, peso: 65 (Peso entre 50->100)

Programa finalizado. Tempo de execução: 9462 milissegundos
```

**ARQUIVO .POR**

[Comparar Pesos.por](attachment:c0b5dc4a-28d0-4dc6-8a1b-910861c8f254:Comparar_Pesos.por)

# Estruturas de Repetição

## Contagem Progressiva:

Crie um algoritmo que exiba os números de 1 a 10 utilizando a estrutura para.

**CODIGO**

```c
programa {
  funcao inicio()
  {
    exibirUmADez()
  }

  funcao exibirUmADez()
  {
    para(inteiro i = 1; i<=10; i++)
    {
      escreva(i, "\n")
    }
  }
}
```

**CONSOLE**

```
1
2
3
4
5
6
7
8
9
10

Programa finalizado. Tempo de execução: 81 milissegundos
```

**ARQUIVO .POR**

[Exibir 1-10.por](attachment:4e96bfba-eecf-48e8-85a4-e19308aec877:Exibir_1-10.por)

## Soma de Números:

Escreva um algoritmo que solicite 5 números ao usuário, utilizando uma estrutura de repetição, e exiba a soma desses números ao final.

**CODIGO**

```c
programa {
  funcao inicio()
  {
    somaDe5()
  }

  funcao somaDe5()
  {
    inteiro soma = 0

    para(inteiro i = 1; i<=5; i++)
    {
      escreva("\nEscreva o ", i, "º numero para somar: ")

      inteiro local
      leia(local)

      soma = soma + local
    }

    escreva("\n A soma total é: ", soma)
  }
}
```

**CONSOLE**

```
Escreva o 1º numero para somar: 1

Escreva o 2º numero para somar: 2

Escreva o 3º numero para somar: 3

Escreva o 4º numero para somar: 4

Escreva o 5º numero para somar: 5

 A soma total é: 15
Programa finalizado. Tempo de execução: 2788 milissegundos
```

**ARQUIVO .POR**

[Soma de 5.por](attachment:0caec127-f876-4773-9f04-659a585993e9:Soma_de_5.por)

## Tabuada:

Desenvolva um algoritmo que solicite um número inteiro e exiba a tabuada desse número de 1 a 10, utilizando a estrutura enquanto.

**CODIGO**

```c
programa {
  funcao inicio()
  {
    tabuada()
  }

  funcao tabuada()
  {
    inteiro a

    escreva("\nEscolha o número pra mostrar a sua tabuada: ")
    leia(a)
    
    escreva("\n") // output tem que ficar bonito né

    inteiro i = 0
    enquanto(i != 10)
    {
      i++

      escreva(a, "x", i, " = ", a*i, "\n")
    }
  }
}
```

**CONSOLE**

```
Escolha o número pra mostrar a sua tabuada: 7

7x1 = 7
7x2 = 14
7x3 = 21
7x4 = 28
7x5 = 35
7x6 = 42
7x7 = 49
7x8 = 56
7x9 = 63
7x10 = 70

Programa finalizado. Tempo de execução: 1326 milissegundos
```

**ARQUIVO .POR**

[Tabuada.por](attachment:0a3beab2-3eb7-4e69-aa11-bc283c294352:Tabuada.por)

## Somatório com Condição:

Escreva um algoritmo que solicite números inteiros ao usuário até que o número 0 seja digitado. No final, exiba a soma de todos os números digitados (utilize a estrutura faça-enquanto).

**CODIGO**

```c
programa {
  funcao inicio()
  {
    somatorioCondicional()
  }

  funcao somatorioCondicional()
  {
    inteiro total = 0

    escreva("\nBem-vindo à calculadora (que só soma infelizmente, faltou verba)")
    escreva("\nInsira números à vontade, quando quiser o resultado digite 0!\n")

    inteiro input
    faca
    {
      escreva("\nInput: ")
      leia(input)

      total = total + input
    } enquanto(input != 0)

    escreva("\nTOTAL: ", total)
  }
}
```

**CONSOLE**

```
Bem-vindo à calculadora (que só soma infelizmente, faltou verba)
Insira números à vontade, quando quiser o resultado digite 0!

Input: 50

Input: 150

Input: 0

TOTAL: 200
Programa finalizado. Tempo de execução: 3252 milissegundos
```

**ARQUIVO .POR**

[Somatorio Condicional.por](attachment:8cb0ff44-84d1-4236-930b-0775bd4a0ff2:Somatorio_Condicional.por)

# Combinação de Estruturas

## Números Positivos e Negativos:

Escreva um algoritmo que solicite 10 números ao usuário e conte quantos desses números são positivos e quantos são negativos. Exiba o resultado.

**CODIGO**

```c
programa {
  funcao inicio()
  {
    positivosENegativos()
  }

  funcao positivosENegativos()
  {
    inteiro tallyPositivo = 0, tallyNegativo = 0

    faca
    {
      escreva("\nEscreva um número: ")

      inteiro local
      leia(local)

      se(local < 0)
      {
        tallyNegativo = tallyNegativo + 1
      }
      senao
      {
        tallyPositivo = tallyPositivo + 1
      }
    } enquanto(tallyPositivo+tallyNegativo < 10)

    escreva("\nTotal de números positívos: ", tallyPositivo)
    escreva("\nTotal de números negativos: ", tallyNegativo)
  }
}
```

**CONSOLE**

```
Escreva um número: 1

Escreva um número: 5

Escreva um número: -3

Escreva um número: -3

Escreva um número: -5

Escreva um número: -6

Escreva um número: -78

Escreva um número: -5

Escreva um número: 3

Escreva um número: 2

Total de números positívos: 4
Total de números negativos: 6
Programa finalizado. Tempo de execução: 29385 milissegundos
```

**ARQUIVO .POR**

[Positivos e Negativos.por](attachment:bbfd6e9f-e27f-4b64-8c49-8af0f3b79687:Positivos_e_Negativos.por)

## Média de Notas:

Crie um algoritmo que solicite a quantidade de alunos de uma turma. Depois, peça a nota de cada aluno e calcule a média da turma. Exiba a média ao final.

**CODIGO**

```c
programa {
  funcao inicio()
  {
    calcularMedia()
  }

  funcao calcularMedia()
  {
    inteiro alunos
    real media = 0

    escreva("\nDigite quantos alunos tem na turma: ")
    leia(alunos)

    para(inteiro i = 1; i <= alunos; i++)
    {
      escreva("Digite a nota do aluno ", i, ": ")
      
      real local
      leia(local)

      // verificar se a nota é valida
      se(local > 10 ou local < 0)
      {
        escreva("\nNota inválida, tente novamente.\n")
        retorne calcularMedia()
      }

      media = media + local
    }

    escreva("\nA média total da turma é: ", media/alunos)
  }
}
```

**CONSOLE**

```
Digite quantos alunos tem na turma: 2
Digite a nota do aluno 1: 6
Digite a nota do aluno 2: -6

Nota inválida, tente novamente.

Digite quantos alunos tem na turma: 2
Digite a nota do aluno 1: 6
Digite a nota do aluno 2: 7

A média total da turma é: 6.5
Programa finalizado. Tempo de execução: 9289 milissegundos
```

**ARQUIVO .POR**

[Média de Alunos.por](attachment:5e8b62e6-dd99-4b28-9c52-1351007a85b1:Mdia_de_Alunos.por)

## Número Primo:

Escreva um algoritmo que solicite um número inteiro e determine se ele é primo ou não.

meu deus cara kkkkkkkkkkk

**CODIGO**

```c
programa {
  funcao inicio()
  {
    enquanto(1 == 1) // teste perpetuo, sem condição de fim por praticidade de teste
    {
      verificarPrimo()
    }
  }

  funcao verificarPrimo()
  {
    // https://stackoverflow.com/questions/1538644/c-determine-if-a-number-is-prime
    // stack overflow e seus magos, meus salvadores

    inteiro input
    
    escreva("\nDigite um número para determinar se o mesmo é primo: ")
    leia(input)

    se(input<0)
    {
      escreva("Número negativo detectado, tente novamente.\n")
      retorne verificarPrimo()
    }

    se(input > 0 e input <= 3) // 1, 2 e 3 são primos
    {
      escreva("O número ", input, " é primo!\n")
      retorne
    }

    se(input%2 == 0 ou input%3 == 0) // verificar se são divisores de 2 e 3
    {
      escreva("O número ", input, " não é primo.\n")
      retorne
    }

    // de acordo com um dos magos do stack overflow, todo número primo é derivado
    // de 6x ± 1, que no caso aqui em baixo vai ser verificado por começar i em
    // 5 (-1) e adicionar dois ao mesmo (+1)

    // após o quadrado do número, só se invertem os divisores e o quociente,
    // então só se verifica até √input (grande stack overflow pra salvar)
    para(inteiro i=5; i*i <= input; i+=6)
    {
      se(input%i == 0 ou input%(i+2) == 0)
      {
        escreva("O número ", input, " não é primo.\n")
        retorne
      }
    }

    escreva("O número ", input, " é primo!\n")
  }
}

```

**CONSOLE**

```

Digite um número para determinar se o mesmo é primo: 1
O número 1 é primo!

Digite um número para determinar se o mesmo é primo: 2
O número 2 é primo!

Digite um número para determinar se o mesmo é primo: 3
O número 3 é primo!

Digite um número para determinar se o mesmo é primo: 4
O número 4 não é primo.

Digite um número para determinar se o mesmo é primo: 5
O número 5 é primo!

Digite um número para determinar se o mesmo é primo: 6
O número 6 não é primo.

Digite um número para determinar se o mesmo é primo: 7
O número 7 é primo!

Digite um número para determinar se o mesmo é primo: 8
O número 8 não é primo.

Digite um número para determinar se o mesmo é primo: 9
O número 9 não é primo.

Digite um número para determinar se o mesmo é primo: 10
O número 10 não é primo.

Digite um número para determinar se o mesmo é primo: 11
O número 11 é primo!

Digite um número para determinar se o mesmo é primo: 12
O número 12 não é primo.

Digite um número para determinar se o mesmo é primo: 13
O número 13 é primo!

Digite um número para determinar se o mesmo é primo: 
O programa foi interrompido! Tempo de execução: 8425 milissegundos
```

**ARQUIVO .POR**

[Verificar Primo.por](attachment:54077876-6a7f-457a-842a-9f2e57af300e:Verificar_Primo.por)
