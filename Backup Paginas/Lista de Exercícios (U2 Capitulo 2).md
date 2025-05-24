# 1ª Questão

### (a) Explique o que é uma estrutura de decisão e por que ela é importante em algoritmos.

São importantes por que causam desvios no codigo, se o codigo não há nenhum desvio/bifurcação no caminho ele só fará uma coisa, a partir das estruturas de decisão

### (b) Dê um exemplo de situação onde seria necessário usar uma estrutura se-senão.

Numa tela de log-in quando a pessoa aperta o botão é utilizado uma comparação dos hash delas, poderia ser usado uma estrutura se-senão pra decidir o que é feito caso não bata a senha e o que tá armazenado na base de dados

### (c) O que acontece se a condição dentro de um bloco se for falsa? Explique com suas palavras.

O codigo dentro do bloco simplesmente não executa, passa pra frente

### (d) Qual a função do operador senão em uma estrutura de decisão?

É usado pra introduzir a logica no programa, os operadores de comparação e logica retornam um booleano que é utilizado no bloco de condicional

# 2ª Questão

### (a) Explique o que é uma estrutura de repetição e cite seus principais tipos no Portugol.

Ele repete um codigo enquanto uma condição seja saciada, bloco faça-enquanto (do-while), bloco enquanto (while) , bloco para (for)

### (b) Quando é mais adequado usar a estrutura para em vez de enquanto?

Quando é preciso repetir algo x vezes com um iterador, a estrutura para tem uma implementação mais elegante e simples do que replicar o mesmo com enquanto

# 3ª Questão

### (a) Analise o seguinte algoritmo e descreva o que ele faz:

```c
programa {
    funcao inicio() {
	     inteiro x
       x <- 0      
			 enquanto (x < 5) {
          escreva("O valor de x é: ", x, "\n")    
		      x <- x + 1
       }
    }
} 
```

Ele vai repetir o bloco de codigo enquanto x for menor que 5, ele escreveria o valor no console de 0-4.

### (b) O que acontece se a condição de um enquanto nunca for verdadeira? Explique com suas palavras.

Loop infinito, vai continuar repetindo aquele codigo enquanto o computador aguentar repetir o mesmo

### (c) Qual é a função de uma variável de controle em uma estrutura de repetição?

Creio que é o booleano que define se a estrutura vai repetir o codigo ou não, no caso de para seria a comparação do iterador, enquanto e faça-enquanto a variável qualquer, etc 

# 4ª Questão

### (a) Explique como as palavras-chave pare pode alterar o fluxo de uma estrutura de repetição no Portugol.

Vai simplesmente parar alí a repetição, vai quebrar o laço e o codigo continua como normal, ele poderia ser colocado dentro de uma condicional

### (b) Por que é importante garantir que as condições dentro de uma repetição sejam bem definidas?

Pra não aconteçer uma repetição perpetua

### (c) O que é um "loop infinito"?

Quando não tem condição de fim, aí o codigo fica repetindo e repetindo até o computador dizer chega

# 5ª Questão

### (a) Compare as estruturas para, enquanto e faça-enquanto. Cite uma vantagem e uma desvantagem de cada uma.Para

Para: possui um iterador, mexer com a logica de comparação pode levar confusão em que numero o iterador vai parar/etc

Enquanto: ele só vai executar o codigo SE a condição tiver em verdade de inicio, é facil de fazer um loop infinito com esse daqui

Faça-Enquanto: ele executa o codigo uma vez e DEPOIS verifica o estado da variável de controle, mesmo problema do enquanto

### (b) Dê um exemplo prático de aplicação para cada tipo de estrutura de repetição.

Para: iterar uma lista/array

Enquanto: manter algo ativo enquanto algo tá habilitado, e.g a renderização dos frames de um joguinho de console que tem que ficar sendo renderizados a todo momento

Faça-Enquanto: uma tela de login, onde sería repetido o processo de login caso a senha tivesse errada, e quando a senha tivesse certa sairía do bloco de codigo pra continuar o curso do programa

# 6ª Questão

### Pesquise e Explique com sua palavras:

### (a) Um algoritmo pode funcionar corretamente sem usar estruturas de decisão?

Sim, só q ele não vai ter direções alternativas

### (b) Estruturas de repetição podem sempre ser substituídas por estruturas de decisão?

Não, as vezes você realmente necessita de repetição no programa e repetir o codigo, e muito mais na base de condicionais fica um codigo feio e ilegivel MUITO rapido

# 7ª Questão

### Qual das alternativas define corretamente uma estrutura de decisão?

(a) Um bloco que permite repetir instruções diversas vezes.

(b) Um conjunto de instruções que sempre será executado na ordem escrita.

(c) Um bloco que permite executar diferentes ações com base em condições.

(d) Um bloco usado para organizar variáveis.

# 8ª Questão

### Qual das estruturas abaixo pertence às estruturas de decisão no Portugol?

(a) para.

(b) enquanto.

(c) se-senão.

(d) repita-até.

# 9ª Questão

### Considere o seguinte trecho de código:

```c
se (x > 10) {
	escreva("x é maior que 10")
} senao {
	escreva("x é menor ou igual a 10")
}
```

### O que será exibido se x for igual a 10?

(a) "x é maior que 10".

(b) "x é menor ou igual a 10".

(c) O código dará erro porque 10 não é uma condição válida.

(d) Nada será exibido porque a condição não é verdadeira.

# 10ª Questão

### Qual das seguintes estruturas é usada para criar repetições no Portugol?

(a) se.

(b) enquanto.

(c) se-senão.

(d) variáveis.

# 11ª Questão

### Qual das alternativas abaixo não é um operador relacional?

(a) >

(b) ==

(c) &&

(d) <=

# 12ª Questão

### O que acontece se a condição de um bloco enquanto nunca for verdadeira?

(a) O bloco será executado uma vez e depois encerrado.

(b) O bloco nunca será executado.

(c) O programa entrará em um loop infinito.

(d) Um erro será gerado.

# 13ª Questão

### Considere o seguinte código:

```c
para (i=1; i<=5; i++) {
	escreva(i)
}
```

### Quantas vezes o bloco escreva(i) será executado?

(a) 5 vezes.

(b) 4 vezes.

(c) 6 vezes.

(d) Depende do valor inicial de i.

# 14ª Questão

### O operador lógico E é usado quando:

(a) Uma das condições precisa ser verdadeira.

(b) Todas as condições precisam ser verdadeiras.

(c) Nenhuma das condições pode ser verdadeira.

(d) É necessário negar uma condição existente.

# 15ª Questão

### Qual das opções a seguir representa um loop infinito?

(a)

```c
enquanto (x < 10) {
	escreva(x)
	x = x + 1
}
```

(b)

```c
faca {
	escreva(x)
	x = x + 1
} enquanto (x > 10)
```

(c)

```c
enquanto (verdadeiro) {
	escreva("Hello World!")
}
```

(d)

```c
para (inteiro i=1; i<= 5; i++) {
	escreva(i)
}
```

# 16ª Questão

### Qual alternativa descreve melhor a utilidade de uma estrutura de repetição?

(a) Executar uma ação várias vezes com base em uma condição.

(b) Tomar decisões com base em múltiplas condições.

(c) Substituir operadores lógicos em algoritmos complexos.

(d) Organizar os dados de entrada do usuário.

# 17ª Questão

### Sobre a estrutura para, qual é sua principal vantagem?

(a) Permite executar blocos de código infinitamente.

(b) Substitui as estruturas se e enquanto.

(c) Permite iterar um número fixo de vezes, controlando a repetição.

(d) É usada apenas para condições complexas.

# 18ª Questão

### Qual das alternativas abaixo é uma condição válida para uma estrutura de decisão?

(a) x = 10

(b) x == 10

(c) x > y z

(d) enquanto (x < 10)

# 19ª Questão

### Qual é a função da palavra-chave pare dentro de uma estrutura de repetição?

(a) Alterar o valor da condição da repetição.

(b) Fazer com que o programa entre em um loop infinito.

(c) Encerrar a execução do bloco da repetição imediatamente.

(d) Continuar a execução do bloco, ignorando a condição.
