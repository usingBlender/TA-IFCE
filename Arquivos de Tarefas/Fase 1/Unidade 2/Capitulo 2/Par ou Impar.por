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
