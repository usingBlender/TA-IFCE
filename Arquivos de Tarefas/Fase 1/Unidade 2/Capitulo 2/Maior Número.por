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
