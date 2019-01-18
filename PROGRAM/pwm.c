void main() {
TRISB=0;
TRISD=255;
pwm1_init(1000);
pwm1_set_duty(100);
PORTB=0;
while(1){
if (PORTD.F0==1)
{
PORTB=0B00000001;
}
else if (PORTD.F1==1)
{
pwm1_start();
PORTB=0B00000010;
}
else
PORTB=0B00000000;
}
}