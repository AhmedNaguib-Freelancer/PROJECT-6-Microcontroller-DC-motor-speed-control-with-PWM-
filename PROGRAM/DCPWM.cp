#line 1 "C:/Users/only try/Desktop/PROJECT 6 Microcontroller ( DC motor speed control with PWM)/PROGRAM/DCPWM.c"


unsigned short i;
void main() {
 PORTC = 00;
 TRISC = 0;
 PWM1_Init(5000);

 PWM1_Start();

 while (1) {
 for(i=0;i<=255;i++){
 PWM1_Set_Duty(i);
 delay_ms(10);
 }
 }
}
