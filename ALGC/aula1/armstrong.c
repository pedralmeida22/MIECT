#include <stdio.h>
#include <math.h>

int main(){

    for(int i = 100; i <=999; i++){
        int a = i / 100 % 10;
        int b = i / 10 % 10;
        int c = i % 10;

        //printf("%2d %2d %2d\n", a, b, c);
        
        double pa = pow((double) a, 3);
        double pb = pow((double) b, 3);
        double pc = pow((double) c, 3);

        int armstrong = (int) (pa + pb + pc);

        if(i == armstrong){
            printf("%d\n", i);
        }
        
    }
    return 0;
}