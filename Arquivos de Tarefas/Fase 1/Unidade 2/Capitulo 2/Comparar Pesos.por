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
