programa {
  funcao inicio()
  {
    calculeAreaTriangulo()
  }
  
  funcao calculeAreaTriangulo()
  {
    real altura, base

    escreva("Para determinar a area do triangulo é preciso que:\n")

    escreva("Escreva a base: ")
    leia(base)
    se(base<0)
    {
      escreva("Numero negativo encontrado, tente de novo\n\n")
      retorne calculeAreaTriangulo()
    }

    escreva("Escreva a altura: ")
    leia(altura)
    se(altura<0)
    {
      escreva("Numero negativo encontrado, tente de novo\n\n")
      retorne calculeAreaTriangulo()
    }

    real area = (base*altura)/2
    escreva("A area do triangulo é: ", area, "\n")
  }
}
