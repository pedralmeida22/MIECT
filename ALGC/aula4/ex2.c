#include <stdio.h>
#include <stdlib.h>

/* alusão da função que implementa o algoritmo pretendido */
int MaxRepetition (int [], int);

/* variável global para contar as operações de comparação executadas pelo algoritmo */
int Count = 0;

int main (void)
{
    /* declaração dos arrays de teste - usar o pretendido para cada execução */

    //int Array[] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 }; 
    // int Array[] = { 1, 1, 1, 1, 1, 3, 1, 1, 1, 1 }; 
    // int Array[] = { 1, 1, 1, 4, 1, 1, 4, 1, 1, 1 }; 
    // int Array[] = { 1, 1, 1, 1, 1, 1, 2, 5, 1, 9 }; 
    // int Array[] = { 1, 1, 1, 1, 9, 1, 2, 5, 1, 9 }; 
    // int Array[] = { 1, 1, 1, 9, 1, 2, 8, 3, 7, 1 }; 
    //int Array[] = { 1, 1, 1, 9, 5, 2, 8, 1, 9, 9 }; 
    //int Array[] = { 1, 1, 3, 9, 5, 2, 8, 7, 9, 9 }; 
    //int Array[] = { 1, 1, 6, 0, 5, 2, 8, 7, 9, 9 }; 
    //int Array[] = { 1, 4, 6, 0, 5, 2, 8, 7, 9, 9 }; 
    int Array[] = { 1, 3, 6, 0, 5, 2, 8, 7, 11, 9 };
  
    int NElem = sizeof (Array) / sizeof (int); int Result;

    /* invocação do algoritmo - algorithm invocation */    
	Result = MaxRepetition (Array, NElem);

	/* apresentação do resultado e do número de comparações executadas pelo algoritmo */
	fprintf (stdout, "Maximum repeatability of elements = %2d - Comparisons = %3d\n", Result, Count);

    exit (EXIT_SUCCESS);
}

/* implementação do algoritmo com a contagem das comparações */

int MaxRepetition (int array[], int n)
{
    /* acrescentar o código do algoritmo - insert your code */
    int num_reps = 0;
    int max_reps = 0;
    for(int i = 0; i < n-1; i++){
        num_reps = 0;
        for(int j = i; j < n; j++){
            Count++;
            if(array[i] == array[j]){
                num_reps++;
            }

            // break 
        }
        Count++;
        if(max_reps < num_reps){
            max_reps = num_reps;
        }
    }
    return max_reps;
}