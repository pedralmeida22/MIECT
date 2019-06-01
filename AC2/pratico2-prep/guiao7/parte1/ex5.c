#include <detpic32.h>

volatile unsigned char voltage = 0;

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

void _int_(27) isr_adc(void){
    // Read conversion result (ADC1BUF0 value)
    int *p = (int *) (&ADC1BUF0);

    // Calculate buffer average (8 samples)
    int sum = 0;
    int i;
    for(i = 0; i < 8; i++){
        sum += p[i*4];
    }

    int average = sum / 4; 
    
    // Calculate voltage amplitude
    voltage = (average*33+511)/1023;

    // Convert voltage amplitude to decimal. Assign it to "voltage"
    printf("%d\r", voltage);
    
    IFS1bits.AD1IF = 0; // Reset AD1IF flag
}

void configAD(){
    //configure o porto RB4 como entrada analógica e o módulo A/D
    TRISBbits.TRISB4 = 1;       // RBx digital output disconnected
    AD1PCFGbits.PCFG4 = 0;      // RBx configured as analog input (AN4)
    AD1CON1bits.SSRC = 7;       // Conversion trigger selection bits: in this
                                // mode an internal counter ends sampling and
                                // starts conversion
    AD1CON1bits.CLRASAM = 1;    // Stop conversions when the 1st A/D converter
                                // interrupt is generated. At the same time,
                                // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16;      // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 4-1;     // Interrupt is generated after XX samples
                                // (replace XX by the desired number of
                                // consecutive samples)
    AD1CHSbits.CH0SA = 4;       // replace x by the desired input
                                // analog channel (0 to 15)
    AD1CON1bits.ON = 1;         // This must the last command of the A/D
                                // configuration sequence
}

void configInterrupts(){
    // Configure interrupt system
    IPC6bits.AD1IP = 2; // configure priority of A/D interrupts 

    IFS1bits.AD1IF = 0; // clear A/D interrupt flag

    IEC1bits.AD1IE = 1; // enable A/D interrupts 

    // Timers
    IPC1bits.T1IP = 2;
    IEC0bits.T1IE = 1;
    IFS0bits.T1IF = 0;

    IPC3bits.T3IP = 2;
    IEC0bits.T3IE = 1;
    IFS0bits.T3IF = 0;

}

void configTimers(){
    // T3 -> 100 Hz
    T1CONbits.TCKPS = 4;    // 20 MHz / 16 = 1250000
    PR3 = 12499;            // 1250000 / 100 = 12500
    TMR3 = 0;
    T3CONbits.TON = 1;

    // T1 ->  4 Hz
    T1CONbits.TCKPS = 4;    // 20 MHz / 32 = 1250000
    PR1 = 312499;            // 1250000 / 4 = 312499
    TMR1 = 0;
    T1CONbits.TON = 1;
}

void _int_(4) isr_T1(void){
    AD1CON1bits.ASAM = 1;
    IFS0bits.T1IF = 0;
}

void _int_(12) isr_T3(void){
    send2displays(voltage);
    IFS0bits.T3IF = 0;
}

int main(void){
    // Config all (digital I/O, analog input, A/D module)
    LATDbits.LATD5 = 0;
    LATDbits.LATD6 = 1;

    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    TRISB = TRISB & 0x00FF;

    configAD();
    configTimers();
    configInterrupts();

    EnableInterrupts();
    while(1);
    return 0;
}
