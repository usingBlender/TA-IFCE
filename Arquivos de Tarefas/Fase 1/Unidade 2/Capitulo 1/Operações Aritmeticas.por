programa {
  funcao inicio()
  {
    // Teste maior-menor
    calculeOperacoes()

    // Teste menor-maior
    calculeOperacoes()
  }
  
  funcao calculeOperacoes()
  {
    inteiro a, b

    // Recepção de Dados
    escreva("Você tem que escolher dois numeros:\n")

    escreva("Numero A: ")
    leia(a)

    escreva("Numero B: ")
    leia(b)

    // Soma
    escreva("\nSOMA: ", a+b, " | ")

    // Diferença
    se(a>b)
    {
      escreva("DIFERENÇA: ", a-b, " | ")
    }
    senao
    {
      escreva("DIFERENÇA: ", b-a, " | ")
    }

    // Produto
    escreva("PRODUTO: ", a*b, "\n")
  }
}
