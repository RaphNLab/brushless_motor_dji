#include "timer_driver.h"
#include <libopencm3/stm32/timer.h>
 
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

void sleep_us(uint16_t delay_us)
{
	uint16_t start = timer_get_counter(TIM2);
	while((timer_get_counter(TIM2) - start) < delay_us);
}

void sleep_ms(uint16_t delay_ms)
{
	uint16_t i;
	for(i = 0; i < delay_ms; i++)
	{
		sleep_us(1000);
	}
}

/* Sleep timer: 1us tick */
void timer_sleep_setup(void)
{
	rcc_periph_clock_enable(RCC_TIM2);

	timer_set_period(TIM2, 5000); /* Generate timer overflow event every 2ms*/
	timer_set_prescaler(TIM2, 54); /* Counter increment every 1us*/
	timer_set_mode(TIM2, TIM_CR1_CKD_CK_INT, TIM_CR1_CMS_EDGE, TIM_CR1_DIR_UP);
	timer_enable_counter(TIM2);
}

/*Configure timer 1 to generate PWM*/
void esc_motor_init(void)
{
	rcc_periph_clock_enable(RCC_TIM1);
    timer_set_prescaler(TIM1, 15); /* 16MHz / 16 = 1MHz -> 1us tick */
	timer_set_period(TIM1, ESC_PERIOD_US - 1); /* 20ms period */
	timer_set_mode(TIM1, TIM_CR1_CKD_CK_INT, TIM_CR1_CMS_EDGE, TIM_CR1_DIR_UP); //Set up counting mode
	timer_set_oc_mode(TIM1, TIM_OC1, TIM_OCM_PWM1);// High while CNT < CCR1
	timer_enable_oc_preload(TIM1, TIM_OC1);
	timer_enable_preload(TIM1);
    timer_enable_break_main_output(TIM1);
	timer_set_oc_value(TIM1, TIM_OC1, ESC_MIN_US); /* Start at zero throttle so the ESC arms */
	/*Enable capture/compare*/
	timer_enable_oc_output(TIM1, TIM_OC1);
	timer_enable_counter(TIM1);
}
void esc_motor_config(void)
{
	rcc_periph_clock_enable(RCC_GPIOE);
	gpio_mode_setup(GPIOE, GPIO_MODE_AF, GPIO_PUPD_NONE, ESC_MOTOR_PIN);
	gpio_set_output_options(GPIOE, GPIO_OTYPE_PP, GPIO_OSPEED_50MHZ, ESC_MOTOR_PIN);
	//Setup PC7 as alternate function for TIM3_CH2
	gpio_set_af(GPIOE, GPIO_AF1, ESC_MOTOR_PIN);
}

void esc_motor_set_speed(uint8_t speed)
{
    if(speed > 100)
    {
        speed = 100;
    }
    uint32_t pulse_us = ESC_MIN_US + ((ESC_RANGE_US * speed) / 100);
    /* 1 tick = 1us */
    timer_set_oc_value(TIM1, TIM_OC1, pulse_us);
}

/**
 * Private functions
 *
*/
