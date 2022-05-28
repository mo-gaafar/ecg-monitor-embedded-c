#ifndef __UTIL_H__
#define __UTIL_H__

/**
 * @file       utilities.h
 * @author     Mohamed Nasser
 *
 * @brief      Useful functions
 *
 * @version    0.5.0
 * @date       2022-5-25
 **/

#include <main.h>

/**
 * @brief Delays the program for a certain amount of time
 * @param delay_ms The amount of time in milliseconds
 * @return void
 **/
void UTIL_DelayMS(u16 delay_ms);

/**
 * @brief Delays the program for a certain amount of time
 *
 * @param delay_us The amount of time in microseconds
 */
void UTIL_DelayUS(u16 delay_us);

#endif // __UTIL_H__
