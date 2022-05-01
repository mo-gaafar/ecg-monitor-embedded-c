#ifndef __TMR_H__
#define __TMR_H__

#include <main.h>

#define TMR0_SET_CLOCK_SELECTOR(x) 	SET_REGISTER_PIN(TCCR0B, CS00, (x&0x1));\
                                    SET_REGISTER_PIN(TCCR0B, CS01, ((x&0x2)>>CS01));\
                                    SET_REGISTER_PIN(TCCR0B, CS02, ((x&0x4)>>CS02));

// #define TMR0_SET_CLOCK_SELECTOR(x) 	TCCR0B |= (x&0x1) | (x&0x2) |(x&0x4)
// TCCR0B |= ((x&0x4)>>2)<<WGM02;
#define TMR0_SET_MODE(x) 	SET_REGISTER_PIN(TCCR0B, WGM02, ((x&0x8)>>WGM02));\
                            SET_REGISTER_PIN(TCCR0A, WGM01, ((x&0x2)>>WGM01));\
                            SET_REGISTER_PIN(TCCR0A, WGM00, (x&0x1));


// #define TMR0_SET_INTERRUPT(x) 	TIMSK0 |= (x&0x1) | (x&0x2) |(x&0x4)
#define TMR0_SET_INTERRUPT(x) 	SET_REGISTER_PIN(TIMSK0, TOIE0, (x&0x1));\
                                SET_REGISTER_PIN(TIMSK0, OCIE0A, ((x&0x2)>>OCIE0A));\
                                SET_REGISTER_PIN(TIMSK0, OCIE0B, ((x&0x4)>>OCIE0B));
// TIMSK0 |= (x&0x1) | (x&0x2) |(x&0x4)
#define TMR0_READ_COUNTER()			(TCNT0)

typedef enum {
    NO_CLOCK_SOURCE = 0,
    NO_PRESCALER = 1,
    PRESCALAR_8 = 2,
    PRESCALAR_64 = 3,
    PRESCALAR_256 = 4,
    PRESCALAR_1024 = 5,
}tClock_Selector;

typedef enum {
    MODE_UpToFF = 0,
    MODE_UpToOCR0A = 2,
    MODE_UpToFF_PWM = 3,
    MODE_UpToOCR0A_PWM = 7,
}tTimer_mode;

typedef enum {
    INTERRUPT_OVR = TOIE0,
    INTERRUPT_COMPA = OCIE0A,
    INTERRUPT_OVR_and_COMPA = 3,
    INTERRUPT_COMPB = OCIE0B,
}tTimer_Interrupt;

void TMR0_Init(void);
void TMR0_Init(tClock_Selector, tTimer_mode, tTimer_Interrupt);
void TMR0_Stop();
void TMR0_Start(void);

#endif // __TMR_H__
