#include <assert.h>
#include <stdio.h>
#include <math.h>
#include "elapsed_time.h"

typedef unsigned long long u64;

u64 num_Add;
u64 num_Add2;

u64 F_v1(int n){
    assert(n >= 0);
    
    if(n < 2){
        return (u64) n;
    }
    num_Add++;
    return F_v1(n - 1) + F_v1(n - 2);
}

u64 F_v2(int n){

    if(n < 2){
        return (u64) n;
    }

    u64 ant = 1;
    u64 antt = 0;
    u64 atual;

    for( ; n > 1; n--)
    {
        atual = ant + antt;
        num_Add2++;
        antt = ant;
        ant = atual;
    }
    return atual;
}

u64 F_v3(int n){
    double teta = (1 + sqrt(5))/2;
    return (pow(teta, n) - pow(1-teta, n))/sqrt(5);
}

u64 F_v4(int n){
    double teta = (1 + sqrt(5))/2;
    return round((pow(teta, n))/sqrt(5));
}

u64 F_v5(int n){
    double c1 = 0.44721357549995793928;
    double c2 = 0.48121182505960344750;
    u64 r = (u64) round(c1 * exp((double) n*c2));
    return r;
}

int main(void){
    
    double dt1;

    printf("V1:\n");
    for(int i = 0; i < 30; i++){
        num_Add = 0;
        //u64 result = F_v1(i);
        u64 r;
        if(i < 40 || dt1 < 50.0){
            (void) elapsed_time();
            r = F_v1(i);
            dt1 = elapsed_time();
        }

        printf("%2d | %9llu | %5llu | %12.9f\n", i, /*result*/ r, num_Add, dt1);
    }

    printf("\nV2:\n");
    for(int i = 0; i < 10; i++){
        num_Add2 = 0;
        u64 result = F_v2(i);

        printf("%2d | %9llu | %5llu\n", i, result, num_Add2);
    }

    printf("\nV3:\n");
    for(int i = 0; i < 10; i++){
        u64 result = F_v3(i);

        printf("%2d | %9llu\n", i, result);
    }

    printf("\nV4:\n");
    for(int i = 0; i < 10; i++){
        u64 result = F_v4(i);

        printf("%2d | %9llu\n", i, result);
    }

    printf("\nV5:\n");
    for(int i = 0; i < 10; i++){
        u64 result = F_v5(i);

        printf("%2d | %9llu\n", i, result);
    }

    return 0;
}