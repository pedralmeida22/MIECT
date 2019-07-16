#include "stack.h"
#include <stdio.h>

int main(void){
    // String ao contrario

    char str[20];

    printf("Escreva uma palavra: ");
    fgets(str, 20, stdin);

    PtStack stack = StackCreate( sizeof(char) );

    char* p = str;
    while(*p != '\0'){
        StackPush(stack, p);
        p++;
    }

    printf("\nNa ordem inversa:\n");

    char c;
    while(!StackIsEmpty(stack)){
        StackPop(stack, &c);

        if(c != '\n'){
            printf("%c",c);
        }
    }
    printf("\n");

    StackDestroy(&stack);

    return 0;
}