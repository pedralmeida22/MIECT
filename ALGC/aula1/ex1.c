#include <stdio.h>

int c1, c2, c3 = 0;

int f1 (int n)  // O(n^2)
{
    int i, j, r = 0;
    for (i = 1; i <= n; i++){
        for (j = 1; j <= n; j++){
            r += 1;
            c1++;
        }
    }
    return r;
}

int f2 (int n)  // O(n^2)
{
    int i, j, r = 0;
    for (i = 1; i <= n; i++)
    for (j = 1; j <= i; j++){
        r += 1;
        c2++;
    }
    return r;
}

int f3 (int n)  // O(n^3)
{
    int i, j, r = 0;
    for (i = 1; i <= n; i++){
        for (j = i; j <= n; j++){
            r += j;
            c3++;
        }
    }
    return r;
}

int main (void){

    for(int i = 1; i <= 10; i++){
        c1 = 0;
        c2 = 0;
        c3 = 0;
        int r1 = f1(i);
        int r2 = f2(i);
        int r3 = f3(i);
        printf("F1: %5d |N sum: %3d | F2: %5d | N sum: %3d | F3: %5d | N sum: %3d\n", r1, c1, r2, c2, r3, c3);
    }
    return 0;
}