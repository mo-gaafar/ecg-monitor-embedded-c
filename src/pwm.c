#include <pwm.h>

#define SERVO_PRT 'D'
#define SERVO_PIN 3
#define SERVO_TIMER

// Timer 2 Phase correct pwm, main frequency 50hz
void SERVO_Init(void)
{

    DIO_SetPinDirection(SERVO_PRT, SERVO_PIN, OUTPUT);
    _delay_ms(1000);
    // TODO: initialize timer2 in phase correct PWM mode
    // TCCR2B |= 0b01
    TCCR2A |= (1 << 0) | (1 << 5); // compare output mode on at B (pin 3)
    TCCR2B |= 0x0F;                // set first 3 bits prescaler = 1024 and WGM22 is set
    OCR2A = 156;                   // top of phase correct pwm
    // OCR2B is to be set depending on the desired servo direction
    _delay_ms(10);
}

/*
0 - STOP
1 - LEFT
2 - RIGHT
*/
void SERVO_On(unsigned char cmd)
{
    TCCR2B |= 0x0F; // set first 3 bits prescaler = 1024 and WGM22 is set
    switch (cmd)
    {
    case 0:
        OCR2B = (unsigned char)12;
        break;

    case 1:
        OCR2B = (unsigned char)8;
        break;

    case 2:
        OCR2B = (unsigned char)16;
        break;

    default:
        break;
    }
}

// cuts off the timer's clock
void SERVO_Off(void)
{
    TCCR2B &= ~((1 << 0) | (1 << 1) | (1 << 2)); // clear bits 0:2
}