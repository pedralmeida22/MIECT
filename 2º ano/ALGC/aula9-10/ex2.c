#include "stack.h"
#include "queue.h"
#include <stdio.h>

int main(void){
    unsigned int n;
    puts("Insira um numero para verificar se é capicua:");
    scanf("%u", &n);

    PtQueue q = QueueCreate( sizeof(unsigned short) );
    PtStack s = StackCreate( sizeof(unsigned short) );

    unsigned short digit;
    do{
        digit = n % 10;

        QueueEnqueue(q, &digit);

        StackPush(s, &digit);
        
        n /= 10;

    }while(n != 0);
    
    unsigned short qn;
    unsigned short sn;
    unsigned int flag = 1;

    while(!StackIsEmpty(s)){
        StackPop(s, &sn);
        QueueDequeue(q, &qn);

        if(sn != qn){
            flag = 0;
            puts("falso!!");
            break;
        }
    }

    if(flag){
        puts("O numero é capicua!");
    }
    else{
        puts("O numero nao é capicua!");
    }

    StackDestroy(&s);
    QueueDestroy(&q);
    
    return 0;
}