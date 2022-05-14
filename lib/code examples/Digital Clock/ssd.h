#ifndef __SSD_H__
#define __SSD_H__
#include "main.h"
#include "port.h"

typedef unsigned char PERIOD;

typedef enum
{
    SSD_L,
    SSD_M,
    SSD_N,
    SSD_R

}tSSD;

typedef enum
{
    SSD_OFF = 0,
    SSD_ON
}tSSD_State;

typedef enum
{
    LED_OFF = 0,
    LED_ON
}tSSD_LED;

typedef enum
{
    TOGGLE_OFF = 0,
    TOGGLE_ON
}tSSD_TOGGLE;

typedef enum
{
   SSD_0,
   SSD_1,
   SSD_2,
   SSD_3,
   SSD_4,
   SSD_5,
   SSD_6,
   SSD_7,
   SSD_8,
   SSD_9,
   SSD_NULL
}tSSD_Symbol;

typedef enum
{
   NORMAL_MODE,
   SET_HOURS_MODE,
   SET_MINUTES_MODE
}Mode;

void SSD_Init(tSSD ssd, tSSD_State initial_state, tSSD_Symbol initial_symbol);
void SSD_Update(void);
void SSD_SetSymbol(tSSD ssd, tSSD_Symbol symbol);
void SSD_SetState(tSSD ssd, tSSD_State state);
void SSD_SetMode(Mode mode);
void SSD_DisplayToggle(tSSD firstSSD,tSSD secondSSD);
void SSD_SetLed(tSSD_LED led);

tSSD SSD_getCurrentSSD(void);
tSSD_Symbol SSD_GetSymbol(tSSD ssd);
tSSD_State SSD_GetState(tSSD ssd);

#endif // __SSD_H__
