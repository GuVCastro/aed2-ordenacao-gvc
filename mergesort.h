#ifndef MERGESORT_H
#define MERGESORT_H
#include "geracao.h"

void mergesort(int *array, int n);
void mergesortRec(int *array, int esq, int dir);
void intercalar(int* array, int esq, int meio, int dir);
#endif
