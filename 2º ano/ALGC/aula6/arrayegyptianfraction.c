/*******************************************************************************
 Ficheiro de implementação do Tipo de Dados Abstracto EGYPTIAN FRACTION.
 A estrutura de dados de suporte da fração egípcia é uma estrutura, constituída
 pelo campo inteiro Size para indicar o número de frações existentes, pelo campo
 inteiro Complete para indicar se a fração egípcia está completa/incompleta, e
 pelo array que armazena as frações unitárias contituintes da fração egípcia.

 Autor : António Manuel Adrego da Rocha    Data : Março de 2019
 
 Implementation file of the abstract data type EGYPTIAN FRACTION.
 The supporting data structure of the egyptian fraction is a structure, constituted
 by the integer field Size to indicate the number of fractions, by the integer field
 Complete to indicate if the egyptian fraction is complete/incomplete, and by the
 array that stores the unit fractions constituent of the egyptian fraction.
*******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

#include "egyptianfraction.h"	/* Ficheiro de interface do TDA - ADT Interface file */

/********** Definição da Estrutura de Dados Interna da Fração Egípcia *********/
/************ Egiptian Fraction's Internal Data Structure Definition **********/

struct egyptianfraction
{
	int Size;	/* número de frações unitárias - number of unit fractions */
	int Complete;	/* fração egípcia completa/incompleta - complete/incomplete egyptian fraction */
	PtFraction Array[MAX_SIZE];  /* array de frações unitárias - array of unit fractions */
};

/*********************** Controlo Centralizado de Erro ************************/
/************************* Centralized Error Control **************************/

static unsigned int Error = OK;	/* inicialização do erro - error initialization */

static char *ErrorMessages[] = {
									"sem erro - without error",
									"fracao(fracoes) inexistente(s) - fraction(s) do not exist",
									"memoria esgotada - out of memory",
									"fracao nao propria - fraction not proper",
									"denominador nulo - null denominator",
									"indice errado - bad index",
									"ponteiro nulo - null pointer"
								};

static char *AbnormalErrorMessage = "erro desconhecido - unknown error";

/************** Número de mensagens de erro previstas no módulo ***************/
/************** Number of predicted error messages in the module **************/

#define N (sizeof (ErrorMessages) / sizeof (char *))

/************************ Alusão às Funções Auxiliares ************************/
/*********************** Allusion to Auxiliary Functions **********************/

static PtFraction CreateUnitFraction (PtFraction *);

/*************************** Definição das Funções ****************************/
/*************************** Function Definitions *****************************/

void EgyptianFractionClearError (void)
{ Error = OK; }

int EgyptianFractionError (void)
{ return Error; }

char *EgyptianFractionErrorMessage (void)
{
	if (Error < N) return ErrorMessages [Error];
	else return AbnormalErrorMessage;	/* não há mensagem de erro - - no error message */
}

PtEgyptianFraction EgyptianFractionCreate (PtFraction pfraction)	/* construtor inicializador - initializer constructor */
{
	Error = OK;

	PtEgyptianFraction frac;
	if (pfraction == NULL) { 
		Error = NO_FRACTION; 
		return NULL;
	}
	if (FractionIsProper(pfraction) == 0){
		Error = NOT_PROPER;
		return NULL;
	}
	PtFraction copy; 
	if((copy = FractionCopy(pfraction)) == NULL){
		Error = NO_MEM;
		return NULL;
	}	
	if ((frac = malloc(sizeof(struct egyptianfraction))) == NULL){
		Error = NO_MEM; 
		FractionDestroy(&copy); 
		return NULL;
	}
	int complete = 0;
	int i = 0;
	for(; i < MAX_SIZE; i++){
		PtFraction ptFrac = CreateUnitFraction(&copy);

		if(ptFrac == NULL){
			Error = NO_MEM;
			FractionDestroy(&copy);
			EgyptianFractionDestroy(&frac);
			return NULL;
		}

		frac->Array[i++] = ptFrac;
		if(copy == NULL) break;
		if(FractionIsNull(copy)) {
			complete = 1;
			break;
		}
	}
	frac->Size = i;
	frac->Complete = complete;
	FractionDestroy(&copy);

	return frac;
}

void EgyptianFractionDestroy (PtEgyptianFraction *pegyp)	/* destrutor - destructor */
{
	Error = OK;

	PtEgyptianFraction frac = *pegyp;

	if(frac == NULL){
		Error = NO_FRACTION;
		return;
	}

	for(int i = 0; i < frac->Size; i++)
	{
		FractionDestroy(&frac->Array[i]);
	}
	free(frac);
	*pegyp = NULL;	
}

int  EgyptianFractionGetSize (PtEgyptianFraction pegyp)
{
	Error = OK;

	if(pegyp == NULL){
		Error = NO_FRACTION;
		return 0;
	}
	return pegyp->Size;
}

int  EgyptianFractionIsComplete (PtEgyptianFraction pegyp)
{
	Error = OK;
	
	if(pegyp == NULL){
		Error = NO_FRACTION;
		return 0;
	}
	return pegyp->Complete;
}

PtEgyptianFraction EgyptianFractionCopy (PtEgyptianFraction pegyp)	/* construtor cópia - copy constructor */
{
	Error = OK;
	
	if(pegyp == NULL){
		Error = NO_FRACTION;
		return NULL;
	}
	PtFraction frac = EgyptianFractionToFraction(pegyp);

	PtEgyptianFraction copy = EgyptianFractionCreate(frac);

	if(copy == NULL){
		Error = NO_MEM;
		return NULL;
	}

	return copy;
}

PtFraction EgyptianFractionToFraction (PtEgyptianFraction pegyp)
{
	Error = OK;
	
	if(pegyp == NULL){
		Error = NO_FRACTION;
		return NULL;
	}

	PtFraction frac = FractionCreate(0,1);

	if(frac == NULL){
		Error = NO_MEM;
		return NULL;
	}

	for(int i = 0; i < pegyp->Size; i++){
		frac = FractionAddition(frac, pegyp->Array[i]);
	}

	return frac;
}

int EgyptianFractionEquals (PtEgyptianFraction pegy1, PtEgyptianFraction pegy2)
{
	Error = OK;

	if (pegy1 == NULL ||pegy2 == NULL){
		Error = NO_FRACTION;
		return 0;
	}

	PtFraction frac1 = EgyptianFractionToFraction(pegy1);
	PtFraction frac2 = EgyptianFractionToFraction(pegy2);

	return FractionEquals(frac1, frac2);
}

int EgyptianFractionBelongs (PtEgyptianFraction pegyptian, PtFraction pfraction)
{
	if(pegyptian == NULL || pfraction == NULL){
		Error = NO_FRACTION; 
		return 0;
	}
	if(FractionIsProper(pfraction) == 0){
		Error = NOT_PROPER; 
		return 0;
	}
	for(int i = 0; i < pegyptian->Size; i++){
		if (FractionEquals(pfraction,pegyptian->Array[i])) {
			return 1;
		}
	}
	return 0;
}

PtFraction EgyptianFractionGetPos (PtEgyptianFraction pegyp, int pindex)
{
	Error = OK;
	
	if(pegyp == NULL){
		Error = NO_FRACTION;
		return NULL;
	}

	if(pindex < 0 || pindex > pegyp->Size){
		Error = BAD_INDEX; 
		return NULL;
	}

	return pegyp->Array[pindex];
}

/*********************** Definição das Funções Internas ***********************/
/*********************** Definition of Internal Functions *********************/

/*******************************************************************************
 Função iterativa para decompor uma fração no seu primeiro termo unitário. Tem
 como parâmetro de entrada uma fração (que se assume uma fração própria positiva)
 e devolve a maior fração unitária existente ou uma referência nula no caso de 
 falta de memória dinâmica para alocar uma nova fração. A função altera a fração 
 passada no parâmetro de entrada para o valor do resto da fração que precisa de 
 continuar a ser convertida. Caso haja overflow no cálculo do denominador desta 
 fração restante então a fração de entrada fica com a referência nula para 
 indicar a impossibilidade de fazer a extração da fração unitária seguinte.
 Como o parâmetro de entrada fica corrompido pela execução da função, qualquer 
 função que a utilize deve - depois das validações necessárias - fazer uma cópia 
 da fração e usar a cópia, não se esquecendo de eliminar a fração no fim.
 
 Iterative function to decompose a fraction into its first unit term. Has as input
 parameter a fraction (assuming a positive proper fraction) and returns the largest
 existing unit fraction or a zero reference in the case of lack of dynamic memory 
 to allocate a new fraction. The function changes the input fraction to the value 
 of the remainder of the fraction that needs to continue to be converted. If there 
 is overflow in calculating the denominator of this remaining fraction, then the 
 input parameter is destoyed and assumes the null reference for indicate the 
 impossibility of extracting the next unit fraction. Because the input parameter is
 corrupted by the function execution, any function that uses it must - after the 
 necessary validations - make a copy of the fraction and use the copy, not forgetting
 to eliminate the fraction before terminating its execution.
*******************************************************************************/
static PtFraction CreateUnitFraction (PtFraction *pfraction)
{
	PtFraction UnitFraction; int Num, Den, NewNum, NewDen;

	Num = FractionGetNumerator (*pfraction);
	Den = FractionGetDenominator (*pfraction);

	NewNum = 1; NewDen = Den/Num;
	if (Den%Num != 0) NewDen++;

	if ((UnitFraction = FractionCreate (NewNum, NewDen)) == NULL)
	{ Error = FractionError (); return NULL; }

	unsigned long long Denominator = Den * NewDen;

	if (Denominator > INT_MAX) FractionDestroy (pfraction);
	else
	{
		NewNum = (-Den) % Num;
		if (NewNum < 0) NewNum += Num;
		NewDen = (int) Denominator;
		FractionSet (*pfraction, NewNum, NewDen);
		if (FractionError () != OK) FractionDestroy (pfraction);
	}

	return UnitFraction;
}