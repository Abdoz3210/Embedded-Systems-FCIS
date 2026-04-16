/**
 * @file main.c
 * @author abdosalah
 * @date 2026-04-16
 * @brief Main function
 **** Write AVR C program to toggle bit0 in portB every 70 µs and, 
 **** while waiting for timer to fire, 
 **** increment a variable x. 
 **** Use timer 0 in CTC mode.
 -----------------------------
 req delay = 70 microsec
 freq = 16 MHz
 cyclar time = 1/freq 
             = 1/16
             = 0.0625
 #ticks = req delay /(c.time * prescaler )
        = 70 / (0.0635 * 8 )
        = 140
 while we'll work ctc mode 
 delay -> OCR0A = 140-1 
                = 139
                = 0X8D 
 */
 #include <avr/io.h>

int main(){
    DDRB |= (1<< DDB0);
    int x = 0;
    while (1){
     
        TCNT0 = 0x00;//0B
        OCR0A = 0x8D;
        TCCR0A= 0x02;//0b0000 0010 CTC MODE 
        TCCR0B= 0x02;//0b0000 0010 PRESCALER BY 8 
        while((TIFR0 && (1<<OCF0A))==0){
            x++;
        } 
        PORTB ^= (1<<0);
        TCCR0B =0;
        TIFR0 =(1<<OCF0A);
    }
   
    return 0;
}
