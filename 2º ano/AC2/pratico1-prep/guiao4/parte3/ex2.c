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

    static char displayFlag = 0;

    unsigned char digit_low = value & 0x0F;
    unsigned char digit_high = value >> 4;

    LATDbits.LATD5 = !displayFlag;
    LATDbits.LATD6 = displayFlag;

    if(displayFlag == 0){
        LATB = (LATB & 0x00FF) | (display7Scodes[digit_low] << 8);

        if(digit_low % 2 == 0){
            LATBbits.LATB15 = 1;
        }

    }else{
        LATB = (LATB & 0x00FF) | (display7Scodes[digit_high] << 8);

        if(digit_low % 2 != 0){
            LATBbits.LATB15 = 1;
        }
    }
    displayFlag = !displayFlag;
}

unsigned char toBcd(unsigned char value){
    return ((value / 10) << 4) + (value % 10);
}

void shine(){
    int i = 0;
    do{
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 1;
        LATB = (LATB & 0x00FF) | 0x3F00;
        delay(500);

        LATB = LATB & 0x00FF;
        delay(500);

    }while(i++ < 5);
}

int main(void){
    LATB = LATB & 0x00FF;
    LATDbits.LATD5 = 0;
    LATDbits.LATD6 = 1;

    TRISB = TRISB & 0x00FF;
    TRISD = TRISD & 0XFF9F;

    int counter = 0;
    int i;
    while(1){
        i = 0;
        do{
            delay(10);
            send2displays(toBcd(counter));
            printf("%d\n", counter);
        }while(++i < 100);
        counter++;
        counter &= 0x00FF;

        if(counter == 60){
            counter = 0;
            shine();
        }
    }

    return 0;
}
