programa {
  funcao inicio()
  {
    calculePerimetroRetangulo()
  }
  
  funcao calculePerimetroRetangulo()
  {
    real comprimento, largura

    escreva("Para determinar o perimetro do retângulo é preciso que:\n")

    escreva("Escreva o comprimento: ")
    leia(comprimento)
    se(comprimento<0)
    {
      escreva("Numero negativo encontrado, tente de novo\n\n")
      retorne calculePerimetroRetangulo()
    }

    escreva("Escreva a largura: ")
    leia(largura)
    se(largura<0)
    {
      escreva("Numero negativo encontrado, tente de novo\n\n")
      retorne calculePerimetroRetangulo()
    }

    real perimetro = 2*(comprimento+largura)

    escreva("O perímetro do retângulo é: ", perimetro, "\n")
  }
}
