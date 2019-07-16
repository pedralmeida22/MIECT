#include <detpic32.h>

void delay(int ms){
    for(; ms > 0; ms--){
        resetCoreTimer();
        while(readCoreTimer() < 20000);
    }
}

void send2displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07,
             0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71, 0x80};
    
    static char displayFlag = 0;

    unsigned char digit_low = value & 0x0F;
    unsigned char digit_high = value >> 4;

    LATDbits.LATD5 = !displayFlag;
    LATDbits.LATD6 = displayFlag;

    if(displayFlag == 0){
        LATB = (LATB & 0x80FF) | (display7Scodes[digit_low] << 8);
    }
    else{
        LATB = (LATB & 0x80FF) | (display7Scodes[digit_high] << 8);
    }
    displayFlag = !displayFlag;
}

int main(void){
    LATB = LATB & 0x80FF;
    LATD = LATD & 0xFF9F;

    TRISB = TRISB & 0x80FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    LATDbits.LATD5 = 1;
    LATDbits.LATD6 = 0;

    int counter = 0;
    int i;
    while(1){
        i = 0;
        do{
            delay(10);
            send2displays(counter);
            printf("%d\n", counter);
        }while(++i < 4);
        counter++;
        counter &= 0x00FF;
    }

    return 0;
}
