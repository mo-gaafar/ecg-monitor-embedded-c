#include "Push_Button.h"
#include "LCD.h"
#include "Led.h"
#include "Buzzer.h"
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
    BUZ_Init(BUZ_ALARM, BUZ_STOPPED_MODE);

    while (1)
    {
        /* Tasks */
        PB_Update();
        BUZ_Update();
        _delay_ms(20);
        Test_Button_State = PB_GetState(PB_VOL_PLUS);
        LCD_SendCommand(0x01);
        if (Test_Button_State == PB_PRESSED)
        {
            LCD_PrintString("PRESSED");
            LED_SetState(LED_ALARM, LED_ON);
            LED_Toggle(LED_PROCESSING);
            BUZ_SetMode(BUZ_ALARM, BUZ_SINGLE_MODE);
        }
        else if (Test_Button_State == PB_RELEASED)
        {
            LCD_PrintString("RELEASED");
            LED_SetState(LED_ALARM, LED_OFF);
            BUZ_SetMode(BUZ_ALARM, BUZ_PATTERN_MODE);
        }

        /* Output */
    }
    return 0;
}

ISR(TIMER0_COMPA_vect) // called when TCNT0 == OCR0A
{
    //
}

ISR(TIMER0_OVF_vect) // called when timer 0 overflows
{
    //
}