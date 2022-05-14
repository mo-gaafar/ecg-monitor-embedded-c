#include <pic16f877a.h>
#include "push_button.h"
#include "count.h"
#include "ssd.h"
#include "timer0.h"


unsigned int  __at(0x2007) CONFIG = _HS_OSC & _WDT_OFF & _PWRTE_ON & _BODEN_OFF & _LVP_OFF & _CPD_OFF & _WRT_OFF & _DEBUG_OFF & _CP_OFF;


void main(void)
{
    /* Initialization */
    PB_Init(PB_PLUS, PB_RELEASED);
    PB_Init(PB_MINUS, PB_RELEASED);
    PB_Init(PB_CHANGE_MODE, PB_RELEASED);

    CNT_Init(02,58,00);

    SSD_Init(SSD_L, SSD_OFF, SSD_NULL);
    SSD_Init(SSD_M, SSD_OFF, SSD_NULL);
    SSD_Init(SSD_N, SSD_OFF, SSD_NULL);
    SSD_Init(SSD_R, SSD_OFF, SSD_NULL);

    TMR0_Init();
    TMR0_Start();

    while(1)
    {
        /* Do nothing */

    }
}
