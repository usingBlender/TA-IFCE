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
