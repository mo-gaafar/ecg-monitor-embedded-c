#include <main.h>
#include <avr/wdt.h>

typedef enum
{
    MS16 = 0b0000,
    MS32 = 0b0001,
    MS64 = 0b0010,
    MS125 = 0b0011,
    MS250 = 0b0100,
    MS500 = 0b0101,
    S1 = 0b0110,
    S2 = 0b0111,
    S4 = 0b1000,
    S8 = 0b1001
} WDT_Timeout_t;

void WDT_Enable();
void WDT_SetTimeout(u16 timeout_ms);
void WDT_Disable();
