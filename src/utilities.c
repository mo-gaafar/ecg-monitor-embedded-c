#include "utilities.h"
#include "main.h"
/*
 * Function: Delay_MS
 * ----------------------------
 *  This function is used to delay the program for a certain amount of time
 *
 *
 *  Parameters:
 *      u32 delay - The amount of time to delay the program for in milliseconds.
 *
 *  Returns:
 *      void
 */
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
