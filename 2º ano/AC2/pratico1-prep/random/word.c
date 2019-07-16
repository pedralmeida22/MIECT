#include <detpic32.h>

void delay(int ms){
    for(; ms > 0; ms--){
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    }
}

void send2displays(unsigned char value){
    static const char display7Scodes[] = {0x00, 0x73, 0x3E, 0x6D, 0x6D, 0x6E, 0x00};

    static char displayFlag = 0;

    unsigned char digit_low = value + 1;
    unsigned char digit_high = value;

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

    LATB = LATB & 0x00FF;
    LATDbits.LATD5 = 1;
    LATDbits.LATD6 = 1;

    TRISB = TRISB & 0x80FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    while(1){
        int i = 0;
        int slow;
        for(; i < 7;i++){
            slow = 0;
            do {
                send2displays(i);
                delay(10);
            } while(++slow < 30);
        }
        delay(1000);
    }

    return 0;
}
