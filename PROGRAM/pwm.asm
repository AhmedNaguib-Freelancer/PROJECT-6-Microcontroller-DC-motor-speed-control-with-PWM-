
_main:

;pwm.c,1 :: 		void main() {
;pwm.c,2 :: 		TRISB=0;
	CLRF       TRISB+0
;pwm.c,3 :: 		TRISD=255;
	MOVLW      255
	MOVWF      TRISD+0
;pwm.c,4 :: 		pwm1_init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pwm.c,5 :: 		pwm1_set_duty(100);
	MOVLW      100
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;pwm.c,6 :: 		PORTB=0;
	CLRF       PORTB+0
;pwm.c,7 :: 		while(1){
L_main0:
;pwm.c,8 :: 		if (PORTD.F0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;pwm.c,9 :: 		PORTB=0B00000001;
	MOVLW      1
	MOVWF      PORTB+0
	GOTO       L_main3
L_main2:
;pwm.c,10 :: 		else if (PORTD.F1==1)
	BTFSS      PORTD+0, 1
	GOTO       L_main4
;pwm.c,12 :: 		pwm1_start();
	CALL       _PWM1_Start+0
;pwm.c,13 :: 		PORTB=0B00000010;
	MOVLW      2
	MOVWF      PORTB+0
;pwm.c,14 :: 		}
	GOTO       L_main5
L_main4:
;pwm.c,16 :: 		PORTB=0B00000000;
	CLRF       PORTB+0
L_main5:
L_main3:
;pwm.c,17 :: 		}
	GOTO       L_main0
;pwm.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
