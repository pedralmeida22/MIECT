#include <detpic32.h>
#include "i2c.h"

int getTemperature(int *temperature){
    int ack;

    // Send start event 
    i2c1_start();

    // Send Address + WR (ADDR_WR); copy return value to "ack" variable  
    ack = i2c1_send(ADDR_WR);

    // Send Command (RTR); add return value to "ack" variable
    ack += i2c1_send(RTR);

    // Send Start event (again)
    i2c1_start();

    // Send Address + RD (ADDR_RD); add return value to "ack" variable
    ack += i2c1_send(ADDR_RD);

    // Test "ack" variable; if "ack" != 0 then an error has occurred;
    //     send the Stop event, print an error message and exit loop
    if(ack != 0) return 1;

    // Receive a value from slave (send NACK as argument); copy
    //     received value to "temperature" variable
    *temperature = i2c1_receive(I2C_NACK);

    // Send Stop event
    i2c1_stop();

    return ack;
}

int main(void){
    int t;
    int err;
    i2c1_init(TC74_CLK_FREQ);
    while(1){
        err = getTemperature(&t);
        if(err != 0){
            i2c1_stop();
            printf("Error: ack != 0\n");
        }
        printf("Temperature: %d\r", t);
        delay(250);
    }
}
