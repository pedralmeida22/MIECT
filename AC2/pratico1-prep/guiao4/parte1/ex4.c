#include <detpic32.h>

void delay(int ms){
    for(; ms > 0; ms--){
        resetCoreTimer();
        while(readCoreTimer() < 20000);
    }
}

void to7seg(char c){
    switch (c)
    {
        case 'a' | 'A':
            LATB = (LATB & 0x00FF) | 0x7700;
            break;
        case 'b' | 'B':
            LATB = (LATB & 0x00FF) | 0x7C00;
            break;
        case 'c' | 'C':
            LATB = (LATB & 0x00FF) | 0x3900;
            break;
        case 'd' | 'D':
            LATB = (LATB & 0x00FF) | 0x5E00;
            break;
        case 'e' | 'E':
            LATB = (LATB & 0x00FF) | 0x7900;
            break;
        case 'f' | 'F':
            LATB = (LATB & 0x00FF) | 0x7100;
            break;
        case 'g' | 'G':
            LATB = (LATB & 0x00FF) | 0x7D00;
            break;
        case '.':
            LATB = (LATB & 0x00FF) | 0x8000;
            break;
    
        default:
            break;
    }
}

int main(void){
    unsigned char segment;
    LATDbits.LATD6 = 0;
    LATDbits.LATD5 = 1;
    LATB = LATB & 0x80FF;

    TRISDbits.TRISD6 = 0;
    TRISDbits.TRISD5 = 0;
    TRISB = TRISB & 0x80FF;

    to7seg('c');
    while(1){
        LATDbits.LATD6 = !LATDbits.LATD6;
        LATDbits.LATD5 = !LATDbits.LATD5;

        segment = 'a';
        int i;
        for(i=0; i < 7; i++){
            to7seg(segment++);
            delay(500);
        }
    }
}
