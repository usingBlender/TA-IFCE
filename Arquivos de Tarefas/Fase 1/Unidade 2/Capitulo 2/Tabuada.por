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
