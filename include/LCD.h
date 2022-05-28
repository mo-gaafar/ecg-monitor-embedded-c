#ifndef LCD_H
#define LCD_H

/**
 * @file LCD.h
 * @author Mohamed Nasser
 * @brief This is a LCD driver module
 * @version 0.1
 * @date 2022-04-30
 **/

#include "main.h"

/* LCD Modes */
#define LCD_8BIT_MODE 0
#define LCD_4BIT_MODE 1

/* User Input */
#define LCD_MODE LCD_4BIT_MODE

// typedef struct LCD_Buffer
// {
//     u8 data[16];
//     u8 length = 0;
//     //?? missing
//     u8 empty_flag = 1;
//     u8 cursor_pos = 0;
//     u8 cursor_flag = 0;
// } LCD_Buffer;

// LCD_Buffer LCDBuffer;

/**
 * @brief Waits for the LCD to be ready to recieve more commands
 *
 */
void LCD_WaitBusy();

/**
 * @brief Initializes the LCD command and data pins and the data mode
 * @n (whether it is 8-bit or 4-bit defined in the preprocessor directive).
 **/
void LCD_Init(void);

// TODO: documentation
void LCD_UpdateDisplay(void);

// void LCD_SetBuffer(char *buffer);
// char *LCD_GetBuffer(void);
// void LCD_ClearBuffer(void);
// u8 LCD_GetBufferEmpty(void);

/**
 * @brief Sends a command to the LCD.
 * @param char command - The command to send to the LCD.
 **/
void LCD_SendCommand(char command);

/**
 * @brief Sends data to the LCD.
 *
 * @param char Data
 **/
void LCD_SendData(char Data);

/**
 * @brief Sets the cursor at the specified position.
 * @param char x - The x position of the cursor.
 * @param char y - The y position of the cursor.
 * @return void
 **/
void LCD_SetCursorAt(char Columns, char Rows);

/**
 * @brief Prints a number to the LCD.
 * @param char numb - The number to print.
 * @return void
 **/
void LCD_PrintNumber(u32 numb);

/**
 * @brief Prints a string to the LCD.
 * @param char* str - The char array pointer (string) to print.
 * @return void
 **/
void LCD_PrintString(const char *Str);

/**
 * @brief Prints a special character to the LCD.
 *
 * @param char *arr - The char array pointer (string) to print.
 * @param char patternno - The pattern number to print.
 * @param char x - The x position of the cursor.
 * @param char y - The y position of the cursor.
 * @return void
 * @warning THIS FUNCTION IS NOT YET IMPLEMENTED
 * @todo Implement this function
 **/
void LCD_PrintSpecialCharacter(char *arr, char patternno, char x, char y);

/**
 * @brief Clears the LCD.
 * @return void
 **/
void LCD_Clear(void);

//TODO: implement this function too
/**
 * @brief Clears the specified line.
 * @param char line - The line to clear.
 * @return void
 * @warning THIS FUNCTION IS NOT YET IMPLEMENTED
 * @todo Implement this function
 **/
void LCD_ClearLine(char line);

/**
 * @brief Latches the EN pin on the LCD.
 **/
void LCD_LatchSignal(void);

#endif /* LCD_H */