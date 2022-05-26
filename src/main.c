#include "Push_Button.h"
#include "LCD.h"
#include "Led.h"
#include "Buzzer.h"
#include "main.h"
#include "timer0.h"
#include "ADC.h"
#include "ECG.h"

#include <util/delay.h>

u16 adc_out = 0;
u8 Test_Button_State = 0;
static u8 ticks_ms = 0;
#define MAIN_Debug 0

int main(void)
{
    /* Initialization */

    LCD_Init();
    PB_Init(PB_VOL_PLUS, PB_RELEASED);
    PB_Init(PB_VOL_MINUS, PB_RELEASED);
    PB_Init(PB_DISP_SLEEP, PB_RELEASED);
    PB_Init(PB_SNOOZE, PB_RELEASED);

    LED_Init(LED_ALARM, LED_OFF);
    LED_Init(LED_PROCESSING, LED_OFF);
    BUZ_Init(BUZ_ALARM, BUZ_STOPPED_MODE);
    TMR0_Init_Default();
    ADC_Init();
    ECG_Init();

    while (1)
    {
        /* Tasks */

#if MAIN_Debug == 0
        // _delay_ms(20);
        Test_Button_State = PB_GetState(PB_VOL_PLUS);
        LCD_SendCommand(0x01);
        if (PB_GetClicks(PB_SNOOZE) > 0)
        {
            LCD_PrintString("SNOOZE");
            BUZ_SetState(BUZ_ALARM, BUZ_STOPPED_MODE);
            PB_ResetClicks(PB_SNOOZE);
        }
        else
        {
            if (ECG_Get_Arrythmia_Type() != Normal)
            {
                BUZ_SetState(BUZ_ALARM, BUZ_PATTERN_MODE);
                LED_SetState(LED_ALARM, LED_ON);
            }
            else
            {
                BUZ_SetState(BUZ_ALARM, BUZ_STOPPED_MODE);
                LED_SetState(LED_ALARM, LED_OFF);
            }
        }

        BUZ_VolumeUp(BUZ_ALARM, PB_GetClicks(PB_VOL_PLUS));
        BUZ_VolumeDn(BUZ_ALARM, PB_GetClicks(PB_VOL_MINUS));

        PB_ResetClicks(PB_VOL_PLUS);
        PB_ResetClicks(PB_VOL_MINUS);

        LCD_SetCursorAt(0, 0);
        LCD_PrintString("BPM: ");
        LCD_PrintNumber(ECG_Get_BPM());
        LCD_SetCursorAt(0, 1);
        LCD_PrintString(ECG_Get_Arrythmia_Type_String());
#else

        if (PB_GetClicks(PB_DISP_SLEEP) > 0)
        {
            LCD_SendCommand(0x01);
            LCD_PrintString("SLEEP");
            BUZ_SetState(BUZ_ALARM, BUZ_STOPPED_MODE);
            LED_Off(LED_ALARM);
            PB_ResetClicks(PB_VOL_MINUS);
            PB_ResetClicks(PB_DISP_SLEEP);
        }
        else
        {
            LCD_SendCommand(0x01);
            BUZ_SetMode(BUZ_ALARM, BUZ_PATTERN_MODE);
            LED_On(LED_ALARM);
            LCD_PrintString("Count");
            LCD_PrintNumber(PB_GetClicks(PB_VOL_MINUS));

            BUZ_VolumeUp(BUZ_ALARM, PB_GetClicks(PB_VOL_PLUS));
            BUZ_VolumeDn(BUZ_ALARM, PB_GetClicks(PB_VOL_MINUS));

            LCD_SetCursorAt(0, 1);
            LCD_PrintString("Volume");
            LCD_PrintNumber(BUZ_GetVolume(BUZ_ALARM));

            PB_ResetClicks(PB_VOL_PLUS);
            PB_ResetClicks(PB_VOL_MINUS);
        }
#endif
    }
    return 0;
}

// ISR(TIMER0_COMPA_vect) // called when TCNT0 == OCR0A
// {
//     //
// }

ISR(TIMER0_OVF_vect) // called when timer 0 overflows
{
    // Overall Timing overhead: BCET = 160us, WCET = 312us + 5us
    LED_On(LED_PROCESSING);
    if (ticks_ms == 0)
    {

        // BCET 145.17 us , WCET 308.2 us
        ECG_Update();
    }
    if (ticks_ms == 1)
    {
        // BCET = 11.5us, WCET = 11.78 us
        PB_Update();
        // BCET = 1.46us , WCET = 2.11 us
        BUZ_Update();
    }
    LED_Off(LED_PROCESSING);
    ticks_ms++;

    // Reset at 4th ms (250 Hz)
    if (ticks_ms == ISR_TMR0_Period_ms)
    {
        ticks_ms = 0;
    }
}
