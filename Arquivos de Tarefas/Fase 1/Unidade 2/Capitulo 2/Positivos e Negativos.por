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
