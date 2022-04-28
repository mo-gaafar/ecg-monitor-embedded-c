#include "Push_Button.h"
#include "LCD.h"
#include "Led.h"
#include "main.h"

#include <util/delay.h>
int main(void)
{
    /* Initialization */
    u8 Test_Button_State = 0;
    LCD_Init();
    PB_Init(PB_VOL_PLUS, PB_RELEASED);
    LED_Init(LED_ALARM, LED_OFF);
    LED_Init(LED_PROCESSING, LED_ON);

    while (1)
    {
        /* Tasks */
        PB_Update();
        _delay_ms(20);
        Test_Button_State = PB_GetState(PB_VOL_PLUS);
        LCD_SendCommand(0x01);
        if (Test_Button_State == PB_PRESSED)
        {
            LCD_PrintString("PRESSED");
            LED_SetState(LED_ALARM, LED_ON);
            LED_Toggle(LED_PROCESSING);
        }
        else if (Test_Button_State == PB_RELEASED)
        {
            LCD_PrintString("RELEASED");
            LED_SetState(LED_ALARM, LED_OFF);
        }

        /* Output */
    }
    return 0;
}
