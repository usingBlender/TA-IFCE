# TAREFAS - Arquitetura de Computadores, Compiladores e Linguagens Reais

---

Para evitar ter que preparar todo um ambiente de desenvolvimento use um compilador online, pesquise por Compilador online “nome da linguagem” e utilize GBD online Debugger.

---

# 1ª Questão

### O código em portugol a seguir cálcula a média de um aluno e retorna se ele foi aprovado ou não:

```c
programa { 
	funcao inicio() {
		real nota1, nota2, media      
		escreva("Digite a primeira nota: ")
		leia(nota1)
		
		escreva("Digite a segunda nota: ")
		leia(nota2)
		
		media = (nota1 + nota2) / 2   
		 
		se (media >= 6) {
			escreva("Aprovado com média: ", media)
		}
		senao {
			escreva("Reprovado com média: ", media)
		}
	}
}
```

### (a) Desenvolva o mesmo código em C.

```c
#include <stdio.h>

int main() {
    float nota1;
    float nota2;
    
    printf("Digite a primeira nota: ");
    scanf("%f", &nota1);
    
    printf("Digite a segunda nota: ");
    scanf("%f", &nota2);
    
    float notaMedia = (nota1+nota2)/2;
    
    if(notaMedia >= 6) {
        printf("Aprovado com média: %f", notaMedia);
    }
    else {
        printf("Reprovado com média: %f", notaMedia);
    }

    return 0;
}
```

### (b) Desenvolva o mesmo código em Java

```
Digite a primeira nota: 
7
Digite a segunda nota: 
8
Reprovado com m?dia: 7.5

=== Code Execution Successful ===
```

### (c) Desenvolva o mesmo código em Python

```python
nota1 = float(input("Digite a primeira nota: "))
nota2 = float(input("Digite a segunda nota: "))
media = (nota1+nota2)/2

if media <= 6:
    print("Aprovado com média: ", media)
else:
    print("Reprovado com média: ", media)
```

```
Digite a primeira nota: 7
Digite a segunda nota: 8
Reprovado com média:  7.5

=== Code Execution Successful ===
```

# 2ª Questão

### Crie um programa em C, Java e Python que:

### (a) Declare uma variável para armazenar o nome de um usuário.

### (b) Solicite o nome do usuário via entrada.

### (c) Exiba a mensagem: "Bem-vindo(a), [nome]!" na tela.

**C**

```c
#include <stdio.h>

int main() {
    char nome[100];
    
    printf("Digite seu nome de usuário: ");
    scanf("%s", &nome);
    
    printf("Bem-vindo(a), %s!", nome);

    return 0;
}
```

```
Digite seu nome de usuário: teste457943875
Bem-vindo(a), teste457943875!

=== Code Execution Successful ===
```

**Java**

```java
import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Digite seu nome de usuário: ");
        String nome = scanner.next();
        
        System.out.println("Bem-vindo(a), " + nome + '!');
    }
}
```

```
Digite seu nome de usu?rio: 
teste54325436
Bem-vindo(a), teste54325436!

=== Code Execution Successful ===
```

**Python**

```python
nome = input("Digite a seu nome de usuário: ")
print("Bem-vindo(a), ", nome, '!')
```

```
Digite a seu nome de usuário: teste4324324
Bem-vindo(a),  teste4324324 !

=== Code Execution Successful ===
```

# 3ª Questão | Estruturas Condicionais - If/Else

### (a) Escreva um programa em C, Java, e Python que solicite a idade de uma pessoa e exiba:

### "Você é menor de idade" se a idade for menor que 18.

### "Você é maior de idade" caso contrário.

**C**

```c
#include <stdio.h>

int main() {
    int idade;
    
    printf("Digite sua idade: ");
    scanf("%i", &idade);
    
    if(idade < 18) {
        printf("Você é menor de idade!");
    }
    else {
        printf("Você é maior de idade!");
    }

    return 0;
}
```

```
Digite sua idade: 17
Você é menor de idade!

=== Code Execution Successful ===
```

**Java**

```java
import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Digite sua idade: ");
        byte idade = scanner.nextByte();
        
        if (idade < 18) {
            System.out.println("Voce e menor de idade!");
        }
        else {
            System.out.println("Voce e maior de idade!");
        }
    }
}
```

```
Digite sua idade: 
17
Voce e menor de idade!

=== Code Execution Successful ===
```

**Python**

```python
idade = int(input("Digite sua idade: "))

if idade < 18:
    print("Você é menor de idade!")
else:
    print("Você é maior de idade!")
```

```
Digite sua idade: 17
Você é menor de idade!

=== Code Execution Successful ===
```

# 4ª Questão | Estruturas de Repetição - For

### (a) Crie um programa em C, Java, e Python que exiba os números de 1 a 10 usando um loop for.

**C**

```c
#include <stdio.h>

int main() {
    for(int i = 1; i<=10; i++) {
        printf("%i\n", i);
    }

    return 0;
}
```

```
1
2
3
4
5
6
7
8
9
10

=== Code Execution Successful ===
```

**Java**

```java
class Main {
    public static void main(String[] args) {
        for(int i = 1; i <= 10; i++) {
            System.out.println(i);
        }
    }
}
```

```
1
2
3
4
5
6
7
8
9
10

=== Code Execution Successful ===
```

**Python**

```python
for i in range(1, 11):
    print(i)
```

```
1
2
3
4
5
6
7
8
9
10

=== Code Execution Successful ===
```

# 5ª Questão | Estruturas de Repetição - While

### (a) Escreva um programa em C, Java, e Python que solicite um número ao usuário e exiba os números de 1 até o número digitado usando um loop while.

**C**

```c
#include <stdio.h>

int main() {
    int alvo;
    
    printf("Escreva seu numero alvo: ");
    scanf("%i", &alvo);
    printf("\n");
    
    if(alvo < 0) {
        int i = 1;
        while(i >= alvo) {
            printf("%i\n", i);
            i--;
        }
    }
    else {
        int i = 1;
        while(i <= alvo) {
            printf("%i\n", i);
            i++;
        }
    }
    
    return 0;
}
```

```
Escreva seu numero alvo: 12

1
2
3
4
5
6
7
8
9
10
11
12

=== Code Execution Successful ===
```

**Java**

```java
import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Escreva seu numero alvo: ");
        int alvo = scanner.nextInt();
        System.out.println();
        
        if (alvo < 0) {
            int i = 1;
            while (i >= alvo) {
                System.out.println(i);
                i--;
            }
        }
        else {
            int i = 1;
            while (i <= alvo) {
                System.out.println(i);
                i++;
            }
        }
    }
}
```

```
Escreva seu numero alvo: 
12

1
2
3
4
5
6
7
8
9
10
11
12

=== Code Execution Successful ===
```

**Python**

```python
alvo = int(input("Digite seu numero alvo: "))
print()

if alvo < 0:
    i = 1;
    while alvo <= i:
        print(i)
        i-=1
else:
    i = 1;
    while alvo >= i:
        print(i)
        i+=1
```

```
Digite seu numero alvo: 12

1
2
3
4
5
6
7
8
9
10
11
12

=== Code Execution Successful ===
```

# (DESAFIO) Crie um programa em C, Java, e Python que:

### (a) Solicite uma palavra do usuário.

### (b) Exiba o número de caracteres dessa palavra.

### (c) Exiba a palavra toda em letras maiúsculas.

**C**

```c
#include <stdio.h>
#include <string.h>

int main() {
    char input[1024];
    
    printf("Digite sua frase para analiza-la:\n");
    scanf("%1023[^\n]", input);
    
    printf("\nFrase original: %s", input);
    printf("\nTamanho da frase: %i caractéres", strlen(input));
    
    for(int i = 0; i < strlen(input); i++) {
        if(input[i] >= 97 && input[i] <= 122 ) { // range decimal das letras minusculas ascii
            input[i] -= 32; // letras maiusculas ficam 32 atras das minusculas
        }
    }
    
    printf("\nFrase maíscula: %s", input);
    
    return 0;
}
```

```
Digite sua frase para analiza-la:
lorem ipsum dolor sit amet

Frase original: lorem ipsum dolor sit amet
Tamanho da frase: 26 caractéres.
Frase maíscula: LOREM IPSUM DOLOR SIT AMET

=== Code Execution Successful ===
```

**Java**

```java
import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Digite sua frase para analiza-la: ");
        String alvo = scanner.nextLine();
        
        System.out.println("\nFrase original: " + alvo);
        System.out.println("Tamanho da frase: " + alvo.length() + " caracteres");
        System.out.println("Frase maiuscula: " + alvo.toUpperCase());
    }
}
```

```
Digite sua frase para analiza-la: 
lorem ipsum dolor sit amet

Frase original: lorem ipsum dolor sit amet
Tamanho da frase: 26 caracteres
Frase maiuscula: LOREM IPSUM DOLOR SIT AMET

=== Code Execution Successful ===
```

**Python**

```python
alvo = input("Digite sua frase para analiza-la:\n")

print("\nFrase original:", alvo)
print("Tamanho da frase:", len(alvo),"caractéres")
print("Frase maiuscula:", alvo.upper())
```

```
Digite sua frase para analiza-la:
lorem ipsum dolor sit amet

Frase original: lorem ipsum dolor sit amet
Tamanho da frase: 26 caractéres
Frase maiuscula: LOREM IPSUM DOLOR SIT AMET

=== Code Execution Successful ===
```
