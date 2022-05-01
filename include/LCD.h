#ifndef LCD_H
#define LCD_H

#include "main.h"

/* LCD Modes */
#define LCD_8BIT_MODE 0
#define LCD_4BIT_MODE 1

/* User Input */
#define LCD_MODE LCD_4BIT_MODE

/*
 * Function: LCD_Init
 * ----------------------------
 *  Initializes the LCD command and data pins and the data mode
 * (whether it is 8-bit or 4-bit defined in the preprocessor directive).
 *
 *
 *  Parameters:
 *  void
 *
 *  Returns:
 *   void
 */
void LCD_Init(void);

/*
 * Function: LCD_SendCommand
 * ----------------------------
 *  Sends a command to the LCD.
 *
 *
 *  Parameters:
 *  uint8_t command - The command to send to the LCD.
 *
 *  Returns:
 *   void
 */
void LCD_SendCommand(u8 command);

/*
 * Function: LCD_SendData
 * ----------------------------
 *  Sends data to the LCD.
 *
 *  Parameters:
 *  u8 data - The data to send to the LCD.
 *
 *  Returns:
 *   void
 */
void LCD_SendData(u8 Data);

/*
 * Function: LCD_SetCursorAt
 * ----------------------------
 *   Sets the cursor at the specified position.
 *
 *
 *  Parameters:
 *  u8 x - The x position of the cursor.
 *  u8 y - The y position of the cursor.
 *
 *  Returns:
 *      void
 */
void LCD_SetCursorAt(u8 Columns, u8 Rows);

/*
 * Function: LCD_PrintNumber
 * ----------------------------
 *  Prints a number to the LCD.
 *  The number is printed in decimal format.
 *
 * Parameters:
 *  u8 numb - The number to print.
 *
 *  Returns:
 *      void
 */
void LCD_PrintNumber(u8 numb);

/*
 * Function: LCD_PrintString
 * ----------------------------
 *  Prints a string to the LCD Right at the current cursor location.
 *
 * Parameters:
 *  u8 *Str - The char array pointer (string) to print.
 *
 *  Returns:
 *      void
 */
void LCD_PrintString(const u8 *Str);

/*
 * Function: LCD_PrintSpecialCharacter
 * ----------------------------
 *  Prints a special character to the LCD.
 *
 * Parameters:
 *  u8 *arr - The char array pointer (string) to print.
 *  u8 patternno - The pattern number to print.
 *  u8 x - The x position of the cursor.
 *  u8 y - The y position of the cursor.
 *
 *  Returns:
 *      void
 */
void LCD_PrintSpecialCharacter(u8 *arr, u8 patternno, u8 x, u8 y);

// TODO: Add clear function
/*
 * Function: LCD_Clear
 * ----------------------------
 *  Clears the LCD.
 *
 *  Parameters:
 *  void
 *
 *  Returns:
 *      void
 */
void LCD_Clear(void);

// TODO: Add clear line function
/*
 * Function: LCD_ClearLine
 * ----------------------------
 *  Clears the specified line.
 *
 *  Parameters:
 *  u8 line - The line to clear.
 *
 *  Returns:
 *      void
 */
void LCD_ClearLine(u8 line);

/*
 * Function: LED_Init
 * ----------------------------
 *   Initializes the LED with its initial state and sets HW pin direction.
 *
 *
 *  Parameters:
 *  tLED led - The LED to initialize.
 *  tLED_State state - The initial state of the LED.
 *
 *  Returns:
 *      void
 */
void LCD_LatchSignal(void);

#endif /* LCD_H */