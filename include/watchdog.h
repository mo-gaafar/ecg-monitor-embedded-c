#include <main.h>
#include <avr/wdt.h>

typedef enum
{
    16ms = 0b0000,
    32ms = 0b0001,
    64ms = 0b0010,
    125ms = 0b0011,
    250ms = 0b0100,
    500ms = 0b0101,
    1s = 0b0110,
    2s = 0b0111,
    4s = 0b1000,
    8s = 0b1001
} WDT_Timeout_t;

    void
    WDT_Enable();
void WDT_SetTimeout(u16 timeout_ms);
void WDT_Disable();
