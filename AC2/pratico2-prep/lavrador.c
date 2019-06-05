#include <detpic32.h>

volatile unsigned char dutyCycle = 50;

void delay(int ms){
    for(; ms > 0; ms--){
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    }
}

void send2displays(unsigned char v){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07,
             0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    static char displayFlag = 0;

    int digit_low = v % 10;
    int digit_high = v / 10;

    if(!displayFlag){   // if "displayFlag" is 0 then send digit_low to display_low

        LATB = (LATB & 0x00FF) | ((int) display7Scodes[(digit_low)] << 8);

    }
    else{   // else send digit_high to didplay_high
       
        LATB = (LATB & 0x80FF) | ((int) display7Scodes[digit_high] << 8);
        LATBbits.LATB15 = 1;
    }
    // toggle "displayFlag" variable
    displayFlag = !displayFlag;
    LATDbits.LATD5 = !LATDbits.LATD5;
    LATDbits.LATD6 = !LATDbits.LATD6;
}

void configUart(){
    U1MODEbits.BRGH = 0;
    U1BRG = ((PBCLK + 8 * 19200) / (16 * 19200)) - 1;
    U1MODEbits.PDSEL = 10;
    U1MODEbits.STSEL = 1;
    U1STAbits.URXEN = 1;
    U1STAbits.UTXEN = 1;
    U1MODEbits.ON = 1;
}

void configT2(){
    T2CONbits.TCKPS = 3;
    PR2 = 24999;
    TMR2 = 0;
    T2CONbits.TON = 1;
}

void configOC(){
    OC1CONbits.OCM = 6;
    OC1CONbits.OCTSEL = 0;
    OC1RS = ((PR2 + 1) * 50) / 100;
    OC1CONbits.ON = 1;
}

void setPWM(unsigned char duty){
    if(duty > 100) return;
    OC1RS = ((PR2 + 1) * duty) / 100;
}

void configInterrupts(){
    IPC6bits.U1IP = 2;
    IEC0bits.U1RXIE = 1;
    IFS0bits.U1RXIF = 0;

    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1;
    IFS0bits.T2IF = 0;
}

void putc(char c){
    while(U1STAbits.UTXBF == 1);
    U1TXREG = c;
}

void puts(char *str){
    while(*str != '\0'){
        putc(*str);
        str++;
    }
}

void _int_(24) isr_uart1(){
    char in = U1RXREG;

    if(in == '+'){
        if(dutyCycle < 95) dutyCycle += 5;
        else puts("Impossivel aumentar mais o dutyCyle\n");
    }
    if(in == '-'){
        if(dutyCycle > 5) dutyCycle -= 5;
        else puts("Impossivel diminuir mais o dutyCyle\n");
    }

    setPWM(dutyCycle);
    IFS0bits.U1RXIF = 0;
}

void _int_(8) isr_timer2(){
    send2displays(dutyCycle);
    IFS0bits.T2IF = 0;
}

int main(void){
    configUart();
    configT2();
    configOC();
    configInterrupts();

    EnableInterrupts();

    LATB = LATB & 0x80FF;
    LATDbits.LATD5 = 1;
    LATDbits.LATD6 = 0;

    TRISB = TRISB & 0x80FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    while(1){
        puts("O valor atual do duty-cycle e ");
        putc('0' + dutyCycle/10);
        putc('0' + dutyCycle%10);
        putc('%\n');
        delay(1000);
    }

    return 0;
}
