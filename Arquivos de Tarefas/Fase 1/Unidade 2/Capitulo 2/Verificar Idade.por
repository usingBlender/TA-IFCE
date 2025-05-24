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
