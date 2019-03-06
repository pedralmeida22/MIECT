#include <detpic32.h>

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
            LATB = (LATB & 0x00FF) | 0x3F00;
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
    TRISB = TRISB & 0x00FF;     // RB8 a RB15 -> output
    TRISD = TRISD & 0xFF9F;     // RD5 e RD6 -> output

    LATDbits.LATD5 = 1;       // display low
    LATDbits.LATD6 = 0;

    while(1){
        char c = getChar();
        printf("%c\n", c);
        to7seg(c);
    }
}