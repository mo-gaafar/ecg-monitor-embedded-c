#ifndef LCD_H
#define LCD_H

/* LCD Modes */
#define LCD_8BIT_MODE 0
#define LCD_4BIT_MODE 1

/* User Input */
#define LCD_MODE LCD_4BIT_MODE

void LCD_Init(void);

void LCD_SendCommand(unsigned char Command);

void LCD_SendData(unsigned char Data);

void LCD_SetCursorAt(unsigned char Columns, unsigned char Rows);

void LCD_PrintNumber(unsigned char numb);

void LCD_PrintString(const char *Str);
void LCD_PrintSpecialCharacter(unsigned char *arr, char patternno, char x, char y);

void LCD_LatchSignal(void);

#endif /* LCD_H */