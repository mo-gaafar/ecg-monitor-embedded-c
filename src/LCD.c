#include "LCD.h"
#include "main.h"
#include "Port.h"

#include "avr/io.h"
#include "util/delay.h"

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
    LCD_SendCommand(0x33);
    LCD_SendCommand(0x32);
    LCD_SendCommand(0x28);
    LCD_SendCommand(0x0E);
    LCD_SendCommand(0x01);
    _delay_ms(2);
#else
#error Please Select The Correct Mode of LCD
#endif
}

void LCD_SendCommand(u8 Command)
{
#if LCD_MODE == LCD_8BIT_MODE
    GPIO_WritePort(LCD_DPRT_DR, Command);
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_RS, 0);
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_RW, 0);
    LCD_LatchSignal();
#elif LCD_MODE == LCD_4BIT_MODE
    /// TODO:
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

void LCD_SendData(u8 Data)
{
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
// void LCD_SetCursorAt(u8 x, u8 y) {
//   u8 firstCharAdr[] = {0x80, 0xC0, 0x94, 0xD4};
//   LCD_SendCommand(firstCharAdr[x - 1] + (y - 1));
// }

void LCD_SetCursorAt(u8 Columns, u8 Rows)
{

    u8 address = 0;
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

void LCD_PrintString(const u8 *Str)
{
    int i = 0;
    while (!(Str[i] == '\0'))
    {
        LCD_SendData(Str[i]);
        i++;
    }
}
void LCD_PrintSpecialCharacter(u8 *arr, u8 patternno, u8 x, u8 y)
{

    u8 cgramaddress = 0;
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
void LCD_PrintNumber(u8 numb)
{
    if (numb >= 100)
    {
        u8 first = numb / 100;
        LCD_SendData(first + '0');
        u8 second = (numb / 10) % 10;
        LCD_SendData(second + '0');
        u8 third = numb % 10;
        LCD_SendData(third + '0');
    }
    else if (numb == 0 || numb < 10)
    {
        u8 first = numb;
        LCD_SendData(first + '0');
    }
    else
    {
        u8 first = numb / 10;
        LCD_SendData(first + '0');
        u8 second = numb % 10;
        LCD_SendData(second + '0');
    }
}

void LCD_LatchSignal(void)
{
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_EN, 1);
    _delay_us(20);
    GPIO_WritePortPin(LCD_CPRT_DR, LCD_EN, 0);
    _delay_us(100);
}