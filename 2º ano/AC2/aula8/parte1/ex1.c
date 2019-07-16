#include <detpic32.h>

int baudrate = 115200;

int main(void)
{
    // Configure UART1:
    // 1 - Configure BaudRate Generator
        //BRGH = 0, fator de divisao 16
        //BRGH = 1, fator de divisao 4 
        U1MODEbits.BRGH = 0;
        U1BRG = ((PBCLK + 8 * baudrate) / (16 * baudrate)) - 1;
    
    // 2 – Configure number of data bits, parity and number of stop bits
        // 11 = 9-bit data, no parity
        // 10 = 8-bit data, odd parity
        // 01 = 8-bit data, even parity
        // 00 = 8-bit data, no parity
        U1MODEbits.PDSEL = 00;

        // STEL = 0 -> 1 stop bit
        // STEL = 1 -> 2 stop bits
        U1MODEbits.STSEL = 0;
    
    // 3 – Enable the trasmitter and receiver modules (see register U1STA)
        U1STAbits.UTXEN = 1;
        U1STAbits.URXEN = 1;
    
    // 4 – Enable UART1 (see register U1MODE)
        U1MODEbits.ON = 1;

    return 0;
}
