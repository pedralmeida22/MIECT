#include <detpic32.h>

void delay(int ms){
    for(; ms > 0; ms--){
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    }
}

void send2displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07,
             0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71, 0x80};

    unsigned char digit_low = value;

    LATB = (LATB & 0x00FF) | (display7Scodes[digit_low] << 8);
}

int main(void){
    LATB = LATB & 0x00FE;
    LATDbits.LATD5 = 1;
    

    TRISB = (TRISB & 0x80FF) | 0x0001 ;
    TRISDbits.TRISD5 = 0;

    while(1){
        int count;
        int i = 0;
        while(!PORTBbits.RB0){
            printf("i1:%d\n", i);
            send2displays(i);
            count = i;
            i++;
            if(i == 7) i = 0;
            delay(50);
        }
        printf("saiu:%d\n", count);
        send2displays(count);
    }

    return 0;
}
