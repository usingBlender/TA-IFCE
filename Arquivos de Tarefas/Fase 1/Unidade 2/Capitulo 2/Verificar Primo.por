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

    // de acordo com um dos magos do stack overflow, todo número primo é derivado de
    // 6x ± 1, que no caso aqui em baixo vai ser verificado por começar i em 5 (-1) e adicionar dois ao mesmo (+1)

    // após o quadrado do número, só se invertem os divisores e o quociente, então só se verifica até √input
    // (grande stack overflow pra salvar)
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
