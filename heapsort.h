#ifndef HEAPSORT_H
#define HEAPSORT_H
#include "geracao.h"
void constroi(int *array, int tamHeap);
int getMaiorFilho(int *array, int i, int tamHeap);
void reconstroi(int *array, int tamHeap);
void heapsort(int *array, int n);
#endif
