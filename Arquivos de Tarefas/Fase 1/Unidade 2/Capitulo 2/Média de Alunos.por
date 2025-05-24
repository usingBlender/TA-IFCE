programa {
  funcao inicio()
  {
    calcularMedia()
  }

  funcao calcularMedia()
  {
    inteiro alunos
    real media = 0

    escreva("\nDigite quantos alunos tem na turma: ")
    leia(alunos)

    para(inteiro i = 1; i <= alunos; i++)
    {
      escreva("Digite a nota do aluno ", i, ": ")
      
      real local
      leia(local)

      // verificar se a nota é valida
      se(local > 10 ou local < 0)
      {
        escreva("\nNota inválida, tente novamente.\n")
        retorne calcularMedia()
      }

      media = media + local
    }

    escreva("\nA média total da turma é: ", media/alunos)
  }
}
