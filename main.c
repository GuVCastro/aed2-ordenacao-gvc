#include "bolha.h"
#include "countingsort.h"
#include "heapsort.h"
#include "insercao.h"
#include "mergesort.h"
#include "quicksort.h"
#include "selecao.h"
#include "shellsort.h"

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>
#include <sys/resource.h>

struct rusage usage;

// Funcao registra em aquivo "dados_algoritmos.csv" valores separados por virgula
void gravaValores(int id_algo, int tamanho, float tempo, float memoria, int id_ordem)
{
	FILE *fd;
	
	fd = fopen("dados_algoritmos.csv", "a+");
	fprintf(fd, "%d; %d; %f; %0.2f; %d\n", id_algo, tamanho, tempo, memoria, id_ordem);
	fclose(fd);
}

void teste(int n, char ordem, char *algoritmo)
{
    int *array = (int*) malloc(n*sizeof(int));

	// Variaveis dos identificadores do algoritmo usado e a ordenacao inicial do vetor
	int id_algo = 0, id_ordem = 3;

    // Variaveis para calcular o tempo
    clock_t inicio, fim;
    double total;

	// Variaveis para calcular espaco
	double memory_used;

    //Geracao do conjunto a ser ordenado
    switch(ordem){
		case 'C': crescente(array, n);		id_ordem = 1;
		break;
		case 'D': decrescente(array, n);	id_ordem = 2;
		break;
		case 'A': aleatorio(array, n);		id_ordem = 3;
		break;
		default: aleatorio(array, n);
    }
	
    //Execucao do algoritmo de ordenacao	
	inicio = clock();
	
	if (algoritmo != NULL) {
		if (strcmp("bolha", algoritmo) == 0)			{ bolha(array, n);			id_algo = 1; }
		else if (strcmp("selecao", algoritmo) == 0)		{ selecao(array, n);		id_algo = 2; }
		else if (strcmp("insercao", algoritmo) == 0)	{ insercao(array, n);       id_algo = 3; }
		else if (strcmp("merge", algoritmo) == 0)		{ mergesort(array, n);		id_algo = 4; }
		else if (strcmp("quick", algoritmo) == 0)		{ quicksort(array, n);		id_algo = 5; }
		else if (strcmp("shell", algoritmo) == 0)		{ shellsort(array, n);		id_algo = 6; }
		else if (strcmp("heap", algoritmo) == 0)		{ heapsort(array, n);		id_algo = 7; }
		else if (strcmp("counting", algoritmo) == 0)	{ countingsort(array, n);	id_algo = 8; }
		else printf("Argumento Invalido\n");
	}

	// Registra tempo
	fim = clock();
	total = ((fim - inicio) / (double)CLOCKS_PER_SEC);
	
	// Registra memoria utilizada
	getrusage(RUSAGE_SELF, &usage);

	// Exibe valores e registra e texto
	printf("%s; n = %d; %f s; %0.2f KB; %c\n", algoritmo, n, total, usage.ru_maxrss/1024.0, ordem);
	gravaValores(id_algo, n, total, usage.ru_maxrss/1024.0, id_ordem);

	//Desaloca o espaco de memoria do array
    free(array);
}

int main(int argc, char *argv[])
{
	if (argv[1] == NULL) printf("Entrada Vazia\n");
	
	// Passa tamanho do array, ordenacao e algoritmo que sera utilizado
    for(int i = 2000; i <= 128000; i = i*2){
       teste(i, 'C', argv[1]);
       teste(i, 'D', argv[1]);
       teste(i, 'A', argv[1]);
    }
    
    return 0;
}
