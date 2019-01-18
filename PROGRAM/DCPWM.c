#include <PWM.h>

unsigned short i;
void main() {
    PORTC = 00; // Set PORTC to $FF
    TRISC = 0; // PORTC is output
    PWM1_Init(5000); // Initialize PWM module

    PWM1_Start(); // Start PWM

    while (1) { // Endless loop
        for(i=0;i<=255;i++){
            PWM1_Set_Duty(i);
            delay_ms(10);
        }
    }
}