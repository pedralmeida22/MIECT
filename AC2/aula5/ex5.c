#include <detpic32.h>

int main (void){
    // configure all (digital I/O, analog input, A/D module)
    
    int i = 0;
    while(1){
        if(i++ % 25 == 0){ // 0, 250ms, 500ms, ...
            // Convert analog input (4 samples)
            // Calculate buffer average
            // Calculate voltage amplitude
            // Convert voltage amplitude to decimal
        }
        // Send voltage value to displays
        // Wait 10 ms (using the core timer)
    }
    return 0;
}