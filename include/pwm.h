#ifndef _PWM_H_
#define _PWM_H_

/**
 * @file       pwm.h
 * @author     Mohamed Nasser
 *
 * @brief      Pulse width modulation driver module
 *
 * @version    0.2.1
 * @date       2022-5-25
 **/

#include "main.h"
#include "Port.h"
#include "timer0.h"
#include <avr/io.h>
#include <util/delay.h>

#define PWM0_PORT_DATA (BUZ_ALARM_PORT_DATA)
#define PWM0_PORT_DIRECTION (BUZ_ALARM_PORT_DIRECTION)
#define PWM0_PIN (BUZ_ALARM_PIN)

#define PWM2_PORT_DATA (BUZ_ALARM_PORT_DATA)
#define PWM2_PORT_DIRECTION (BUZ_ALARM_PORT_DIRECTION)
#define PWM2_PIN (BUZ_ALARM_PIN)

#define TMR2_SET_CLOCK_SELECTOR(x)                       \
    SET_REGISTER_PIN(TCCR2B, CS20, (x & 0x1));           \
    SET_REGISTER_PIN(TCCR2B, CS21, ((x & 0x2) >> CS21)); \
    SET_REGISTER_PIN(TCCR2B, CS22, ((x & 0x4) >> CS22));

// TODO document PWM module

typedef enum
{
    PWM_0,
    PWM_2
} tPWM;

typedef enum
{
    PWM_MODE_STOPPED,
    PWM_MODE_RUNNING
    // PWM_MODE_PHASE_CORRECTED
} tPWM_MODE;

void PWM_Init(tPWM pwm, tPWM_MODE init_mode, u8 init_duty, tClock_Selector init_prescaler);
void PWM_Set_Duty(tPWM pwm, u8 duty);
void PWM_Set_Clock(tPWM pwm, tClock_Selector clock);
u8 PWM_Get_Duty(tPWM pwm);
void PWM_Start(tPWM pwm);
void PWM_Resume(tPWM pwm);

void PWM_Pause(tPWM pwm);

#endif
