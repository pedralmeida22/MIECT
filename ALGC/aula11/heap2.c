#include "pqueue.h"
#include <stdio.h>

int main(void){
    int a[20] = {3,2,1,7,6,5,4,9,8,13,12,11,16,14,15,19,18,17,20,10};

    PtPQueue fila = PQueueCreate(10);

    for(int i = 0; i < 10; i++){ PQueueInsert(fila, a[i]); }

    for(int i = 10; i < 20; i++){
        int temp = a[i];
        int temp2;
        PQueueDeleteMax(fila, &temp2);
        if(temp < temp2){
            PQueueInsert(fila, temp);
        }
        PQueueInsert(fila,temp2);
    }
    int p;
    for(int i = 0; i < 10; i++){ 
        PQueueDeleteMax(fila, &p);
        printf("%d: %d\n", i, p); 
    }

    PQueueDestroy(&fila);

    return 0;
}