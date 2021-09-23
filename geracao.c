#include "geracao.h"
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <stdlib.h>

void swap(int *i, int *j) {
   int temp = *i;
   *i = *j;
   *j = temp;
}

void crescente(int *v, int n) {
   for (int i = 0; i < n; i++) {
      v[i] = i;
   }
}

void decrescente(int *v, int n) 
{
   for (int i = 0; i < n; i++) {
      v[i] = n - 1 - i;
   }
}

void aleatorio(int *v, int n) 
{
   crescente(v, n);
   srand(time(NULL));
   for (int i = 0; i < n; i++) {
      swap(&v[i], &v[rand() % n]);
   }
}

int entradaPadrao(int *v) 
{
   int n;
   scanf("%i", &n);
   v = (int*) malloc(n*sizeof(int));
   
   for (int i = 0; i < n; i++) {
      scanf("%i", &v[i]);
   }
   return n;
}

void mostrar(int *v, int n) 
{
   printf("[ ");
   for (int i = 0; i < n; i++) {
      printf("%d ", v[i]);
   }
   printf("] \n");
}

bool isOrdenado(int *v, int n)
{
   bool resp = true;
   for(int i = 1; i < n; i++){
      if(v[i-1] > v[i]){
         i = n;
         resp = false;
      }
   }
   return resp;
}
