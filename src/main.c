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

int main(void)
{
    /* Initialization */

    LCD_Init();
    PB_Init(PB_VOL_PLUS, PB_RELEASED);
    LED_Init(LED_ALARM, LED_OFF);
    LED_Init(LED_PROCESSING, LED_OFF);
    BUZ_Init(BUZ_ALARM, BUZ_STOPPED_MODE);
    TMR0_Init_Default();
    ADC_Init();
    ECG_Init();

    while (1)
    {
        /* Tasks */

        _delay_ms(20);
        Test_Button_State = PB_GetState(PB_VOL_PLUS);
        LCD_SendCommand(0x01);
        if (Test_Button_State == PB_PRESSED)
        {
            // LCD_PrintString("PRESSED");
            LED_SetState(LED_ALARM, LED_ON);
            // LED_Toggle(LED_PROCESSING);
            BUZ_SetMode(BUZ_ALARM, BUZ_SINGLE_MODE);
            // LCD_PrintNumber(adc_out);
            LCD_SetCursorAt(0, 0);
            LCD_PrintString("BPM: ");
            LCD_PrintNumber(ECG_Get_BPM());
            LCD_SetCursorAt(0, 1);
            LCD_PrintString(ECG_Get_Arrythmia_Type_String());
        }
        // else if (Test_Button_State == PB_RELEASED)
        // {
        //     LCD_PrintString("RELEASED");
        //     LED_SetState(LED_ALARM, LED_OFF);
        //     BUZ_SetMode(BUZ_ALARM, BUZ_PATTERN_MODE);
        // }
        /* Output */
    }
    return 0;
}

// ISR(TIMER0_COMPA_vect) // called when TCNT0 == OCR0A
// {
//     //
// }

ISR(TIMER0_OVF_vect) // called when timer 0 overflows
{

    if (ticks_ms == 0)
    {
        LED_On(LED_PROCESSING);

        // Timing overhead: 5 us
        // adc_out = ADC_Read(0);

        // Timing overhead: 120us -> ?
        ECG_Update();
        PB_Update();
        BUZ_Update();

        LED_Off(LED_PROCESSING);
    }

    ticks_ms++;

    // Reset at 4th ms (??? Hz)
    if (ticks_ms == 4)
    {
        ticks_ms = 0;
    }
}
