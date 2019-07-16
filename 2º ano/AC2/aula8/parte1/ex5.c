#include <detpic32.h>

void delay(int ms){
   for(; ms > 0; ms--)
    {
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    } 
}

int baudrate;

void configUART(unsigned int baud, char parity, unsigned int stopbits){
    // Configure UART1:
    // 1 - Configure BaudRate Generator
        //BRGH = 0, fator de divisao 16
        U1MODEbits.BRGH = 0;
        if(baud >= 600 || baud <= 115200){
            baudrate = baud;
        }else{
            baudrate = 115200;
        }
        U1BRG = ((PBCLK + 8 * baudrate) / (16 * baudrate)) - 1;
    
    // 2 – Configure number of data bits, parity and number of stop bits
        // 11 = 9-bit data, no parity
        // 10 = 8-bit data, odd parity
        // 01 = 8-bit data, even parity
        // 00 = 8-bit data, no parity
        if(parity != 'N' && parity != 'E' && parity != 'O'){
            U1MODEbits.PDSEL = 00;
        }else if(parity == 'N'){
            U1MODEbits.PDSEL = 00;
        }else if(parity == 'E'){
            U1MODEbits.PDSEL = 01;
        }else if(parity == 'O'){
            U1MODEbits.PDSEL = 10;
        }

        // STEL = 0 -> 1 stop bit
        // STEL = 1 -> 2 stop bits
        if(stopbits == 1){
            U1MODEbits.STSEL = 0;
        }
        else if(stopbits == 2){
            U1MODEbits.STSEL = 1;
        }
        else{
            U1MODEbits.STSEL = 0;
        }
        
    // 3 – Enable the trasmitter and receiver modules (see register U1STA)
        U1STAbits.UTXEN = 1;
        U1STAbits.URXEN = 1;
    
    // 4 – Enable UART1 (see register U1MODE)
        U1MODEbits.ON = 1;
}

void putc(char byte2send){
    while(U1STAbits.UTXBF == 1);
    U1TXREG = byte2send;
}

void puts(char *str){
    while(*str != '\0'){
        putc(*str);
        str++;
    }
}

int main(void){
    //configUART(600,'N',1);
    //configUART(1200,'O',2);
    configUART(9600,'E',1);
    //configUART(19200,'N',2);
    //configUART(115200,'E',1);

    while(1){
        puts("String de teste\n");
        delay(1000);
    }

    return 0;
}
