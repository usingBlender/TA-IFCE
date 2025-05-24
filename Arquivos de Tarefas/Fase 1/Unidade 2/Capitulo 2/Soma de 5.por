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
