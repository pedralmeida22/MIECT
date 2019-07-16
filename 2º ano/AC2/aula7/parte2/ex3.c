#include <detpic32.h>

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

    // Configure interrupt system
    IPC6bits.AD1IP = 2; // configure priority of A/D interrupts 

    IFS1bits.AD1IF = 0; // clear A/D interrupt flag

    IEC1bits.AD1IE = 1; // enable A/D interrupts
}

void configTimer(){
    // Configure Timer T3 (100 Hz with interrupts disabled)
    T3CONbits.TCKPS = 2;    // 1:4 prescaler (fout_presc = 5 MHz)
    PR3 = 49999;            // Fout = 100 Hz
    TMR3 = 0;               // reset timer T3 count register
    T3CONbits.TON = 1;      // Enable timer T3

    // Configure Timer T3 with interrupts enabled
    /*
    IPC3bits.T3IP = 2;  // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1;  // Enable timer T3 interrupts
    IFS0bits.T3IF = 0;  // Reset timer T3 interrupt flag
    */

}

void configOC(){
    OC1CONbits.OCM = 6;     // PWM mode on OCx; fault pin disabled
    OC1CONbits.OCTSEL = 1;  // Use timer T3 as the time base PWM generation
    OC1RS = 12500;          // Ton constant OCxRS = (PR3+1 * duty_cycle)/100
    OC1CONbits.ON = 1;      // Enable OC1 module
}

void setPWM(unsigned int dutyCycle){
    // duty_cycle must be in the range [0, 100]
    OC1RS = ((49999 + 1) * dutyCycle)/100;  // Ton constant OCxRS = (PR3+1 * duty_cycle)/100
}

int main(void){

    configAD();
    configTimer();
    configOC();

    //setPWM(10);
    //setPWM(65);
    setPWM(80);

    while(1);

    return 0;
}