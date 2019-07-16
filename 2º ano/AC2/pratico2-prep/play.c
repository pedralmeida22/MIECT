#include <detpic32.h>

void delay(int ms){
    for(; ms > 0; ms--){
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    }
}

int main(void){

    TRISB = TRISB | 0x0001;
    TRISE = TRISE & 0xFFF0;
    int count = 0;
    while(1){
        LATE = (LATE & 0xFFF0) | count;
        delay(1000);
        if(PORTBbits.RB0){
            count++;
            count = count & 0x000F;
        }
        if(!PORTBbits.RB0){
            count--;
            count = count & 0x000F;
        }
    }

    return 0;
}