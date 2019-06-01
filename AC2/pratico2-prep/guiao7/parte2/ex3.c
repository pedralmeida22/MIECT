#include <detpic32.h>

void setPWM(unsigned int dutyCycle){
    OC1RS = (12500 * dutyCycle) / 100;
}

int main(void){     // Freq: 100 Hz; Duty-cycle: 25%
    // Config T3 -> 100 Hz
    T3CONbits.TCKPS = 4;    // 20000000 / 16 = 1250000
    PR3 = 12499;            // 1250000 / 100 = 12500
    TMR3 = 0;
    T3CONbits.TON = 1;

    OC1CONbits.OCM = 6;
    OC1CONbits.OCTSEL = 1;  // sel T3
    OC1RS = (12500 * 25) / 100;
    OC1CONbits.ON = 1;

    //setPWM(10);
    //setPWM(65);
    setPWM(80);
    while(1);

    return 0;
}
