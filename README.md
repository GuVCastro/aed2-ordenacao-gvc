# Laboratório - Ordenação - AED2
Implementações de Algoritmos de Ordenação estudados na disciplina de AED 2.

## Configurações de Ambiente
Sistem operacional: Ubuntu 20.04.3 LTS

Package manager: APT

Shell: Bash

Compilador: clang-7

Para instalar o compilador e suas dependências, basta executar o seguinte comando:

`sudo apt install clang-7`

### Comando para compilação

1. `clang-7 -pthread -lm -o main bolha.c countingsort.c geracao.c heapsort.c insercao.c main.c mergesort.c quicksort.c selecao.c shellsort.c`

### Configuração do octave

O software octave foi utlizado para plotar os dados gerados no arquivo **dados_algoritmos.csv**. Portanto foi desenvolvido um conjunto de scripts ser possível qualquer pessoa plotar os dados medidos do seu hardware.

Abaixo segue o passo a passo para instalação do Octave e execução dos scripts.

**1.** Instale o programa Octave e suas dependências:

1. `sudo apt install octave`

**2.** Após instalação, vá até o diretório do projeto e execute os seguntes comandos:

1. `cd octave`
2. `octave`

**3.** Dentro do console do programa, execute o seguinte comando:

`octave_plot`

## Execução do programa
### Parâmetros de execução

### Execução de todos os algoritmos de uma só vez
No diretório do projeto se encontra um script que permite execução de todos algortimos de uma só vez, chamado **exec-all.sh**.

Para executá-lo, basta inserir o seguinte comando:

1. `./exec-all.sh`

Caso a permissão de execução seja negada, execute o comando abaixo e tente novamente.

1. `chomod +x exec-all.sh`

