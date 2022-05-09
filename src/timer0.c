#include <main.h>
#include <timer0.h>

static tClock_Selector current_prescalar = NO_CLOCK_SOURCE;

void TMR0_Init_Default(void)
{
    enable_global_interrupt();
    current_prescalar = PRESCALAR_256;
    TMR0_SET_CLOCK_SELECTOR(PRESCALAR_256);
    TMR0_SET_MODE(MODE_UpToOCR0A);
    TMR0_SET_INTERRUPT(INTERRUPT_OVR);
}

void TMR0_Init(tClock_Selector prescalar, tTimer_mode mode, tTimer_Interrupt interrupt)
{
    enable_global_interrupt();
    current_prescalar = prescalar;
    TMR0_SET_CLOCK_SELECTOR(prescalar);
    TMR0_SET_MODE(mode);
    TMR0_SET_INTERRUPT(interrupt);
}

void TMR0_Stop()
{
    TMR0_SET_CLOCK_SELECTOR(NO_CLOCK_SOURCE);
}

void TMR0_Start(void)
{
    TMR0_SET_CLOCK_SELECTOR(current_prescalar);
}
