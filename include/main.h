#ifndef __MAIN_H__
#define __MAIN_H__

/*! \mainpage ECG Monitor Documentation
 *
 * \section intro_sec Introduction
 *
 * This is the introduction.
 *
 * \section install_sec Installation
 *
 * \subsection step1 Step 1: Opening the box
 *
 * etc...
 */

/************************************************
 *  ... MCU SPECIFIC DEFINITIONS
 ***********************************************/

/* MCU Libraries*/
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

/* CPU Clock Frequency */
#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#define ISR_TMR0_Period_ms 4

/*Interrupt wrapper macro*/
#define enable_global_interrupt() sei()

/* GPIO definitions */
/* GPIO Pins */
#define GPIO_PIN_0 (0)
#define GPIO_PIN_1 (1)
#define GPIO_PIN_2 (2)
#define GPIO_PIN_3 (3)
#define GPIO_PIN_4 (4)
#define GPIO_PIN_5 (5)
#define GPIO_PIN_6 (6)
#define GPIO_PIN_7 (7)

/* GPIO Port Registers redefinition */

#define GPIO_PORT_1_DATA (PORTB)
#define GPIO_PORT_1_INPUT (PINB)
#define GPIO_PORT_1_DIRECTION (DDRB)

#define GPIO_PORT_2_DATA (PORTC)
#define GPIO_PORT_2_INPUT (PINC)
#define GPIO_PORT_2_DIRECTION (DDRC)

#define GPIO_PORT_3_DATA (PORTD)
#define GPIO_PORT_3_INPUT (PIND)
#define GPIO_PORT_3_DIRECTION (DDRD)

/* GPIO direction setting */
#define GPIO_OUT (1)
#define GPIO_IN (0)

/************************************************
 *  ... REGISTER OPERATION MACROS
 ***********************************************/

#define SET_REGISTER_PIN(REG, BIT, VAL) ((REG) = (((REG) & (~(1 << BIT))) | ((VAL) << (BIT))))
#define READ_REGISTER_PIN(REG, BIT) ((REG & (1 << BIT)) >> (BIT))

/* GPIO port operations */
#define GPIO_InitPort(CONTROL, DIRECTION) ((CONTROL) = ((DIRECTION) ? (~GPIO_OUT) : (GPIO_OUT)))
#define GPIO_WritePort(PORT, DATA) ((PORT) = (DATA))
#define GPIO_ReadPort(PORT) (PORT)

/* GPIO port pin operations */
#define GPIO_InitPortPin(CONTROL, PIN, DIRECTION) ((CONTROL) = (CONTROL & (~(1 << PIN))) | (DIRECTION << PIN))
#define GPIO_WritePortPin(PORT, PIN, DATA) ((PORT) = (PORT & (~(1 << PIN))) | (DATA << PIN))
#define GPIO_ReadPortPin(PORT, PIN) (((PORT) & (1 << PIN)) >> (PIN))

/************************************************
 *  ... STANDARD DATA TYPES
 ***********************************************/

/* Standard data types */
typedef unsigned int tWord;
typedef unsigned char u8;
typedef unsigned short int u16;
typedef unsigned long int u32;

typedef signed char s8;
typedef signed short int s16;
typedef signed long int s32;

typedef float f32;
typedef double f64;

#endif // __MAIN_H__