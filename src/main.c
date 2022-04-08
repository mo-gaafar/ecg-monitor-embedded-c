// #include "Push_Button.h"
#include "Count.h"
#include "SSD.h"
#include <util/delay.h>
int main(void)
{
    /* Initialization */
    // PB_Init(PB_PLUS, PB_RELEASED);
    // PB_Init(PB_RESET, PB_RELEASED);

    CNT_Init(7654);

    SSD_Init(SSD_L, SSD_ON, SSD_NULL);
    SSD_Init(SSD_M, SSD_ON, SSD_NULL);
    SSD_Init(SSD_N, SSD_ON, SSD_NULL);
    SSD_Init(SSD_R, SSD_OFF, SSD_NULL);

    while (1)
    {
        /* Tasks */
        // PB_Update();
        CNT_Update();
        SSD_Update();
    }
    return 0;
}
