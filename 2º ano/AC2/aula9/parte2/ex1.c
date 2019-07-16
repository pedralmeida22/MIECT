#include <detpic32.h>

int baudrate;

#define DisableUart1RxInterrupt() IEC0bits.U1RXIE = 0
#define EnableUart1RxInterrupt() IEC0bits.U1RXIE = 1
#define DisableUart1TxInterrupt() IEC0bits.U1TXIE = 0
#define EnableUart1TxInterrupt() IEC0bits.U1TXIE = 1

#define BUF_SIZE 8
#define INDEX_MASK 7

#define TRUE 1
#define FALSE 0

typedef struct {
    unsigned char data[BUF_SIZE];
    unsigned int head;
    unsigned int tail;
    unsigned int count;
} circularBuffer;

volatile circularBuffer txb;    // Transmission buffer
volatile circularBuffer rxb;    // Reception buffer

void comDrv_flushRx(void){
    // Initialize variables of the reception buffer
    rxb.count = 0;
    rxb.head = 0;
    rxb.tail = 0;
}

void comDrv_flushTx(void){
    // Initialize variables of the transmission buffer
    txb.count = 0;
    txb.head = 0;
    txb.tail = 0;
}

void comDrv_putc(char ch){
    while(txb.count == BUF_SIZE);   // Wait while buffer is full
    txb.data[txb.tail] = ch;        // Copy character to the transmission buffer at position tail
    txb.tail = (txb.tail + 1) & INDEX_MASK; // Increment tail index (mod. BUF_SIZE)
    DisableUart1TxInterrupt();  // Begin of critical section
    if(txb.count == BUF_SIZE){
        txb.count = 0;
    }
    else{
        txb.count += 1;           // Increment count variable
    }
    EnableUart1TxInterrupt();    // End of critical section
}

void comDrv_puts(char *s){
    while(*s != '\0'){
        comDrv_putc(*s);
        s++;
    }
}

char comDrv_getc(char *pchar){
    // Test "count" variable (reception buffer) and return FALSE if it is zero
    if(rxb.count == 0) return FALSE;
    DisableUart1RxInterrupt();    // Begin of critical section
    // Copy character pointed by "head" to *pchar
    *pchar = rxb.data[rxb.head];
    rxb.count--;    // Decrement "count" variable
    rxb.head = (rxb.head + 1) & INDEX_MASK;   // Increment "head" variable (mod BUF_SIZE)
    EnableUart1RxInterrupt(); // End of critical section

    if(*pchar == 'S'){
        comDrv_puts("\n123456789123456789123456789123\n\n");
    }
    return TRUE; 
}

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
    
    // 4 – Enable UART1 
        U1MODEbits.ON = 1;
        
}
void configInterrupts(){    //UART1
    IPC6bits.U1IP = 2;      // priority of interrupts
    IFS0bits.U1RXIF = 0;    // clear interrupt flag (RX)
    IFS0bits.U1TXIF = 0;    // clear interrupt flag (TX)
    IEC0bits.U1RXIE = 1;    // enable UART interrupts (RX)
    IEC0bits.U1TXIE = 1;    // enable UART interrupts (TX)
}

void _int_(24) isr_uart1(void) {
    // Rotina de Transmissao
    if(IFS0bits.U1TXIF){
        if(txb.count > 0){
            while(U1STAbits.UTXBF == 1);
            U1TXREG = txb.data[txb.head];  // Copy character pointed by "head" to U1TXREG register   
            txb.head = (txb.head + 1) & INDEX_MASK;     // Increment "head" variable (mod BUF_SIZE)
            txb.count--;    // Decrement "count" variable
        }

        if(txb.count == 0){
            DisableUart1TxInterrupt();
        }
            
        // Clear UART1 rx interrupt flag
        IFS0bits.U1TXIF = 0;
    }
    // Rotina de Recepcao
    if(IFS0bits.U1RXIF){    // If U1RXIF is set
        // Read character from UART and write it to the "tail" position of the reception buffer
        rxb.data[rxb.tail] = U1RXREG;
        rxb.tail = (rxb.tail + 1) & INDEX_MASK;     // Increment "tail" variable (mod BUF_SIZE)
        // If reception buffer is not full (e.g. count < BUF_SIZE) then
        if(rxb.count < BUF_SIZE){
            rxb.count++;    // Increment "count" variable
        }
        else{
            rxb.head = (rxb.head + 1) & INDEX_MASK;     // Increment "head" variable (discard oldest character)
        }
        // Reset UART1 RX interrupt flag
        IFS0bits.U1RXIF = 0;
    }
}

int main(void){
    configUART(115200, 'N', 1);
    configInterrupts();
    comDrv_flushRx();
    comDrv_flushTx();
    EnableInterrupts();
    comDrv_puts("PIC32 UART Device-driver\n");
    char c;
    while(1){
        if(comDrv_getc(&c)){    // Read character from reception buffer
            comDrv_putc(c);     // Send character to the transmission buffer
        }
    }
    return 0;
}
