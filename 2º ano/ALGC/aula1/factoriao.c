#include <stdio.h>

int main (void){

    int fact[10] = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880};

    for(int i = 1; i <= 100000; i++){
        int a = i / 100000;
        int b = i / 10000 % 10;
        int c = i / 1000 % 10;
        int d = i / 100 % 10;
        int e = i / 10 % 10;
        int f = i % 10;

        int factorion = 0;
        if(a != 0) {
            factorion = fact[a] + fact[b] + fact[c] + fact[d] + fact[e] + fact[f];
        }
        else if (b != 0) {
            factorion = fact[b] + fact[c] + fact[d] + fact[e] + fact[f];
        }
        else if (c != 0)
        {
            factorion = fact[c] + fact[d] + fact[e] + fact[f];
        }
        else if (d != 0)
        {
            factorion = fact[d] + fact[e] + fact[f];
        }
        else if (e != 0)
        {
            factorion = fact[e] + fact[f];
        }
        else
        {
            factorion = fact[f];
        }      
        
        if(i == factorion){
            printf("%d\n", i);
        }
    }

    return 0;
}