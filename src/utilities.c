#include "utilities.h"
#include "main.h"

void UTIL_DelayMS(u16 delay_ms)
{
    u16 x;
    unsigned int y;

    for (x = 0; x < delay_ms; x++)
    {
        for (y = 0; y < 120; y++)
        {
        }
    }
}
