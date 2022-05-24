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

u16 ecg_found_ticks_ms = 0;
u16 ecg_old_found_ticks_ms = 0;
volatile u16 bpm = 0;

// pre-recorded ECG, for testing
int s_ecg_idx = 0;
#define S_ECG_SIZE 226
const float s_ecg[226] = {1.5984, 1.5992, 1.5974, 1.5996, 1.5978, 1.5985, 1.5992, 1.5973, 1.5998, 1.5976, 1.5986, 1.5992, 1.5972, 1.6, 1.5973, 1.5989, 1.5991, 1.5969, 1.6006, 1.5964, 1.6, 1.5979, 1.5994, 1.6617, 1.7483, 1.823, 1.8942, 1.9581, 2.0167, 2.0637, 2.1034, 2.1309, 2.1481, 2.1679, 2.1739, 2.1702, 2.1543, 2.1243, 2.0889, 2.037, 1.982, 1.9118, 1.8305, 1.7532, 1.6585, 1.6013, 1.5979, 1.5981, 1.5996, 1.5972, 1.5992, 1.599, 1.5966, 1.6015, 1.5952, 1.6008, 1.5984, 1.5953, 1.606, 1.5841, 1.6796, 1.9584, 2.2559, 2.5424, 2.835, 3.1262, 3.4167, 3.7061, 4.0018, 4.2846, 4.5852, 4.8688, 5.1586, 5.4686, 5.4698, 5.1579, 4.8687, 4.586, 4.2833, 4.0031, 3.7055, 3.4164, 3.1274, 2.8333, 2.544, 2.2554, 1.9572, 1.6836, 1.5617, 1.5143, 1.4221, 1.3538, 1.2791, 1.1951, 1.1326, 1.0407, 0.99412, 1.0445, 1.1262, 1.2017, 1.2744, 1.3545, 1.4265, 1.5044, 1.5787, 1.6006, 1.5979, 1.5988, 1.5982, 1.5989, 1.5982, 1.5986, 1.5987, 1.5983, 1.5984, 1.5992, 1.5965, 1.6082, 1.6726, 1.7553, 1.826, 1.903, 1.9731, 2.0407, 2.1079, 2.166, 2.2251, 2.2754, 2.3215, 2.3637, 2.396, 2.4268, 2.4473, 2.4627, 2.4725, 2.4721, 2.4692, 2.4557, 2.4374, 2.4131, 2.3797, 2.3441, 2.2988, 2.2506, 2.1969, 2.1365, 2.0757, 2.0068, 1.9384, 1.8652, 1.7899, 1.7157, 1.6346, 1.5962, 1.5997, 1.5979, 1.5986, 1.5989, 1.5978, 1.5995, 1.5976, 1.5991, 1.5984, 1.5981, 1.5993, 1.5976, 1.5993, 1.5982, 1.5982, 1.5993, 1.5975, 1.5994, 1.5981, 1.5983, 1.5995, 1.5967, 1.6049, 1.6248, 1.647, 1.664, 1.6763, 1.6851, 1.6851, 1.6816, 1.6712, 1.655, 1.6376, 1.613, 1.599, 1.5985, 1.5982, 1.5989, 1.5982, 1.5986, 1.5987, 1.598, 1.5991, 1.598, 1.5987, 1.5987, 1.598, 1.5992, 1.5979, 1.5988, 1.5986, 1.598, 1.5992, 1.5979, 1.5988, 1.5986, 1.598, 1.5992, 1.5978, 1.5989, 1.5985, 1.5981, 1.5992, 1.5978, 1.599, 1.5985, 1.5981, 1.5992, 1.5977, 1.599, 1.5984, 1.5981};

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
        PB_Update();
        BUZ_Update();
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
            LCD_PrintNumber((u32)bpm);
            LCD_SetCursorAt(0, 1);
            LCD_PrintString("Arrythmia.. ");
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
        if (s_ecg_idx == S_ECG_SIZE)
        {
            s_ecg_idx = 0;
        }
        // adc_out = ADC_Read(0);

        float ecg_samp = s_ecg[s_ecg_idx] * 204.8;
        s_ecg_idx++;

        // Timing overhead: 120us -> ?
        u8 isdetected = ECG_Detect(ecg_samp);

        if (isdetected == 1)
        {
            // bpm = (f32)(60 / (u32)((ecg_found_ticks_ms - ecg_old_found_ticks_ms) * 1000)); // find heartbeat period in ms
            bpm = 60 * (ecg_found_ticks_ms - ecg_old_found_ticks_ms) / 1000;
            ecg_old_found_ticks_ms = ecg_found_ticks_ms; // reset ms counter
            LED_On(LED_ALARM);
            BUZ_SetMode(BUZ_ALARM, BUZ_SINGLE_MODE);
        }
        else
        {
            // bpm = ecg_found_ticks_ms;
            LED_Off(LED_ALARM);
            BUZ_SetMode(BUZ_ALARM, BUZ_PATTERN_MODE);
        }

        // // Timing overhead: 8us
        // adc_out = ADC_ReadNormalized8Bit(0);

        LED_Off(LED_PROCESSING);
    }

    ticks_ms++;
    ecg_found_ticks_ms++;

    // Reset at 4th ms (??? Hz)
    if (ticks_ms == 4)
    {
        ticks_ms = 0;
    }
}
