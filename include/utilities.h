#ifndef __UTIL_H__
#define __UTIL_H__

#include <main.h>

/**
 * @brief This function is used to delay the program for a certain amount of time
 * @param delay_ms The amount of time to delay the program for in milliseconds
 * @return void
 **/
void UTIL_DelayMS(u16 delay_ms);

// TODO: Write function declaration and documentation
u8 UTIL_Normalize_to_8bit(u16 input);
#endif // __UTIL_H__
