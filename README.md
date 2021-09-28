# Laboratório - Ordenação - AED2
Implementações de Algoritmos de Ordenação estudados na disciplina de AED 2.

## Ambiente de desenvolvimento
Sistem operacional: Ubuntu 20.04.3 LTS

Packge manager: APT

Compilador: clang-7


Para instalar o compilador e suas dependências, basta executar o seguinte comando:

`sudo apt install clang-7`

### Comando para compilação

`clang-7 -pthread -lm -o main bolha.c countingsort.c geracao.c heapsort.c insercao.c main.c mergesort.c quicksort.c selecao.c shellsort.c`

### Configuração do octave

O software octave foi utlizado para plotar os dados gerados no arquivo dados_algoritmo.csv. Portanto foi desenvolvido um conjunto de scripts ser possível qualquer pessoa plotar os dados medidos do seu hardware.

Abaixo segue o passo a passo para instalação do Octave e execução dos scripts.

`sudo apt install octave`

Após instalação, vá até o diretório do projeto e execute os seguntes comandos:

1. `cd octave`
2. `octave`

Dentro do console do programa, execute o seguinte comando:

`octave_plot`
