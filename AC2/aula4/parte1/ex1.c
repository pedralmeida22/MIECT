#include <detpic32.h>

void delay(int ms){
   for(; ms > 0; ms--)
    {
        resetCoreTimer();
        while(readCoreTimer() < 20000);
    } 
}

int main(void)
{
    LATDbits.LATD0 = 0;

    TRISDbits.TRISD0 = 0;

    while(1){
        delay(500);
        LATDbits.LATD0 = !LATDbits.LATD0;
    }

    return 0;
}