# Lista de Exercícios (U3 Capitulo 2)

# Questão 1

### Explique a flexibilidade dos arrays em Swift quanto aos tipos de dados que podem armazenar.

Qualquer tipo de dado contanto que seja do mesmo tipo.

# Questão 2

### Explique a sintaxe e o funcionamento da estrutura if-else em Swift. Discuta como utilizar essa estrutura para tomar decisões com base em diferentes condições.

Ela executa um bloco de codigo em seleta condição, ao analisar as condições de codigo podem ser feitas decisões com as mesmas, o else funciona como um padrão que se não for satisfeita a condição, executará nessa ocasião.

# Questão 3

### Compare e contraste a estrutura switch com a if-else. Discuta os casos em que a estrutura switch é mais adequada e como utilizar padrões para realizar comparações complexas.

O if-else analisa somente uma condição enquanto o switch pode analisar multiplas para uma só situação deixando o codigo bem mais bonito e limpo.

# Questão 4

### Explique o funcionamento do operador ternário em Swift e como ele pode ser utilizado para expressar condições de forma concisa. Discuta as vantagens e desvantagens de usar o operador ternário em comparação com a estrutura if-else.

O operador ternário é como se fosse uma abreviação do bloco if-else, a vantagem é que ele deixa o codigo mais curto sem necessidade de adicionar os brackets, pode ser usado pra diretamente armazenar um valor baseado numa condição sem ter que instancia-lo previamente, desvantagem sendo que por não explicitar “if” pode não ficar claro o que ali tá sendo feito de imediato ao ler

# Questão 5

### Compare e contraste os loops while e repeat-while. Discuta os casos em que cada tipo de loop é mais adequado e como controlar a execução do loop utilizando condições.

While executa o bloco de codigo após verificar a condição enquanto repeat-while executa o bloco de codigo e então depois verifica a condição. Cada um é situacional, repeat-while pra iniciar um processo de login, while pode ser verificado no meio do caminho se a condição aconteceu pra iniciar o loop.

# Questão 6

### Qual das seguintes opções declara corretamente um array vazio de inteiros em Swift?

a) var meuArray = Int

b) var meuArray: Int[] = []

c) var meuArray = Array<Int>

**d) var meuArray: [Int]? = nil**

# Questão 7

### Qual é a sintaxe correta para acessar o terceiro elemento de um array chamado numeros em Swift?

**a) numeros[2]**

b) numeros.third

c) numeros(2)

d) numeros.get(2)

# Questão 8

### Qual estrutura de repetição é mais adequada para percorrer todos os elementos de um array em Swift?

a) while

b) repeat-while

**c) for-in**

d) Nenhuma das alternativas

# Questão 9

### Qual das seguintes opções representa a sintaxe correta para uma estrutura if-else em Swift?

a) if condição { // código } else { // código }

**b) if (condição) { // código } else { // código }**

c) if condição then { // código } else { // código }

d) if condição: { // código } else: { // código }

# Questão 10

### Qual é a principal diferença entre os loops while e repeat-while em Swift?

a) O loop while sempre executa pelo menos uma vez.

**b) O loop repeat-while sempre executa pelo menos uma vez.**

c) O loop while verifica a condição antes de cada iteração.

d) O loop repeat-while verifica a condição após cada iteração.

# Questão 11

### Qual das seguintes afirmações sobre arrays em Swift é FALSA?

a) Arrays são coleções ordenadas de elementos.

**b) Arrays podem armazenar elementos de diferentes tipos.**

c) Arrays são mutáveis por padrão.

d) Arrays possuem um tamanho dinâmico.

# Questão 12

### Qual das seguintes afirmações sobre o operador ternário em Swift é verdadeira?

a) É utilizado para realizar atribuições.

**b) É uma forma concisa de escrever uma estrutura if-else.**

c) Pode ser utilizado apenas com tipos booleanos.

d) É mais eficiente que a estrutura if-else.

# Questão 13

### Qual a principal vantagem de utilizar um loop for-in em comparação com um loop while para percorrer um array em Swift?

a) O loop for-in é mais flexível e permite modificar o array durante a iteração.

b) O loop while é mais eficiente para grandes arrays.

**c) O loop for-in é mais conciso e seguro, pois evita erros de índice.**

d) Não há vantagem significativa entre os dois.

# Questão 14

### Qual o tipo de dados utilizado para representar um intervalo de valores em Swift?

**a) Range**

b) Sequence

c) Interval

d) Stride
