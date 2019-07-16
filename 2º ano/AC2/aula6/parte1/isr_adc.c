#include <detpic32.h>

// Interrupt Handler
void _int_(27) isr_adc(void) // Replace VECTOR by the A/D vector        Vector = 27
{                               // number - see "PIC32 family data
                                // sheet" (pages 74-76)
    // Print ADC1BUF0 value // Hexadecimal (3 digits format)
    printInt(ADC1BUF0, 16 | 3 << 16);
    printf("\n");
    // Start A/D conversion
    AD1CON1bits.ASAM = 1;

    IFS1bits.AD1IF = 0; // Reset AD1IF flag
}