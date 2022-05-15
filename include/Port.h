#ifndef __PORT_H__
#define __PORT_H__

/**
 * @file Port.h
 * @author Mohamed Nasser
 * @brief This module abstracts the pcb
 * @version 1.0
 * @date 2022-4-28
 **/

#include "main.h"

/************************************************
 *  ... OUTPUT PORTS
 ***********************************************/

/*BUZZER*/

#define BUZ_ALARM_PORT_DATA (GPIO_PORT_1_DATA)
#define BUZ_ALARM_PORT_DIRECTION (GPIO_PORT_1_DIRECTION)
#define BUZ_ALARM_PIN (GPIO_PIN_1)

/*LED*/

#define LED_ALARM_PORT_DATA (GPIO_PORT_1_DATA)
#define LED_ALARM_PORT_DIRECTION (GPIO_PORT_1_DIRECTION)
#define LED_ALARM_PIN (GPIO_PIN_2)
#define LED_PROCESSING_PORT_DATA (GPIO_PORT_1_DATA)
#define LED_PROCESSING_PORT_DIRECTION (GPIO_PORT_1_DIRECTION)
#define LED_PROCESSING_PIN (GPIO_PIN_3)

/*LCD*/

#define LCD_RS (GPIO_PIN_1)
#define LCD_RW (GPIO_PIN_2)
#define LCD_EN (GPIO_PIN_3)

#define LCD_CPRT_DR (GPIO_PORT_3_DATA)
#define lCD_CPRT_CR (GPIO_PORT_3_DIRECTION)

#define LCD_DPRT_DR (GPIO_PORT_3_DATA)
#define LCD_DPRT_CR (GPIO_PORT_3_DIRECTION)
#define LCD_DPRT_IN (GPIO_PORT_3_INPUT)

/************************************************
 *  ... INPUT PORTS
 ***********************************************/

/*ADC*/

#define ADC_ECG_IN_PORT_DATA (GPIO_PORT_2_DATA)
#define ADC_ECG_IN_PORT_DIRECTION (GPIO_PORT_2_DIRECTION)
#define ADC_ECG_IN_PIN (GPIO_PIN_0)

/*BUTTON*/

#define PB_DISP_SLEEP_PORT_DATA (GPIO_PORT_2_INPUT)
#define PB_DISP_SLEEP_PORT_DIRECTION (GPIO_PORT_2_DIRECTION)
#define PB_DISP_SLEEP_PIN (GPIO_PIN_1)

#define PB_VOL_MINUS_PORT_DATA (GPIO_PORT_2_INPUT)
#define PB_VOL_MINUS_PORT_DIRECTION (GPIO_PORT_2_DIRECTION)
#define PB_VOL_MINUS_PIN (GPIO_PIN_2)

#define PB_VOL_PLUS_PORT_DATA (GPIO_PORT_2_INPUT)
#define PB_VOL_PLUS_PORT_DIRECTION (GPIO_PORT_2_DIRECTION)
#define PB_VOL_PLUS_PIN (GPIO_PIN_3)

#define PB_SNOOZE_PORT_DATA (GPIO_PORT_2_INPUT)
#define PB_SNOOZE_PORT_DIRECTION (GPIO_PORT_2_DIRECTION)
#define PB_SNOOZE_PIN (GPIO_PIN_4)

/* End of code filling */
#endif // __PORT_H__
