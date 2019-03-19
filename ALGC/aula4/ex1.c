#include <stdio.h>
#include <stdlib.h>

/* alusão da função que implementa o algoritmo pretendido */
int VerifyDifferences (int [], int);

/* variável global para contar as operações aritméticas executadas pelo algoritmo */
int Count = 0;

int main (void)
{
    /* declaração dos arrays de teste - usar o pretendido para cada execução */

    //int Array[] = { 1, 3, 5, 7, 9, 11, 20, 25, 27, 29 }; 
    //int Array[] = { 1, 3, 6, 9, 11, 13, 20, 25, 27, 29 };
    //int Array[] = { 1, 3, 6, 10, 11, 13, 20, 25, 27, 29 };
    //int Array[] = { 1, 3, 6, 10, 15, 17, 20, 25, 27, 29 };
    //int Array[] = { 1, 3, 6, 10, 15, 21, 22, 25, 27, 29 };
    //int Array[] = { 1, 3, 6, 10, 15, 21, 28, 30, 37, 39 };
    //int Array[] = { 1, 3, 6, 10, 15, 21, 28, 36, 39, 49 };
    //int Array[] = { 1, 3, 6, 10, 15, 21, 28, 36, 45, 49 };
    int Array[] = { 1, 3, 6, 10, 15, 21, 28, 36, 45, 55 };
  
    int NElem = sizeof (Array) / sizeof (int); int Result;

    /* invocação do algoritmo - algorithm invocation */    
	Result = VerifyDifferences (Array, NElem);

	/* apresentação do resultado e do número de operações executadas pelo algoritmo */
	if (Result) fprintf (stdout, "Checks ");
	else fprintf (stdout, "Does not check ");

	fprintf (stdout, " - Arithmetic operations = %3d \n", Count);

    exit (EXIT_SUCCESS);
}

/* implementação do algoritmo com a contagem das operações aritméticas */

int VerifyDifferences (int array[], int n)
{
    /* acrescentar o código do algoritmo - insert your code */
    int dif = array[1] - array[0];
    Count++;

    for(int i = 1; i < n-1; i++){
        int temp = array[i+1] - array[i];
        Count++;

        Count++;
        if(temp - dif == 1){
            dif = temp;
        }
        else
        {
            return 0;
        }
        
    }
    return 1;
}