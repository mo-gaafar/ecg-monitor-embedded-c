// #include "timer0.h"
// #include "push_button.h"
// #include "count.h"
// #include "ssd.h"
// #include <pic16f877a.h>

// #define TMR0_TICK_MS (5)

// #define TMR0_CHECK_FLAG()			(TMR0IF)
// #define TMR0_CLEAR_FLAG()			(TMR0IF = 0)

// #define TMR0_SELECT_CLOCK_SOURCE(y)	(T0CS = y)

// #define TMR0_SELECT_EDGE(z)			(T0SE = z)

// #define TMR0_SET_TIME_MS(t)			(TMR0 = 256 - 8*t)

// #define TMR0_SET_INT_STATE(x)		(TMR0IE = x)

// #define TMR0_SET_STATE(x)			(T0CS = x)

#include <main.h>
#include <timer0.h>

void TMR0_Init(void)
{
    enable_global_interrupt();
    TMR0_SET_CLOCK_SELECTOR(PRESCALAR_256);
    TMR0_SET_MODE(MODE_UpToOCR0A);
    TMR0_SET_INTERRUPT(INTERRUPT_OVR);
}

void TMR0_Init(tClock_Selector prescalar, tTimer_mode mode, tTimer_Interrupt interrupt)
{
    enable_global_interrupt();
    TMR0_SET_CLOCK_SELECTOR(prescalar);
    TMR0_SET_MODE(mode);
    TMR0_SET_INTERRUPT(interrupt);
}

void TMR0_Stop()
{
    TMR0_SET_CLOCK_SELECTOR(NO_CLOCK_SOURCE);
}

// void TMR0_Start(void)
// {

//     TMR0_SET_INT_STATE(1);
//     GIE = 1;
//     TMR0_SELECT_CLOCK_SOURCE(0); // Internal oscillator
//     TMR0_SET_STATE(0);          // TMR0 is on
// }

// void TMR0_Update(void) __interrupt 0 // @ 5 ms
// {
//     static unsigned char counter = 0;

//     counter = counter + TMR0_TICK_MS;

//     /* Tasks */
//     if (counter == 20)
//     {
//         PB_Update(); // @ 20 ms
//         CNT_Update();// @ 20 ms
//         counter = 0;
//     }

//     SSD_Update();// @ 5 ms

//     TMR0_CLEAR_FLAG();
//     TMR0_SET_TIME_MS(TMR0_TICK_MS);

//     return;
// }
