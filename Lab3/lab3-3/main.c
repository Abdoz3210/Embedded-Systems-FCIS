/**
 * @file main.c
 * @author abdosalah
 * @date 2026-04-16
 * @brief Main function
 ***** Write a code using one of the output ports 
 ***** connected to the 7 pins of the 7segment 
 ***** display to increment the 7seg's value every 
 ***** fixed period (Maximum delay can be obtained from Timer0 
 use prescaler 5 1024 
 req delay = x
 freq = 16 MHz 
 c.t = 1/freq 
     = 1/16 
     = 0.0625 microsec
 #tecks = req delay /(c.t * prescaler)
 256 = x / (0.0635 * 1024)
 x = 256 * 0.0625 * 2024 
   = 16384 microsec 
   = 16.384 milliesec

   TCNT0 = 0
   TCCR0A = -> TIMER 0 NORMAL MODE 
   TCCR0B =  PRESCALER 1024 -> 101
 */
#include <avr/io.h>
#include <util/delay.h>

int main(){

    // Add your code here and press Ctrl + Shift + B to build
    char arr[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07 ,0x7F, 0x6F};
    DDRD |= 0xFF;
    
    int i = 0;
    while(1){
        TCNT0= 0x00;
        TCCR0A = 0x00;
        TCCR0B = 0x05;
        if((TIFR0 && (1<< TOV0))== 0);
        PORTD = arr[i];
        TCCR0B = 0x00;
        TIFR0 = (1<<TOV0);
        _delay_ms(16.384);
        i++;
        i%=10;
    }
    return 0;
}
