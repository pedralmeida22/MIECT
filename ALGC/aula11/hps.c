#include "pqueue.h"
#include <stdio.h>

int main(void){
    int a[9] = {3,2,1,7,6,5,4,9,8};

    PtPQueue fila = PQueueCreate(9);

    for(int i = 0; i < 9; i++){ PQueueInsert(fila, a[i]); }

    for(int i = 8; i >= 0; i--){
        int temp;
        PQueueDeleteMax(fila, &temp);
        a[i] = temp;
    }

    PQueueDestroy(&fila);

    for(int i = 0; i < 9; i++){ printf("%d: %d\n", i, a[i]); }

    return 0;
}