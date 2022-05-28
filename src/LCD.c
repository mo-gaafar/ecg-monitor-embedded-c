#include "LCD.h"
#include "main.h"
#include "Port.h"

#include <utilities.h>
#include "Led.h"
#include "avr/io.h"
#include "util/delay.h"
#include "Push_Button.h"
#include "ECG.h"

/* delays; refer to the manual */
#define LCD_DELAY_US_AFTER_VDD 500
#define LCD_DELAY_US_LONG 52
#define LCD_DELAY_US_SHORT 15

#define LCD_CLEAR_PERIOD 100
u8 LCD_SleepFlag = 0;
u8 LCD_ClearPeriodic = 0;

void LCD_Init()
{
#if LCD_MODE == LCD_8BIT_MODE
    GPIO_InitPort(LCD_DPRT_CR, GPIO_OUT);
    GPIO_InitPortPin(lCD_CPRT_CR, LCD_RS, GPIO_OUT);
    GPIO_InitPortPin(lCD_CPRT_CR, LCD_RW, GPIO_OUT);
    GPIO_InitPortPin(lCD_CPRT_CR, LCD_EN, GPIO_OUT);
    LCD_SendCommand(0x38);
    LCD_SendCommand(0x0E);
    LCD_SendCommand(0x01);
    _delay_ms(2);
#elif LCD_MODE == LCD_4BIT_MODE
    GPIO_InitPortPin(LCD_DPRT_CR, 4, GPIO_OUT);
    GPIO_InitPortPin(LCD_DPRT_CR, 5, GPIO_OUT);
    GPIO_InitPortPin(LCD_DPRT_CR, 6, GPIO_OUT);
    GPIO_InitPortPin(LCD_DPRT_CR, 7, GPIO_OUT);
    GPIO_InitPortPin(lCD_CPRT_CR, LCD_RS, GPIO_OUT);
    GPIO_InitPortPin(lCD_CPRT_CR, LCD_RW, GPIO_OUT);
    GPIO_InitPortPin(lCD_CPRT_CR, LCD_EN, GPIO_OUT);
    // LCD_SendCommand(0x33);
    LCD_SendCommand(0x32);
    LCD_SendCommand(0x28);
    LCD_SendCommand(0x0E);
    LCD_SendCommand(0x01);
    _delay_ms(2);
#else
#error Please Select The Correct Mode of LCD
#endif
}

void LCD_SendCommand(char Command)
{
    LCD_WaitBusy();
#if LCD_MODE == LCD_8BIT_MODE
    GPIO_WritePort(LCD_DPRT_DR, Command);
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_RS, 0);
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_RW, 0);
    LCD_LatchSignal();
#elif LCD_MODE == LCD_4BIT_MODE
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_RS, 0);
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_RW, 0);
    LCD_CPRT_DR = (LCD_CPRT_DR & 0x0f) | (Command & 0xf0);
    LCD_LatchSignal();
    LCD_CPRT_DR = (LCD_CPRT_DR & 0x0f) | (Command << 4);
    LCD_LatchSignal();

#else
#error Please Select The Correct Mode of LCD
#endif
}

void LCD_SendData(char Data)
{

    LCD_WaitBusy();
#if LCD_MODE == LCD_8BIT_MODE
    GPIO_WritePort(LCD_DPRT_DR, Data);

    GPIO_WritePortPin(LCD_CPRT_DR, LCD_RS, 1);
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_RW, 0);
    LCD_LatchSignal();
#elif LCD_MODE == LCD_4BIT_MODE
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_RS, 1);
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_RW, 0);

    GPIO_WritePort(LCD_DPRT_DR, (GPIO_ReadPort(LCD_DPRT_DR) & 0x0f) | (Data & 0xf0));
    // LCD_DPRT=(LCD_DPRT & 0x0f)|(Data&0xf0);
    LCD_LatchSignal();
    GPIO_WritePort(LCD_DPRT_DR, (GPIO_ReadPort(LCD_DPRT_DR) & 0x0f) | (Data << 4));
    // LCD_DPRT=(LCD_DPRT&0x0f)|(Data<<4);
    LCD_LatchSignal();

#else
#error Please Select The Correct Mode of LCD
#endif
}
// void LCD_SetCursorAt(char x, char y) {
//   char firstCharAdr[] = {0x80, 0xC0, 0x94, 0xD4};
//   LCD_SendCommand(firstCharAdr[x - 1] + (y - 1));
// }
void LCD_LatchSignal(void)
{
    _delay_us(20);
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_EN, 1);
    _delay_us(20);
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_EN, 0);
}

void LCD_Clear(void)
{
    LCD_SendCommand(0x01);
    UTIL_DelayUS(1300);
}

void LCD_SetCursorAt(char Columns, char Rows)
{
    char address = 0;
    switch (Rows)
    {
    case 0:
        address = Columns;
        break;
    case 1:
        address = Columns + 0x40;

    default:
        break;
    }

    LCD_SendCommand(address + 128);
}

void LCD_PrintString(const char *Str)
{
    int i = 0;
    while (!(Str[i] == '\0'))
    {
        LCD_SendData(Str[i]);
        i++;
    }
}
void LCD_PrintSpecialCharacter(char *arr, char patternno, char x, char y)
{

    char cgramaddress = 0;
    int i;
    cgramaddress = 8 * patternno;
    LCD_SendCommand(cgramaddress + 64);
    for (i = 0; i < 8; i++)
    {
        LCD_SendData(arr[i]);
    }
    LCD_SetCursorAt(x, y);
    LCD_SendData(patternno);
}

void LCD_PrintNumber(u32 num)
{
    u8 txt[10] = {0};
    s8 i = 0;
    if (num == 0)
    {
        LCD_SendData('0');
        return;
    }
    for (i = 0; num != 0; i++)
    {
        txt[i] = num % 10 + 48;
        num = num / 10;
    }
    i--;
    while (i >= 0)
    {
        LCD_SendData(txt[i]);
        i--;
    }
}
void LCD_WaitBusy(void)
{
    // GPIO_InitPortPin(LCD_DPRT_CR, 4, GPIO_IN);
    // GPIO_InitPortPin(LCD_DPRT_CR, 5, GPIO_IN);
    // GPIO_InitPortPin(LCD_DPRT_CR, 6, GPIO_IN);
    // GPIO_InitPortPin(LCD_DPRT_CR, 7, GPIO_IN);
    // // GPIO_WritePortPin(LCD_CPRT_DR, LCD_EN, 1);
    // GPIO_WritePortPin(LCD_CPRT_DR, LCD_RW, 1);
    // GPIO_WritePortPin(LCD_CPRT_DR, LCD_RS, 0);

    // GPIO_InitPortPin(DDRB, 4, GPIO_OUT);
    // GPIO_WritePortPin(PORTB, 4, 1);
    // _delay_us(LCD_DELAY_US_SHORT);

    // while (GPIO_ReadPortPin(LCD_DPRT_IN, 7) == 1)
    // { /* LCD is busy if MSB is set */
    //     LCD_LatchSignal();
    //     GPIO_WritePortPin(PORTB, 4, 0);
    //     // GPIO_WritePortPin(LCD_DPRT_DR, 7, 0);
    // }
    // // _delay_us(LCD_DELAY_US_LONG);
    // GPIO_WritePortPin(PORTB, 4, 1);
    // // GPIO_WritePortPin(LCD_CPRT_DR, LCD_RW, 0);
    // GPIO_WritePortPin(LCD_CPRT_DR, LCD_RW, 0);
    // GPIO_InitPortPin(LCD_DPRT_CR, 4, GPIO_OUT);
    // GPIO_InitPortPin(LCD_DPRT_CR, 5, GPIO_OUT);
    // GPIO_InitPortPin(LCD_DPRT_CR, 6, GPIO_OUT);
    // GPIO_InitPortPin(LCD_DPRT_CR, 7, GPIO_OUT);

    // bala waga3 dema8
    // UTIL_DelayUS(10000);
}

void LCD_UpdateDisplay(void)
{
    LCD_ClearPeriodic++;

    if (LCD_ClearPeriodic == LCD_CLEAR_PERIOD)
    {
        LCD_ClearPeriodic = 0;
        LCD_Clear();
    }
    else
    {
        // if normal mode only check for HR and Arrythmia type
        if (!LCD_SleepFlag)
        {
            // LCD_Clear();
            LCD_SetCursorAt(4, 0);
            LCD_PrintString("BPM: ");
            LCD_PrintNumber(ECG_Get_BPM());
            LCD_SetCursorAt(0, 1);
            LCD_PrintString(ECG_Get_Arrythmia_Type_String());
            // Toggle condition
            if (PB_GetClicks(PB_DISP_SLEEP) >= 1)
            {
                PB_ResetClicks(PB_DISP_SLEEP);
                LCD_SleepFlag = 1;
            }
        }
        else
        {
            LCD_Clear();
            // LCD_SendCommand(0x01);
            // Toggle condition
            if (PB_GetClicks(PB_DISP_SLEEP) >= 1)
            {
                PB_ResetClicks(PB_DISP_SLEEP);
                LCD_SleepFlag = 0;
            }
        }
    }
}