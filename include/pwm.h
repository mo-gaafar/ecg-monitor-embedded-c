#ifndef _PWM_H_
#define _PWM_H_

#include "main.h"
#include <avr/io.h>
#include <util/delay.h>

void SERVO_Init(void);
void SERVO_On(unsigned char cmd);
void SERVO_Off(void);

#endif

