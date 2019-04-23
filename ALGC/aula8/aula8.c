#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

/* alusão das funções que implementam os algoritmos pretendidos */
long unsigned int PerrinRec (int);
long unsigned int PerrinDin (int);

/* variável global para contar as adições executadas pelo algoritmo */
int Sum;

int main (void)
{
	int Line, N, Test;
    long unsigned int Result;

	/* leitura do valor limite da tabela */
	do
	{
		printf ("N? "); Test = scanf ("%d", &N);
		scanf ("%*[^\n]"); scanf ("%*c");
	} while (Test == 0);

    /* impressão da tabela de execução do algoritmo */
	for (Line = 0; Line <= N; Line++)
	{
        /* inicialização da variável global contadora das adições */
		Sum = 0;

		/* invocação do algoritmo pretendido */
		Result = PerrinDin (Line);

		/* apresentação do resultado e do número de adições executadas pelo algoritmo */
		fprintf (stdout, "P(%2d) = %4ld e fez %2d somas\n", Line, Result, Sum);
	}

	scanf ("%*c");
	exit (EXIT_SUCCESS);
}

/* implementação dos algoritmos pretendidos */
/* acrescentar a contagem das invocações recursivas executadas pelos algoritmos usando a variável global */

long unsigned int PerrinRec (int n)
{
    assert(n >= 0);

    if(n == 0) return 3;
    if(n == 1) return 0;
    if(n == 2) return 2;

    Sum++;
	return PerrinRec(n-2) + PerrinRec(n-3);
}

long unsigned int PerrinDin (int n)
{
    assert(n >= 0);
    
    if(n == 0) return 3;
    if(n == 1) return 0;
    if(n == 2) return 2;

    int array[n+1];
    array[0] = 3;
    array[1] = 0;
    array[2] = 2;

    int res = 0;
    for(int i = 3; i <= n; i++){
        array[i] = array[i-2] + array[i-3];
        Sum++;
        res = array[i];
    }
	return res;
}