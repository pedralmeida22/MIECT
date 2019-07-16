#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>

/* alusão da função que implementa o algoritmo */
/* allusion to the function that implements the algorithm */
void ScrambleArray (int [], int);

/* variável global para contar as invocações da função rand executadas pelo algoritmo */
int Rand = 0;

/* variável global para contar as trocas executadas pelo algoritmo */
int Swap = 0;

int main (void)
{
    /* declaração do array de teste - declaration of the test array */
    int Array[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
    int NElem = sizeof (Array) / sizeof (int), i;

    /* invocação do algoritmo - algorithm invocation */
	ScrambleArray (Array, NElem);

	fprintf (stdout, "Array -> ");
	for (i = 0; i < NElem; i++) fprintf (stdout, "%d ", Array[i]);
	fprintf (stdout, "\t Rands = %2d - Swaps = %2d \n", Rand, Swap);

    exit (EXIT_SUCCESS);
}

/*
   Para gerar uma sequência pseudo-aleatória de números inteiros primeiro é preciso
   invocar a função srand, para criar a semente geradora de números aleatórios.
   A função deve ser invocada com um argumento sempre diferente de forma a obtermos
   sequências pseudo-aleatórias distintas. Tal pode ser feito, por exemplo, usando a
   função getpid(). Depois para gerar um número pseudo-aleatório inteiro no intervalo
   [0..MAX] é preciso invocar a função rand na seguinte forma:
                    randint = (int) (rand () / (RAND_MAX+1.0) * (MAX+1));
*/

/* implementação do algoritmo com a contagem das operações rand e as trocas */

void ScrambleArray (int array[], int n)
{
	/* criar a semente geradora de números aleatórios - create the random seed */
	srand (getpid ());

    /* acrescentar o código do algoritmo - insert your code */
    for(int i = n-1; i > 0; i--){        
        int randint = (int) (rand() / (RAND_MAX+1.0) * (i+1));
        Rand++;

        // trocar
        if(randint != i) {
            int temp = array[i];
            array[i] = array[randint];
            array[randint] = temp;
            Swap++;
        }
    }
}