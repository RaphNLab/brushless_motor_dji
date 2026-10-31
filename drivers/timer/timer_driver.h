#ifndef DELAY_DRIVER_
#define DELAY_DRIVER_

#include "global.h"

#define ESC_MOTOR_PIN GPIO9

/* TIM1   (16MHz HSI / 16), period = 20ms (50Hz) */
#define ESC_MIN_US 1000
#define ESC_MAX_US  2000
#define ESC_RANGE_US  (ESC_MAX_US - ESC_MIN_US)
#define ESC_PERIOD_US  20000


void timer_sleep_setup(void);
void sleep_us(uint16_t delay_us);
void sleep_ms(uint16_t delay_ms);

void esc_motor_init(void);
void esc_motor_config(void);
void esc_motor_set_speed(uint8_t speed);


#endif