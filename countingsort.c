#include "geracao.h"
#include "countingsort.h"
int getMaior(int *array, int n)
{
    int maior = array[0];

    for (int i = 0; i < n; i++) {
        if(maior < array[i]){
            maior = array[i];
        }
    }

    return maior;
}

void countingsort(int *array, int n) 
{
    int tamCount = getMaior(array, n) + 1;
    int count[tamCount];
    int ordenado[n];

    for (int i = 0; i < tamCount; count[i] = 0, i++);
    for (int i = 0; i < n; count[array[i]]++, i++);
    for(int i = 1; i < tamCount; count[i] += count[i-1], i++);
    for(int i = n-1; i >= 0; ordenado[count[array[i]]-1] = array[i], count[array[i]]--, i--);
    for(int i = 0; i < n; array[i] = ordenado[i], i++);
}
