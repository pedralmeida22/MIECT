#include <detpic32.h>

void delay(int ms){
    for(;ms > 0; ms--){
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    }
}

int main(void){
    LATE = LATE & 0xFFF0;

    TRISE = TRISE & 0xFFF0;

    int count = 0;

    while(1){
        delay(125);
        LATE &= 0xFFF0;
        LATE = LATE | count;
        count++;
        count &= 0x000F;
    }

    return 0;
}
