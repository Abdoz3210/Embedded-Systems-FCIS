/**
 * @file main.c
 * @author abdosalah
 * @date 2026-04-14
 * @brief Main function
 * required delay = 70 microsec 
 * frequency = 16 MHz 
 * cycral time = 1/ fequency 
               = 1/ 16 
               = 0.0625 microsec 
* delay = #ticks-req delay- / cycial time 
        = 70 / 0.0635
        =1120 
* delay > 256 -> #ticks in time 0 
* need prescalar 8, 16,64 ,128
* 1120 / 8 = 140 
* TCNT0 = 140 ->  0x74 
 */

 #include <avr/io.h>
 


int main(void){
    DDRB |= (1 << DDB0); /* PB0 output */
    volatile unsigned int x = 0;
    while(1){
        TCNT0 = 0x74; /* delay: count from 0x74 to overflow */
        TCCR0A = 0;
        TCCR0B |= (1 << CS01); /* prescaler /8 (CS01=1, CS00=CS02=0) */
        while ((TIFR0 & (1 << TOV0)) == 0) {
            x++;
        }
        TCCR0B = 0;
        TIFR0 = (1 << TOV0); /* clear TOV0 */
        PORTB ^= (1 << PORTB0);
    }
    return 0;
}
