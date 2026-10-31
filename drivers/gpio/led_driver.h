#ifndef LED_DRIVER_H_
#define LED_DRIVER_H_

#include "global.h"

#define GREEN_LED	GPIO12
#define ORANGE_LED	GPIO13
#define RED_LED		GPIO14
#define BLUE_LED	GPIO15


#define LED1	GPIO0	//PB0
#define LED2	GPIO7 	//PB7
#define LED3	GPIO14 	//PB14



typedef enum
{
	LED_LEFT = 0,
	LED_RIGTH
}blink_dir_t;

void led_config(void);
void led_heart_beat(uint16_t delay);


#endif
