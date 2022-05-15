#ifndef __TMR_H__
#define __TMR_H__

/**
 * @file Timer0 Module
 * @author Mohamed Nasser
 * @brief This module drives the timer0 peripheral
 * @version 1.0
 * @date 2022-4-28
 **/

#include <main.h>

#define TMR0_SET_CLOCK_SELECTOR(x)                       \
    SET_REGISTER_PIN(TCCR0B, CS00, (x & 0x1));           \
    SET_REGISTER_PIN(TCCR0B, CS01, ((x & 0x2) >> CS01)); \
    SET_REGISTER_PIN(TCCR0B, CS02, ((x & 0x4) >> CS02));

#define TMR0_SET_MODE(x)                                   \
    SET_REGISTER_PIN(TCCR0B, WGM02, ((x & 0x8) >> WGM02)); \
    SET_REGISTER_PIN(TCCR0A, WGM01, ((x & 0x2) >> WGM01)); \
    SET_REGISTER_PIN(TCCR0A, WGM00, (x & 0x1));

// TODO: Refactor syntax, causes bugs
#define TMR0_SET_INTERRUPT(x)                                \
    SET_REGISTER_PIN(TIMSK0, TOIE0, ((0x1) >> TOIE0));       \
    SET_REGISTER_PIN(TIMSK0, OCIE0A, ((x & 0x2) >> OCIE0A)); \
    SET_REGISTER_PIN(TIMSK0, OCIE0B, ((x & 0x4) >> OCIE0B));

#define TMR0_READ_COUNTER() (READ_REGISTER_PIN(TCNT0))

typedef enum
{
    NO_CLOCK_SOURCE = 0,
    NO_PRESCALER = 1,
    PRESCALAR_8 = 2,
    PRESCALAR_64 = 3,
    PRESCALAR_256 = 4,
    PRESCALAR_1024 = 5,
} tClock_Selector;

typedef enum
{
    MODE_UpToFF = 0,
    MODE_UpToOCR0A = 2,
    MODE_UpToFF_PWM = 3,
    MODE_UpToOCR0A_PWM = 7,
} tTimer_mode;

typedef enum
{
    INTERRUPT_OVR = TOIE0,
    INTERRUPT_COMPA = OCIE0A,
    INTERRUPT_OVR_and_COMPA = 3,
    INTERRUPT_COMPB = OCIE0B,
} tTimer_Interrupt;

/**
 * @brief Initialize the timer0 peripheral using default values
 * @note The default values are:
 * @note Clock Selector: NO_CLOCK_SOURCE
 * @note Mode: MODE_UpToFF
 * @note Interrupt: INTERRUPT_OVR
 * @note Prescalar: PRESCALAR_256
 **/
void TMR0_Init_Default(void);

/**
 * @brief Initialize the timer0 peripheral
 * @param tClock_Selector clock input / prescalar
 * @see tClock_Selector
 * @param tTimer_mode mode
 * @see tTimer_mode
 * @param tTimer_Interrupt interrupt
 * @see tTimer_Interrupt
 * @return void
 **/
void TMR0_Init(tClock_Selector prescalar, tTimer_mode timer, tTimer_Interrupt interrupt);

/**
 * @brief Stop timer0 by setting the clock selector to NO_CLOCK_SOURCE
 **/
void TMR0_Stop();

/**
 * @brief Start timer0 by setting the clock selector to the last used prescaler
 **/
void TMR0_Start(void);

#endif // __TMR_H__
