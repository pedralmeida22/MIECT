#include <detpic32.h>

void setPWM(unsigned int dutyCycle){
    // duty_cycle must be in the range [0, 100]
    dutyCycle %= 100;
    OC1RS = ((49999 + 1) * dutyCycle)/100;          // Ton constant OCxRS = (PR3+1 * duty_cycle)/100
}
