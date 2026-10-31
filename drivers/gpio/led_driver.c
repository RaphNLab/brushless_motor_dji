#include "led_driver.h"
#include "systick.h"


/**
 * Data type, Constant and macro definitions
 *
*/

/**
 * Static data declaration
 *
*/

/**
 * Private function prototypes
 *
*/

/**
 * Public functions
 *
*/
void led_config(void)
{
	// rcc_clock_setup_hsi(&rcc_3v3[RCC_CLOCK_3V3_216MHZ]);
	rcc_periph_clock_enable(RCC_GPIOB);
	gpio_mode_setup(GPIOB, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, (LED1 | LED2 | LED3));
}


/**
 * @brief This function toggles an group of four LED in a heart beat frequency
 * @param delay unsigned int16 the delay time in ms
 * @return
*/
void led_heart_beat(uint16_t delay)
{
	gpio_toggle(GPIOB, (LED1 | LED2 | LED3));
	msleep(delay);
}


/**
 * Private functions
 *
*/

