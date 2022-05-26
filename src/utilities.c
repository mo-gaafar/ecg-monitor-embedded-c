#include "utilities.h"
#include "main.h"

void UTIL_DelayMS(u16 delay_ms)
{
    u16 x;

    for (x = 0; x < delay_ms; x++)
    {
#if F_CPU == 16000000
        asm volatile(
            "    ldi  r18, 21	\n"
            "    ldi  r19, 199	\n"
            "1:  dec  r19	\n"
            "    brne 1b	\n"
            "    dec  r18	\n"
            "    brne 1b	\n");
#else
        throw("Unsupported CPU frequency");
#endif
    }
}
