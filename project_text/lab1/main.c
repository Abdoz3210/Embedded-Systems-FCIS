/**
 * @file main.c
 * @author abdosalah
 * @date 2026-03-24
 * @brief Main function
 */
#include <avr/io.h>
#include <util/delay.h>

int main(void){

    DDRB |= (1<<4);

    while(1){
        PORTB |= (1<<4);
        _delay_ms(250);
        PORTB &= ~(1<<4);
        _delay_ms(250);
    }

    // Add your code here and press Ctrl + Shift + B to build

    return 0;
}
