programa {
  funcao inicio() 
  {
    // Ultima atividade ae, os teste aqui

    sequencia()
    sequencia()
  }

  funcao sequencia()
  {
    inteiro input

    escreva("Escreva o numero para escrever sua sequencia!\n")
    leia(input)
    
    escreva("\n", input-1, " <- ", input, " -> ", input+1, "\n\n")
  }
}
