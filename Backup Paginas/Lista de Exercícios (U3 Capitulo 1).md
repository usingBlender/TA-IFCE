# Lista de Exercícios (U3 Capitulo 1)

# Questão 1

### O que é a linguagem de programação Swift e em quais tipos de aplicações ela é mais utilizada?

A linguagem de programação swift é uma linguagem desenvolvida pela apple pra servir como sucessor do Objective C, suas principais aplicações são para desenvolvimento de aplicativos para sistemas no ecossistema Apple.

# Questão 2

### Cite três características principais da linguagem Swift que a tornam uma escolha popular para desenvolvimento.

É uma linguagem type safe, é memory safe também e possui tipagem com var que reconhece automatico qual o tipo usado, todas 3 caracteristicas que ajudam o usuário da lingua a não escrever codigo quebrado, ou vazar memória.

# Questão 3

### O que é a função print() e como ela é utilizada em Swift?

Ela escreve algo no console/terminal, é uma função chamada por `print(parametro)` e o parametro pode ser varias coisas como o valor de um dado, ou uma string qualquer.

# Questão 4

### Como os comentários são inseridos no código Swift? Dê exemplos de comentários.

Com 2 barras assim:  `// comentário` e a documentação funciona com 3 barras ao invés de duas.

```swift
// Comentário!

var numero = 1
print(numero) // Comentário!
```

# Questão 5

### (a) Explique a diferença entre var e let na declaração de variáveis em Swift.

A keyword `var` declara uma variável mutável e `let` declara uma variável imutável/constante.

### (b) O que acontece se tentarmos modificar o valor de uma constante declarada com let?

Ele joga um erro, no caso do compilador online ele joga na execução e no caso de IDEs e editores com LSP ele joga na edição mesmo.

`Cannot assign to value: 'test1' is a 'let' constant`

# Questão 6

### Compare a sintaxe de Swift com a de outra linguagem que você conhece (como Python ou C).

Honestamente, similar ao Python no fato que não usa `;` no final de linhas, além disso todos tem suas particularidades e eu não tenho tamanha familiaridade com C e Python pra traçar mais paralelos

# Questão 7

### Qual é a vantagem da tipagem forte e estática em Swift em comparação a linguagens de tipagem dinâmica?

O swift tem os dois eu acho, a vantagem da tipagem forte é que você controla qual o tipo sendo usado, tipo que tamanho de inteiro, classe, struct, etc

# Questão 8

### Qual empresa desenvolveu a linguagem Swift?

(A) Microsoft.

(B) Google.

(C) Apple.

(D) IBM.

# Questão 9

### Como se declara uma constante em Swift?

(A) const

**(B) let**

(C) val

(D) constant

# Questão 10

### Qual comando é usado para exibir texto na saída padrão em Swift?

(A) console.log()

(B) echo

(C) System.out.println()

**(D) print()**

# Questão 11

### Como se declara uma variável em Swift?

(A) let variavel = 10

(B) int variavel = 10

**(C) var variavel = 10**

(D) variable variavel = 10

# Questão 12

### Qual das opções abaixo está incorreta para declaração de variáveis em Swift?

(A) Variáveis declaradas com var podem ser alteradas.

(B) Constantes declaradas com let não podem ser alteradas.

(C) Não é necessário informar o tipo de dado explicitamente em Swift.

**(D) Variáveis e constantes são obrigatoriamente inicializadas com o valor null.**

# Questão 13

### O que são tuplas em Swift?

(A) Um tipo de dado usado para armazenar um único valor.

**(B) Um tipo de dado que armazena múltiplos valores relacionados em uma única variável.**

(C) Um tipo de dado usado apenas para criar arrays.

(D) Um tipo de dado que substitui variáveis.

# Questão 14

### Qual é a sintaxe correta para criar uma tupla em Swift?

(A) tuple nome = (10, "Swift")

**(B) let tupla = (10, "Swift")**

(C) array tupla = {10, "Swift"}

(D) let tupla[10, "Swift"]

# Questão 15

### Qual das opções a seguir representa uma tarefa que pode ser feita em Swift?

(A) Desenvolver aplicativos móveis para Android.

(B) Desenvolver scripts para automação de redes.

**(C) Desenvolver aplicativos para iOS e macOS.**

(D) Configurar sistemas operacionais Linux.
