# Documentação do Jogo da Vida em Linguagem Assembly

## Introdução
Este documento fornece uma visão geral e detalhes técnicos sobre a implementação do "Jogo da Vida" de Conway em linguagem de montagem. O Jogo da Vida é um modelo matemático de autômatos celulares proposto pelo matemático britânico John Horton Conway em 1970.

## Visão Geral
O código implementa uma simulação do Jogo da Vida em uma grade bidimensional. Cada célula da grade pode estar em um de dois estados: vivo ou morto. A evolução da grade ocorre de acordo com regras específicas baseadas no estado das células vizinhas.

## Funções Principais

### 1. `countNeighbors`
Esta função é responsável por contar o número de células vizinhas vivas para uma célula específica na grade. Ela aceita coordenadas (linha, coluna) da célula como entrada e retorna o número de vizinhos vivos.

### 2. `updateGrid`
A função `updateGrid` é responsável por atualizar o estado da grade em conformidade com as regras do Jogo da Vida. Ela percorre cada célula na grade, conta o número de vizinhos vivos usando a função `countNeighbors` e atualiza o estado da célula de acordo com as seguintes regras:
- Qualquer célula viva com menos de dois vizinhos vivos morre de solidão.
- Qualquer célula viva com dois ou três vizinhos vivos permanece viva.
- Qualquer célula viva com mais de três vizinhos vivos morre de superpopulação.
- Qualquer célula morta com exatamente três vizinhos vivos se torna uma célula viva por reprodução.

### 3. `main`
A função principal do programa. Ela inicializa a grade com um estado inicial, executa um loop infinito para imprimir e atualizar a grade em intervalos regulares e introduz um atraso entre as iterações.

## Detalhes de Implementação
- A grade é representada como um array bidimensional de tamanho fixo (40x20), onde cada célula é representada como um bit (vivo ou morto).
- O código é altamente otimizado para desempenho, escrito em linguagem de montagem para maximizar a eficiência computacional.
- Chamadas de sistema são usadas para limpar a tela do terminal entre cada atualização da grade, proporcionando uma visualização clara da evolução do jogo.
