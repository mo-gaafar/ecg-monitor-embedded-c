#include "timer0.h"
#include "push_button.h"
#include "count.h"
#include "ssd.h"
#include <pic16f877a.h>

#define TMR0_TICK_MS (5)

#define TMR0_SET_PRE_SCALER(x) 		PSA = 0;\
									PS0 = (x&0x1);\
									PS1 = (x&0x2)>>1;\
									PS2 = (x&0x4)>>2;

#define TMR0_CHECK_FLAG()			(TMR0IF)
#define TMR0_CLEAR_FLAG()			(TMR0IF = 0)


#define TMR0_SELECT_CLOCK_SOURCE(y)	(T0CS = y)

#define TMR0_SELECT_EDGE(z)			(T0SE = z)

#define TMR0_READ_COUNTER()			(TMR0)
#define TMR0_SET_TIME_MS(t)			(TMR0 = 256 - 8*t)

#define TMR0_SET_INT_STATE(x)		(TMR0IE = x)

#define TMR0_SET_STATE(x)			(T0CS = x)



void TMR0_Init(void)
{
    TMR0_SET_STATE(1);          // TMR0 is off
    TMR0_SET_PRE_SCALER(7);     // N = 256

}

void TMR0_Start(void)
{

    TMR0_SET_INT_STATE(1);
    GIE = 1;
    TMR0_SELECT_CLOCK_SOURCE(0); // Internal oscillator
    TMR0_SET_STATE(0);          // TMR0 is on
}

void TMR0_Update(void) __interrupt 0 // @ 5 ms
{
    static unsigned char counter = 0;

    counter = counter + TMR0_TICK_MS;

    /* Tasks */
    if (counter == 20)
    {
        PB_Update(); // @ 20 ms
        CNT_Update();// @ 20 ms
        counter = 0;
    }

    SSD_Update();// @ 5 ms

    TMR0_CLEAR_FLAG();
    TMR0_SET_TIME_MS(TMR0_TICK_MS);

    return;
}


