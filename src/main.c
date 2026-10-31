#include "led_driver.h"
#include "systick.h"
#include "timer_driver.h"
#include <libopencm3/stm32/timer.h>


#if !defined(__SOFT_FP__) && defined(__ARM_FP)
  #warning "FPU is not initialized, but the project is compiling for an FPU. Please initialize the FPU before use."
#endif

int main(void)
{
// #if 0
// 	__asm volatile("LDR R1,=#0x20001000");
// 	__asm volatile("LDR R2,=#0x20001004");
// 	__asm volatile("LDR R1,[R2]");
// 	__asm volatile("ADD R0,R0,R1");
// 	__asm volatile("STR R0,[R2]");
// #endif

	// /* store 'val' in to R0*/
	// int val=50;
	// __asm volatile("MOV R0,%0": :"r"(val));

 	// /*read CONTROL register value in to control_reg vriable */
	// int control_reg;
	// __asm volatile("MRS %0,CONTROL": "=r"(control_reg) );


    // /* Read the value present at pointer p2 in to p1 */
	// int p1, *p2;
	
	// p2 = (int*)0x20000008;

	// __asm volatile("LDR %0,[%1]": "=r"(p1): "r"(p2));


	systick_ms_setup();
	led_config();
	esc_motor_init();
	esc_motor_config();

	/* Arm the ESC: hold zero throttle (1ms) for a few seconds */
	esc_motor_set_speed(0);
	msleep(3000);

	/* Spin up gently */
	for(uint8_t i = 0; i <= 8; i++)
	{
		esc_motor_set_speed(i);
		msleep(100);
	}

	while(1)
	{
		led_heart_beat(50);
	}
	return (0);
}

