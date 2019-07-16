#include <detpic32.h>

volatile unsigned char value;
volatile unsigned char value2displays;

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
    U1BRG = (PBCLK + 8 * 38400) / (16 * 38400) - 1;
    U1MODEbits.PDSEL = 10;
    U1MODEbits.STSEL = 0;
    U1STAbits.URXEN = 1;
    U1STAbits.UTXEN = 1;
    U1MODEbits.ON = 1; 
}

void configTimer4(){
    T4CONbits.TCKPS = 3;
    PR4 = 17240;
    TMR4 = 0;
    T4CONbits.TON = 1;
}

void configTimer2(){
    T2CONbits.TCKPS = 4;
    PR2 = 12499;
    TMR2 = 0;
    T2CONbits.TON = 1;
}

void configADC(){
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 4-1;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;
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
    IFS0bits.U1RXIF = 0;
    IEC0bits.U1RXIE = 1;

    IPC4bits.T4IP = 2;
    IEC0bits.T4IE = 1;
    IFS0bits.T4IF = 0;

    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1;
    IFS0bits.T2IF = 0;

    IPC6bits.AD1IP = 2;
    IFS1bits.AD1IF = 0;
    IEC1bits.AD1IE = 1;
}

void putc(char c){
    U1TXREG = c;
}

void _int_(27) isr_adc(void) {
    //int *p = (int *) (&ADC1BUF0);
    //int i;
    int sum = ADC1BUF0 + ADC1BUF1 + ADC1BUF2 + ADC1BUF3;
   // for(i = 0; i < 4; i++){
    //    sum += p[i*4];
    //}
    
    int average = sum/4;
    value = (average*99)/1023;
    putc('0' + value);

    IFS1bits.AD1IF = 0; // Reset AD1IF flag
}

void _int_(16) isr_timer4(void){
    send2displays(value2displays);
    IFS0bits.T4IF = 0;
}

void _int_(8) isr_timer2(void){
    
    IFS0bits.T2IF = 0;
}

void _int_(24) isr_uart(){
    char in = U1RXREG;
    switch(in){
        case 'A': 
            AD1CON1bits.ASAM = 1;
            break;
        case 'D':
            value2displays = value;
            break;
        case 'E':
            putc('0' + (value / 10));
            putc('0' + (value % 10));
            putc('\n');
            break;
        case 'P':
            setPWM(value);
            break;
        default:
            break;
    }
    IFS0bits.U1RXIF = 0;
}

int main(void){
    configUart();
    configTimer4();
    configTimer2();
    configADC();
    configOC();
    configInterrupts();
    EnableInterrupts();

    LATB = LATB & 0x00FF;
    LATDbits.LATD5 = 0;
    LATDbits.LATD6 = 1;

    TRISB = TRISB & 0x00FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    while(1);

    return 0;
}
