# Lista de Exercícios 05 - Arquitetura de Computadores, Compiladores e Linguagens Reai

---

# 1ª Questão

### (a) Explique a diferença entre memória RAM e memória ROM em termos de função e volatilidade.

RAM armazena dados temporários relativos aos atuais processos do computador que podem tanto vir quanto ser removidos de acordo com a necessidade, ROM é uma memoria mais permanente por ser classificada como memória de só leitura, mais usada para funções essenciais do computador.

### (b) O que é uma Unidade Central de Processamento (CPU), e quais são suas principais funções em um computador?

Calculos e gerencia controle dos outros componentes do sistema.

# 2ª Questão

### (a) Quais são os principais componentes de um sistema de computação e como eles interagem para processar informações?

**CPU:** Controla tudo abaixo, faz calculos.

**Memória:** Armazena dados temporários (RAM) e importantes pro sistema (ROM).

**IO:** A maneira que o usuário interage com o computador, o input (entrada de dados) pode ser um mouse, uma porta USB que o usuário insere um pen drive, uma tela touch e o output (saída de dados) que pode ser um speaker, um monitor, impressora, um queimador de discos, etc. 

**Armazenamento Persistente:** Armazena os dados que persistem no computador após seu desligamento para usar depois, como um HD ou SSD.

### (b) O que é o ciclo de máquina e quais são suas etapas principais?

O ciclo é o processo que passa pra executar um comando na maquina. Passa por 3 etapas, busca, decodificação e execução. Na busca vai ser encontrado esse comando e vai passar pro processo de decodificação onde por exemplo seria calculado as variáveis de um trecho de codigo, e por fim a execução que renderia o que a instrução diz, que pode ser retornar um valor X ao console, ou armazenar informação x em endereço y de memória, etc.

# 3ª Questão

### Por que o armazenamento SSD é considerado mais rápido que os HDDs tradicionais?

O SSD por usar memória em energia ao invés de um disco fisico que gira com uma agulha tem o beneficio de acessar multiplos registros de dados ao mesmo tempo, enquanto a agulha só pode ler um canto por momento.

# 4ª Questão

### Descreva a arquitetura de Von Neumann.

É o modelo presente na maioria das maquinas hoje onde tem uma entrada e saída de dados que interage com um processador central que armazena dados em um tipo de memória.

O processador nesse modelo tem diversos registros que são memórias de acesso rapido para usos especializados, uma unidade de controle e duas unidades a mais, uma que faz operações aritmeticas e outra que trata com logica.

# 5ª Questão

### (a) O que é um compilador, e qual é sua principal função em um sistema de computação?

O compilador torna codigo humano em linguagem de maquina.

### (b) Explique as etapas do processo de compilação, desde a análise léxica até a geração de código.

**Análise Léxica:** A tokenização (separação em elementos individuais, exemplo sendo, “Oi, boa tarde!” → {”Oi” / ‘,’ / “boa” / “tarde” / ‘!’} ) do codigo para analisar a valididade de cada elemento, e também categorizar o que cada elemento é, se é um literal, comentário, etc.

**Análise Sintática:** A analize desses tokens, verificar se os mesmos respeitam as regras da lingua (exemplo sendo, a sintaxe de uma função que pede 2 inteiros, onde um inteiro só foi passado) e caso não, mostrar os erros de sintáxe ao usuário. Esse também cria uma arvore sintática que mostra a estrutura do codigo.

**Análise Semântica:** Verifica a segurança de tipos, se um inteiro foi passado como string/cadeia, verifica por variáveis indeclarados sendo usados, verifica por identificadores mal-utilizados.

**Geração de Código Intermediário:** Aqui o codigo de alto nível é tornado em codigo de maior baixo nível, só que seu nível aínda não é tão baixo que só uma maquina possa o interpretar. Essa lingua intermediária geralmente pode ser executada em diversas arquiteturas sem grandes mudanças, deixando o codigo mais versatil. 

**Otimização de Código:** Aqui vai ser otimizado tanto o codigo intermediário independente de maquina para repetições, constantes seriam trocadas para seus valores respectivos, etc, e também depois a otimização dependente de maquina, que usa registros da CPU e usa a sua maior vantagem as hierarquias de memória da maquina.

**Geração de Código de Máquina:** E então, tudo isso é convertido em codigo de maquina para ser executado no computador.

### (c) Diferencie compiladores e interpretadores, citando uma vantagem de cada abordagem.

**Linguagens Compiladas:** São compiladas ao seu todo e otimizadas em sua inteiridade com seu inteiro escopo em mente nesse processo. Pode gerar um codigo muito mais rapido do que com uma linguagem interpretada.

**Linguagens Interpretadas:** São compiladas no momento de sua execução linha por linha, beneficiada por multi-plataformidade e simplicidade de sintáxe.

# 6ª Questão

### (a) O que é a análise léxica, e por que ela é a primeira etapa do processo de compilação?

A tokenização pra verificar a valididade de cada componente do codigo individualmente em tokens. Pois é preciso o codigo estar escrito de forma correta pra lingua poder interpretar o que aquilo é, precisa seguir as regras da lingua.

### (b) Explique a diferença entre análise léxica e análise sintática.

A analise léxica verifica se aquele componente existe e a análise sintática verifica se o componente foi usado de forma correta de acordo com as regras da lingua.

### (c) Dê um exemplo de um erro detectado durante a análise sintática

Ser passado somente um parâmetro numa função quando o mesmo precisa de 2 ou mais parametros.

# 7ª Questão

### (a) Explique o papel do código intermediário no processo de compilação e como ele facilita a portabilidade.

Ele vai tar lá como uma refeição pre-pronta pros otimizadores individuais a cada plataforma. Pra não precisar passar por todo o processo em cada tipo de sistema. Esse pode ser tornado em linguagem de codigo em diversas arquiteturas com mínima mudança.

### (b) O que é uma "árvore de derivação", e como ela é usada na geração de código intermediário?

Ela é o que vai representar a estrutura do codigo, o que ocorre primeiro, o fluxo, com ela é possível gerar o codigo intermediário, fazendo o melhor uso de como o codigo deve ser pra gerar o mesmo.

### (c) Cite uma linguagem de código intermediário usada em compiladores modernos.

A linguagem Common Intermediate Language é a IL do compilador de C#, Roslyn.

# 8ª Questão

### O que é a otimização de código e qual é sua importância no processo de compilação?

Um codigo mais otimizado roda mais eficiente e consequentemente mais rapido, que geralmente é um beneficio em qualquer aplicação, se não a velocidade, a eficiência. A otimização elimina etapas do codigo desnecessários (tipo a troca de valores constantes no codigo) e reduz calculos a sua menor e mais eficiente forma para que o processador não precise trabalhar tanto pra executar a mesma ação.

# 9ª Questão

### O que caracteriza a memória RAM em um sistema de computação?

(a) É uma memória não volátil usada para armazenamento de longo prazo.

(b) É uma memória de somente leitura usada para armazenar o sistema operacional.

**(c) É uma memória volátil usada para armazenar dados temporários durante o processamento.**

(d) É uma memória secundária usada para backups de arquivos.

# 10ª Questão

### Quais são as etapas principais do ciclo de máquina?

(a) Entrada de dados, saída de dados e processamento.

**(b) Busca, decodificação e execução.**

(c) Salvamento, carregamento e interrupção.

(d) Leitura, escrita e armazenamento.

# 11ª Questão

### A memória cache é importante porque:

(a) Armazena permanentemente os dados do sistema.

(b) Substitui a necessidade de memória RAM.

(c) Funciona como backup para o disco rígido.

**(d) Aumenta a velocidade de acesso a dados frequentemente usados.**

# 12ª Questão

### O que é um compilador?

**(a) Um programa que traduz código de uma linguagem de alto nível para linguagem de máquina.**

(b) Um programa que executa diretamente o código-fonte.

(c) Um dispositivo físico que organiza instruções em memória.

(d) Uma ferramenta usada exclusivamente para depuração de programas.

# 13ª Questão

### Qual das alternativas apresenta as etapas do processo de compilação em ordem correta?

(a) Análise sintática, geração de código, otimização, análise léxica.

**(b) Análise léxica, análise sintática, análise semântica, geração de código.**

(c) Otimização, análise léxica, análise sintática, execução.

(d) Análise semântica, análise léxica, geração de código, análise sintática.

# 14ª Questão

### Por que o código intermediário é gerado em alguns compiladores?

**(a) Para facilitar a portabilidade do compilador para diferentes plataformas.**

(b) Para evitar erros de compilação durante a análise léxica.

(c) Para substituir a necessidade de otimização do código.

(d) Para executar o código diretamente sem tradução adicional.

# 15ª Questão

### A otimização de código é realizada para:

(a) Identificar erros de sintaxe no código-fonte.

**(b) Melhorar a eficiência e o desempenho do programa.**

(c) Aumentar o tamanho do programa para facilitar a execução.

(d) Substituir a geração de código intermediário.

# 16ª Questão

### Que tipo de erro um compilador pode identificar durante a análise sintática?

(a) Erro de digitação em comentários.

(b) Uso incorreto de variáveis não declaradas.

**(c) Falhas na estrutura e organização do código.**

(d) Instruções inválidas na arquitetura do processador.
