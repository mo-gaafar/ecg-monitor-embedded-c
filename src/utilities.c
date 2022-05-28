#include "utilities.h"
#include "main.h"

void UTIL_DelayUS(u16 us)
{
    u16 x;
    for (x = 0; x < us; x++)
    {
#if F_CPU == 16000000
        asm volatile(
            "    ldi  r18, 5	\n"
            "1:  dec  r18	\n"
            "    brne 1b	\n"
            "    nop	\n");

#elif F_CPU == 8000000
        asm volatile(
            "    lpm	\n"
            "    lpm	\n"
            "    rjmp 1f	\n"
            "1:	\n");
#else
#error "Unsupported CPU Frequency"
#endif
    }
}

void UTIL_DelayMS(u16 ms)
{
    u16 x;

    for (x = 0; x < ms; x++)
    {
#if F_CPU == 16000000
        asm volatile(
            "    ldi  r18, 21	\n"
            "    ldi  r19, 199	\n"
            "1:  dec  r19	\n"
            "    brne 1b	\n"
            "    dec  r18	\n"
            "    brne 1b	\n");
#elif F_CPU == 8000000
        asm volatile(
            "    ldi  r18, 11	\n"
            "    ldi  r19, 99	\n"
            "1:  dec  r19	\n"
            "    brne 1b	\n"
            "    dec  r18	\n"
            "    brne 1b	\n");
#else
#error "Unsupported CPU Frequency"
#endif
    }
}
