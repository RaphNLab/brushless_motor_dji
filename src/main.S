   1              		.cpu cortex-m7
   2              		.eabi_attribute 28, 1	@ Tag_ABI_VFP_args
   3              		.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
   4              		.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
   5              		.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
   6              		.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
   7              		.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
   8              		.eabi_attribute 26, 1	@ Tag_ABI_enum_size
   9              		.eabi_attribute 30, 6	@ Tag_ABI_optimization_goals
  10              		.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
  11              		.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
  12              		.file	"timer_driver.c"
  13              	@ GNU C99 (15:10.3-2021.07-4) version 10.3.1 20210621 (release) (arm-none-eabi)
  14              	@	compiled by GNU C version 11.2.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl v
  15              	
  16              	@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
  17              	@ options passed: 
  18              	@ -I /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/global
  19              	@ -I /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/gpio
  20              	@ -I /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/memory
  21              	@ -I /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/systick
  22              	@ -I /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer
  23              	@ -I /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/libopencm3/include
  24              	@ -imultilib thumb/v7e-m+dp/hard
  25              	@ -MD CMakeFiles/arm_cortex_m4_test.elf.dir/drivers/timer/timer_driver.c.d
  26              	@ -MF CMakeFiles/arm_cortex_m4_test.elf.dir/drivers/timer/timer_driver.c.obj.d
  27              	@ -MT CMakeFiles/arm_cortex_m4_test.elf.dir/drivers/timer/timer_driver.c.obj
  28              	@ -D__USES_INITFINI__ -D STM32F7
  29              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c
  30              	@ -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb
  31              	@ -mlibarch=armv7e-m+fp.dp -march=armv7e-m+fp.dp
  32              	@ -auxbase-strip CMakeFiles/arm_cortex_m4_test.elf.dir/drivers/timer/timer_driver.c.obj
  33              	@ -g3 -g -O0 -Wall -Wextra -std=c99 -fdata-sections -ffunction-sections
  34              	@ -ffreestanding -fverbose-asm
  35              	@ options enabled:  -faggressive-loop-optimizations -fallocation-dce
  36              	@ -fauto-inc-dec -fdata-sections -fdelete-null-pointer-checks
  37              	@ -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-symbols
  38              	@ -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
  39              	@ -ffunction-sections -fgcse-lm -fgnu-unique -fident -finline-atomics
  40              	@ -fipa-stack-alignment -fira-hoist-pressure -fira-share-save-slots
  41              	@ -fira-share-spill-slots -fivopts -fkeep-static-consts
  42              	@ -fleading-underscore -flifetime-dse -fmath-errno -fmerge-debug-strings
  43              	@ -fpeephole -fplt -fprefetch-loop-arrays -freg-struct-return
  44              	@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
  45              	@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
  46              	@ -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
  47              	@ -fsched-stalled-insns-dep -fsemantic-interposition -fshow-column
  48              	@ -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
  49              	@ -fssa-backprop -fstdarg-opt -fstrict-volatile-bitfields -fsync-libcalls
  50              	@ -ftrapping-math -ftree-cselim -ftree-forwprop -ftree-loop-if-convert
  51              	@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
  52              	@ -ftree-parallelize-loops= -ftree-phiprop -ftree-reassoc -ftree-scev-cprop
  53              	@ -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss
  54              	@ -masm-syntax-unified -mbe32 -mlittle-endian -mpic-data-is-text-relative
  55              	@ -msched-prolog -mthumb -munaligned-access -mvectorize-with-neon-quad
  56              	
  57              		.text
  58              	.Ltext0:
  59              		.cfi_sections	.debug_frame
  60              		.section	.text.sleep_us,"ax",%progbits
  61              		.align	1
  62              		.global	sleep_us
  63              		.arch armv7e-m
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv5-d16
  69              	sleep_us:
  70              	.LFB3:
  71              		.file 1 "/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c"
   1:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** #include "timer_driver.h"
   2:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** #include <libopencm3/stm32/timer.h>
   3:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****  
   4:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** /**
   5:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****  * Data type, Constant and macro definitions
   6:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****  *
   7:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** */
   8:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 
   9:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** /**
  10:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****  * Static data declaration
  11:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****  *
  12:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** */
  13:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 
  14:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** /**
  15:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****  * Private function prototypes
  16:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****  *
  17:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** */
  18:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 
  19:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** /**
  20:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****  * Public functions
  21:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****  *
  22:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** */
  23:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 
  24:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** void sleep_us(uint16_t delay_us)
  25:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** {
  72              		.loc 1 25 1
  73              		.cfi_startproc
  74              		@ args = 0, pretend = 0, frame = 16
  75              		@ frame_needed = 1, uses_anonymous_args = 0
  76 0000 80B5     		push	{r7, lr}	@
  77              		.cfi_def_cfa_offset 8
  78              		.cfi_offset 7, -8
  79              		.cfi_offset 14, -4
  80 0002 84B0     		sub	sp, sp, #16	@,,
  81              		.cfi_def_cfa_offset 24
  82 0004 00AF     		add	r7, sp, #0	@,,
  83              		.cfi_def_cfa_register 7
  84 0006 0346     		mov	r3, r0	@ tmp118, delay_us
  85 0008 FB80     		strh	r3, [r7, #6]	@ movhi	@ tmp119, delay_us
  86              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:26: 	uint16_
  26:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	uint16_t start = timer_get_counter(TIM2);
  87              		.loc 1 26 19
  88 000a 4FF08040 		mov	r0, #1073741824	@,
  89 000e FFF7FEFF 		bl	timer_get_counter		@
  90 0012 0346     		mov	r3, r0	@ _1,
  91              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:26: 	uint16_
  92              		.loc 1 26 11
  93 0014 FB81     		strh	r3, [r7, #14]	@ movhi	@ tmp120, start
  94              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:27: 	while((
  27:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	while((timer_get_counter(TIM2) - start) < delay_us);
  95              		.loc 1 27 7
  96 0016 00BF     		nop	
  97              	.L2:
  98              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:27: 	while((
  99              		.loc 1 27 9 discriminator 1
 100 0018 4FF08040 		mov	r0, #1073741824	@,
 101 001c FFF7FEFF 		bl	timer_get_counter		@
 102 0020 0246     		mov	r2, r0	@ _2,
 103              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:27: 	while((
 104              		.loc 1 27 33 discriminator 1
 105 0022 FB89     		ldrh	r3, [r7, #14]	@ _3, start
 106 0024 D21A     		subs	r2, r2, r3	@ _4, _2, _3
 107              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:27: 	while((
 108              		.loc 1 27 42 discriminator 1
 109 0026 FB88     		ldrh	r3, [r7, #6]	@ _5, delay_us
 110              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:27: 	while((
 111              		.loc 1 27 7 discriminator 1
 112 0028 9A42     		cmp	r2, r3	@ _4, _5
 113 002a F5D3     		bcc	.L2		@,
 114              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:28: }
  28:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** }
 115              		.loc 1 28 1
 116 002c 00BF     		nop	
 117 002e 00BF     		nop	
 118 0030 1037     		adds	r7, r7, #16	@,,
 119              		.cfi_def_cfa_offset 8
 120 0032 BD46     		mov	sp, r7	@,
 121              		.cfi_def_cfa_register 13
 122              		@ sp needed	@
 123 0034 80BD     		pop	{r7, pc}	@
 124              		.cfi_endproc
 125              	.LFE3:
 127              		.section	.text.sleep_ms,"ax",%progbits
 128              		.align	1
 129              		.global	sleep_ms
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu fpv5-d16
 135              	sleep_ms:
 136              	.LFB4:
  29:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 
  30:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** void sleep_ms(uint16_t delay_ms)
  31:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** {
 137              		.loc 1 31 1
 138              		.cfi_startproc
 139              		@ args = 0, pretend = 0, frame = 16
 140              		@ frame_needed = 1, uses_anonymous_args = 0
 141 0000 80B5     		push	{r7, lr}	@
 142              		.cfi_def_cfa_offset 8
 143              		.cfi_offset 7, -8
 144              		.cfi_offset 14, -4
 145 0002 84B0     		sub	sp, sp, #16	@,,
 146              		.cfi_def_cfa_offset 24
 147 0004 00AF     		add	r7, sp, #0	@,,
 148              		.cfi_def_cfa_register 7
 149 0006 0346     		mov	r3, r0	@ tmp114, delay_ms
 150 0008 FB80     		strh	r3, [r7, #6]	@ movhi	@ tmp115, delay_ms
 151              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:33: 	for(i =
  32:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	uint16_t i;
  33:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	for(i = 0; i < delay_ms; i++)
 152              		.loc 1 33 8
 153 000a 0023     		movs	r3, #0	@ tmp117,
 154 000c FB81     		strh	r3, [r7, #14]	@ movhi	@ tmp116, i
 155              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:33: 	for(i =
 156              		.loc 1 33 2
 157 000e 06E0     		b	.L4		@
 158              	.L5:
 159              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:35: 		sleep_
  34:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	{
  35:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 		sleep_us(1000);
 160              		.loc 1 35 3 discriminator 3
 161 0010 4FF47A70 		mov	r0, #1000	@,
 162 0014 FFF7FEFF 		bl	sleep_us		@
 163              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:33: 	for(i =
  33:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	{
 164              		.loc 1 33 28 discriminator 3
 165 0018 FB89     		ldrh	r3, [r7, #14]	@ i.0_1, i
 166 001a 0133     		adds	r3, r3, #1	@ tmp118, i.0_1,
 167 001c FB81     		strh	r3, [r7, #14]	@ movhi	@ tmp119, i
 168              	.L4:
 169              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:33: 	for(i =
  33:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	{
 170              		.loc 1 33 2 discriminator 1
 171 001e FA89     		ldrh	r2, [r7, #14]	@ tmp120, i
 172 0020 FB88     		ldrh	r3, [r7, #6]	@ tmp121, delay_ms
 173 0022 9A42     		cmp	r2, r3	@ tmp120, tmp121
 174 0024 F4D3     		bcc	.L5		@,
 175              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:37: }
  36:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	}
  37:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** }
 176              		.loc 1 37 1
 177 0026 00BF     		nop	
 178 0028 00BF     		nop	
 179 002a 1037     		adds	r7, r7, #16	@,,
 180              		.cfi_def_cfa_offset 8
 181 002c BD46     		mov	sp, r7	@,
 182              		.cfi_def_cfa_register 13
 183              		@ sp needed	@
 184 002e 80BD     		pop	{r7, pc}	@
 185              		.cfi_endproc
 186              	.LFE4:
 188              		.section	.text.timer_sleep_setup,"ax",%progbits
 189              		.align	1
 190              		.global	timer_sleep_setup
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu fpv5-d16
 196              	timer_sleep_setup:
 197              	.LFB5:
  38:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 
  39:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** /* Sleep timer: 1us tick */
  40:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** void timer_sleep_setup(void)
  41:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** {
 198              		.loc 1 41 1
 199              		.cfi_startproc
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 1, uses_anonymous_args = 0
 202 0000 80B5     		push	{r7, lr}	@
 203              		.cfi_def_cfa_offset 8
 204              		.cfi_offset 7, -8
 205              		.cfi_offset 14, -4
 206 0002 00AF     		add	r7, sp, #0	@,,
 207              		.cfi_def_cfa_register 7
 208              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:42: 	rcc_per
  42:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	rcc_periph_clock_enable(RCC_TIM2);
 209              		.loc 1 42 2
 210 0004 4FF40060 		mov	r0, #2048	@,
 211 0008 FFF7FEFF 		bl	rcc_periph_clock_enable		@
 212              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:44: 	timer_s
  43:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 
  44:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	timer_set_period(TIM2, 5000); /* Generate timer overflow event every 2ms*/
 213              		.loc 1 44 2
 214 000c 41F28831 		movw	r1, #5000	@,
 215 0010 4FF08040 		mov	r0, #1073741824	@,
 216 0014 FFF7FEFF 		bl	timer_set_period		@
 217              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:45: 	timer_s
  45:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	timer_set_prescaler(TIM2, 54); /* Counter increment every 1us*/
 218              		.loc 1 45 2
 219 0018 3621     		movs	r1, #54	@,
 220 001a 4FF08040 		mov	r0, #1073741824	@,
 221 001e FFF7FEFF 		bl	timer_set_prescaler		@
 222              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:46: 	timer_s
  46:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	timer_set_mode(TIM2, TIM_CR1_CKD_CK_INT, TIM_CR1_CMS_EDGE, TIM_CR1_DIR_UP);
 223              		.loc 1 46 2
 224 0022 0023     		movs	r3, #0	@,
 225 0024 0022     		movs	r2, #0	@,
 226 0026 0021     		movs	r1, #0	@,
 227 0028 4FF08040 		mov	r0, #1073741824	@,
 228 002c FFF7FEFF 		bl	timer_set_mode		@
 229              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:47: 	timer_e
  47:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	timer_enable_counter(TIM2);
 230              		.loc 1 47 2
 231 0030 4FF08040 		mov	r0, #1073741824	@,
 232 0034 FFF7FEFF 		bl	timer_enable_counter		@
 233              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:48: }
  48:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** }
 234              		.loc 1 48 1
 235 0038 00BF     		nop	
 236 003a 80BD     		pop	{r7, pc}	@
 237              		.cfi_endproc
 238              	.LFE5:
 240              		.section	.text.esc_motor_init,"ax",%progbits
 241              		.align	1
 242              		.global	esc_motor_init
 243              		.syntax unified
 244              		.thumb
 245              		.thumb_func
 246              		.fpu fpv5-d16
 248              	esc_motor_init:
 249              	.LFB6:
  49:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 
  50:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** /*Configure timer 1 to generate PWM*/
  51:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** void esc_motor_init(void)
  52:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** {
 250              		.loc 1 52 1
 251              		.cfi_startproc
 252              		@ args = 0, pretend = 0, frame = 0
 253              		@ frame_needed = 1, uses_anonymous_args = 0
 254 0000 80B5     		push	{r7, lr}	@
 255              		.cfi_def_cfa_offset 8
 256              		.cfi_offset 7, -8
 257              		.cfi_offset 14, -4
 258 0002 00AF     		add	r7, sp, #0	@,,
 259              		.cfi_def_cfa_register 7
 260              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:53: 	rcc_per
  53:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	rcc_periph_clock_enable(RCC_TIM1);
 261              		.loc 1 53 2
 262 0004 4FF40860 		mov	r0, #2176	@,
 263 0008 FFF7FEFF 		bl	rcc_periph_clock_enable		@
 264              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:54:     time
  54:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****     timer_set_prescaler(TIM1, 15); /* 16MHz / 16 = 1MHz -> 1us tick */
 265              		.loc 1 54 5
 266 000c 0F21     		movs	r1, #15	@,
 267 000e 1648     		ldr	r0, .L8	@,
 268 0010 FFF7FEFF 		bl	timer_set_prescaler		@
 269              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:55: 	timer_s
  55:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	timer_set_period(TIM1, ESC_PERIOD_US - 1); /* 20ms period */
 270              		.loc 1 55 2
 271 0014 44F61F61 		movw	r1, #19999	@,
 272 0018 1348     		ldr	r0, .L8	@,
 273 001a FFF7FEFF 		bl	timer_set_period		@
 274              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:56: 	timer_s
  56:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	timer_set_mode(TIM1, TIM_CR1_CKD_CK_INT, TIM_CR1_CMS_EDGE, TIM_CR1_DIR_UP); //Set up counting mode
 275              		.loc 1 56 2
 276 001e 0023     		movs	r3, #0	@,
 277 0020 0022     		movs	r2, #0	@,
 278 0022 0021     		movs	r1, #0	@,
 279 0024 1048     		ldr	r0, .L8	@,
 280 0026 FFF7FEFF 		bl	timer_set_mode		@
 281              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:57: 	timer_s
  57:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	timer_set_oc_mode(TIM1, TIM_OC1, TIM_OCM_PWM1);// High while CNT < CCR1
 282              		.loc 1 57 2
 283 002a 0622     		movs	r2, #6	@,
 284 002c 0021     		movs	r1, #0	@,
 285 002e 0E48     		ldr	r0, .L8	@,
 286 0030 FFF7FEFF 		bl	timer_set_oc_mode		@
 287              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:58: 	timer_e
  58:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	timer_enable_oc_preload(TIM1, TIM_OC1);
 288              		.loc 1 58 2
 289 0034 0021     		movs	r1, #0	@,
 290 0036 0C48     		ldr	r0, .L8	@,
 291 0038 FFF7FEFF 		bl	timer_enable_oc_preload		@
 292              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:59: 	timer_e
  59:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	timer_enable_preload(TIM1);
 293              		.loc 1 59 2
 294 003c 0A48     		ldr	r0, .L8	@,
 295 003e FFF7FEFF 		bl	timer_enable_preload		@
 296              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:60:     time
  60:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****     timer_enable_break_main_output(TIM1);
 297              		.loc 1 60 5
 298 0042 0948     		ldr	r0, .L8	@,
 299 0044 FFF7FEFF 		bl	timer_enable_break_main_output		@
 300              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:61: 	timer_s
  61:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	timer_set_oc_value(TIM1, TIM_OC1, ESC_MIN_US); /* Start at zero throttle so the ESC arms */
 301              		.loc 1 61 2
 302 0048 4FF47A72 		mov	r2, #1000	@,
 303 004c 0021     		movs	r1, #0	@,
 304 004e 0648     		ldr	r0, .L8	@,
 305 0050 FFF7FEFF 		bl	timer_set_oc_value		@
 306              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:63: 	timer_e
  62:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	/*Enable capture/compare*/
  63:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	timer_enable_oc_output(TIM1, TIM_OC1);
 307              		.loc 1 63 2
 308 0054 0021     		movs	r1, #0	@,
 309 0056 0448     		ldr	r0, .L8	@,
 310 0058 FFF7FEFF 		bl	timer_enable_oc_output		@
 311              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:64: 	timer_e
  64:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	timer_enable_counter(TIM1);
 312              		.loc 1 64 2
 313 005c 0248     		ldr	r0, .L8	@,
 314 005e FFF7FEFF 		bl	timer_enable_counter		@
 315              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:65: }
  65:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** }
 316              		.loc 1 65 1
 317 0062 00BF     		nop	
 318 0064 80BD     		pop	{r7, pc}	@
 319              	.L9:
 320 0066 00BF     		.align	2
 321              	.L8:
 322 0068 00000140 		.word	1073807360
 323              		.cfi_endproc
 324              	.LFE6:
 326              		.section	.text.esc_motor_config,"ax",%progbits
 327              		.align	1
 328              		.global	esc_motor_config
 329              		.syntax unified
 330              		.thumb
 331              		.thumb_func
 332              		.fpu fpv5-d16
 334              	esc_motor_config:
 335              	.LFB7:
  66:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** void esc_motor_config(void)
  67:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** {
 336              		.loc 1 67 1
 337              		.cfi_startproc
 338              		@ args = 0, pretend = 0, frame = 0
 339              		@ frame_needed = 1, uses_anonymous_args = 0
 340 0000 80B5     		push	{r7, lr}	@
 341              		.cfi_def_cfa_offset 8
 342              		.cfi_offset 7, -8
 343              		.cfi_offset 14, -4
 344 0002 00AF     		add	r7, sp, #0	@,,
 345              		.cfi_def_cfa_register 7
 346              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:68: 	rcc_per
  68:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	rcc_periph_clock_enable(RCC_GPIOE);
 347              		.loc 1 68 2
 348 0004 40F20460 		movw	r0, #1540	@,
 349 0008 FFF7FEFF 		bl	rcc_periph_clock_enable		@
 350              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:69: 	gpio_mo
  69:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	gpio_mode_setup(GPIOE, GPIO_MODE_AF, GPIO_PUPD_NONE, ESC_MOTOR_PIN);
 351              		.loc 1 69 2
 352 000c 4FF40073 		mov	r3, #512	@,
 353 0010 0022     		movs	r2, #0	@,
 354 0012 0221     		movs	r1, #2	@,
 355 0014 0848     		ldr	r0, .L11	@,
 356 0016 FFF7FEFF 		bl	gpio_mode_setup		@
 357              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:70: 	gpio_se
  70:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	gpio_set_output_options(GPIOE, GPIO_OTYPE_PP, GPIO_OSPEED_50MHZ, ESC_MOTOR_PIN);
 358              		.loc 1 70 2
 359 001a 4FF40073 		mov	r3, #512	@,
 360 001e 0222     		movs	r2, #2	@,
 361 0020 0021     		movs	r1, #0	@,
 362 0022 0548     		ldr	r0, .L11	@,
 363 0024 FFF7FEFF 		bl	gpio_set_output_options		@
 364              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:72: 	gpio_se
  71:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	//Setup PC7 as alternate function for TIM3_CH2
  72:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 	gpio_set_af(GPIOE, GPIO_AF1, ESC_MOTOR_PIN);
 365              		.loc 1 72 2
 366 0028 4FF40072 		mov	r2, #512	@,
 367 002c 0121     		movs	r1, #1	@,
 368 002e 0248     		ldr	r0, .L11	@,
 369 0030 FFF7FEFF 		bl	gpio_set_af		@
 370              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:73: }
  73:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** }
 371              		.loc 1 73 1
 372 0034 00BF     		nop	
 373 0036 80BD     		pop	{r7, pc}	@
 374              	.L12:
 375              		.align	2
 376              	.L11:
 377 0038 00100240 		.word	1073876992
 378              		.cfi_endproc
 379              	.LFE7:
 381              		.section	.text.esc_motor_set_speed,"ax",%progbits
 382              		.align	1
 383              		.global	esc_motor_set_speed
 384              		.syntax unified
 385              		.thumb
 386              		.thumb_func
 387              		.fpu fpv5-d16
 389              	esc_motor_set_speed:
 390              	.LFB8:
  74:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** 
  75:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** void esc_motor_set_speed(uint8_t speed)
  76:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** {
 391              		.loc 1 76 1
 392              		.cfi_startproc
 393              		@ args = 0, pretend = 0, frame = 16
 394              		@ frame_needed = 1, uses_anonymous_args = 0
 395 0000 80B5     		push	{r7, lr}	@
 396              		.cfi_def_cfa_offset 8
 397              		.cfi_offset 7, -8
 398              		.cfi_offset 14, -4
 399 0002 84B0     		sub	sp, sp, #16	@,,
 400              		.cfi_def_cfa_offset 24
 401 0004 00AF     		add	r7, sp, #0	@,,
 402              		.cfi_def_cfa_register 7
 403 0006 0346     		mov	r3, r0	@ tmp116, speed
 404 0008 FB71     		strb	r3, [r7, #7]	@ tmp117, speed
 405              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:77:     if(s
  77:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****     if(speed > 100)
 406              		.loc 1 77 7
 407 000a FB79     		ldrb	r3, [r7, #7]	@ zero_extendqisi2	@ tmp120, speed
 408 000c 642B     		cmp	r3, #100	@ tmp120,
 409 000e 01D9     		bls	.L14		@,
 410              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:79:         
  78:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****     {
  79:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****         speed = 100;
 411              		.loc 1 79 15
 412 0010 6423     		movs	r3, #100	@ tmp121,
 413 0012 FB71     		strb	r3, [r7, #7]	@ tmp122, speed
 414              	.L14:
 415              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:81:     uint
  80:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****     }
  81:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****     uint32_t pulse_us = ESC_MIN_US + ((ESC_RANGE_US * speed) / 100);
 416              		.loc 1 81 62
 417 0014 FA79     		ldrb	r2, [r7, #7]	@ zero_extendqisi2	@ _1, speed
 418 0016 1346     		mov	r3, r2	@ tmp123, _1
 419 0018 9B00     		lsls	r3, r3, #2	@ tmp123, tmp123,
 420 001a 1344     		add	r3, r3, r2	@ tmp123, _1
 421 001c 5B00     		lsls	r3, r3, #1	@ tmp124, tmp123,
 422              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:81:     uint
 423              		.loc 1 81 36
 424 001e 03F57A73 		add	r3, r3, #1000	@ _3, _2,
 425              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:81:     uint
 426              		.loc 1 81 14
 427 0022 FB60     		str	r3, [r7, #12]	@ _3, pulse_us
 428              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:83:     time
  82:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****     /* 1 tick = 1us */
  83:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c ****     timer_set_oc_value(TIM1, TIM_OC1, pulse_us);
 429              		.loc 1 83 5
 430 0024 FA68     		ldr	r2, [r7, #12]	@, pulse_us
 431 0026 0021     		movs	r1, #0	@,
 432 0028 0348     		ldr	r0, .L15	@,
 433 002a FFF7FEFF 		bl	timer_set_oc_value		@
 434              	@ /home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c:84: }
  84:/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/drivers/timer/timer_driver.c **** }
 435              		.loc 1 84 1
 436 002e 00BF     		nop	
 437 0030 1037     		adds	r7, r7, #16	@,,
 438              		.cfi_def_cfa_offset 8
 439 0032 BD46     		mov	sp, r7	@,
 440              		.cfi_def_cfa_register 13
 441              		@ sp needed	@
 442 0034 80BD     		pop	{r7, pc}	@
 443              	.L16:
 444 0036 00BF     		.align	2
 445              	.L15:
 446 0038 00000140 		.word	1073807360
 447              		.cfi_endproc
 448              	.LFE8:
 450              		.text
 451              	.Letext0:
 452              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 453              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 454              		.file 4 "/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/libopencm3/include/libopencm3/stm
 455              		.file 5 "/home/silvere/Work/Tuto/STM32_Projects/STM32F7/Template/libopencm3/include/libopencm3/stm
DEFINED SYMBOLS
                            *ABS*:0000000000000000 timer_driver.c
     /tmp/ccpVyKld.s:61     .text.sleep_us:0000000000000000 $t
     /tmp/ccpVyKld.s:69     .text.sleep_us:0000000000000000 sleep_us
     /tmp/ccpVyKld.s:128    .text.sleep_ms:0000000000000000 $t
     /tmp/ccpVyKld.s:135    .text.sleep_ms:0000000000000000 sleep_ms
     /tmp/ccpVyKld.s:189    .text.timer_sleep_setup:0000000000000000 $t
     /tmp/ccpVyKld.s:196    .text.timer_sleep_setup:0000000000000000 timer_sleep_setup
     /tmp/ccpVyKld.s:241    .text.esc_motor_init:0000000000000000 $t
     /tmp/ccpVyKld.s:248    .text.esc_motor_init:0000000000000000 esc_motor_init
     /tmp/ccpVyKld.s:322    .text.esc_motor_init:0000000000000068 $d
     /tmp/ccpVyKld.s:327    .text.esc_motor_config:0000000000000000 $t
     /tmp/ccpVyKld.s:334    .text.esc_motor_config:0000000000000000 esc_motor_config
     /tmp/ccpVyKld.s:377    .text.esc_motor_config:0000000000000038 $d
     /tmp/ccpVyKld.s:382    .text.esc_motor_set_speed:0000000000000000 $t
     /tmp/ccpVyKld.s:389    .text.esc_motor_set_speed:0000000000000000 esc_motor_set_speed
     /tmp/ccpVyKld.s:446    .text.esc_motor_set_speed:0000000000000038 $d
                           .group:0000000000000000 wm4.0.9dde8e95e6092cb030e087570b2eb433
                           .group:0000000000000000 wm4._newlib_version.h.4.1ef4e12f167f8b69d7c30054be56050d
                           .group:0000000000000000 wm4.newlib.h.21.1ae2897bc09bbe4bc80ffb801fb02432
                           .group:0000000000000000 wm4.ieeefp.h.77.3f06799abf5dd88bdddee084775a1223
                           .group:0000000000000000 wm4.features.h.22.0ca0b2e469d5b0fcf64dfa21c188c8f3
                           .group:0000000000000000 wm4.config.h.224.c701144a7b0518c6ee9b9b5465b79f81
                           .group:0000000000000000 wm4._ansi.h.31.de524f58584151836e90d8620a16f8e8
                           .group:0000000000000000 wm4.stdio.h.31.7c0e28c411445f3f9c5b11accf882760
                           .group:0000000000000000 wm4._default_types.h.6.959254cf5f09734ea7516c89e8bb21bd
                           .group:0000000000000000 wm4.stddef.h.181.c3f52a3b0f4c288bddb5dda1562858e2
                           .group:0000000000000000 wm4.cdefs.h.49.3d0fe8ea14e93bda8c589d4f684b21b8
                           .group:0000000000000000 wm4.stddef.h.39.c161261b198ee3a963897077fd6fa59f
                           .group:0000000000000000 wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6
                           .group:0000000000000000 wm4._types.h.20.dd0d04dca3800a0d2a6129b87f3adbb2
                           .group:0000000000000000 wm4.stddef.h.155.3588ebfdd1e8c7ede80509bb9c3b8009
                           .group:0000000000000000 wm4._types.h.127.34941de1b2539d59d5cac00e0dd27a45
                           .group:0000000000000000 wm4.reent.h.17.e292bf8b0bec6c96e131a54347145a30
                           .group:0000000000000000 wm4.lock.h.2.c0958401bd0ce484d507ee19aacab817
                           .group:0000000000000000 wm4.reent.h.77.dcd6129ff07fe81bd5636db29abe53b2
                           .group:0000000000000000 wm4.types.h.40.8b6acba56cefbb11746718204edc8f5e
                           .group:0000000000000000 wm4._stdint.h.10.c24fa3af3bc1706662bb5593a907e841
                           .group:0000000000000000 wm4.types.h.98.130d89e96751ac000105a0b2b27ceff8
                           .group:0000000000000000 wm4.stdio.h.2.4aa87247282eca6c8f36f9de33d8df1a
                           .group:0000000000000000 wm4.stdio.h.81.2a55589bfa3ee24eeb84e3c79458e4a9
                           .group:0000000000000000 wm4.stdint.h.29.6d480f4ba0f60596e88234283d42444f
                           .group:0000000000000000 wm4.string.h.8.c4b8571ce60dff2817f43fec8b86aecd
                           .group:0000000000000000 wm4.stddef.h.155.ba788add86a0e365f264484f110c3c29
                           .group:0000000000000000 wm4.errno.h.2.ba016d646105af6cad23be83630b6a3f
                           .group:0000000000000000 wm4.errno.h.9.1ecd7b1049497a0ab61da0f6cbd4b0c6
                           .group:0000000000000000 wm4.unistd.h.2.39165d5b7784d1815ef4b0c4be6df560
                           .group:0000000000000000 wm4.unistd.h.324.257b90499fdd0ace1d1139506d284777
                           .group:0000000000000000 wm4.math.h.13.46aae005248b990f7e6d2178bf848d49
                           .group:0000000000000000 wm4.stdlib.h.13.4ed386f5c1a80d71e72172885d946ef2
                           .group:0000000000000000 wm4.stdlib.h.56.b4ddaf162082f284ba35b4444af99a9a
                           .group:0000000000000000 wm4.common.h.21.c9066c2f6b12c71b40226ea6107829a4
                           .group:0000000000000000 wm4.stdbool.h.29.07dce69c3b78884144b7f7bd19483461
                           .group:0000000000000000 wm4.common.h.67.7078fa5b6ba10a2783937983681b6c24
                           .group:0000000000000000 wm4.memorymap.h.21.8c90486dae5eea2d8efddd23fe5d09d9
                           .group:0000000000000000 wm4.memorymap.h.26.bea6318104dd6e05b39c6e53449db2b7
                           .group:0000000000000000 wm4.pwr.h.35.86f304a0e3ebaca4db0652b61ca7f988
                           .group:0000000000000000 wm4.rcc.h.45.44139ff7ebc831ccd4b0fb08b14c6f4c
                           .group:0000000000000000 wm4.nvic.h.38.3b30e3268bee285344f6b283a9023580
                           .group:0000000000000000 wm4.nvic.h.16.170beba9167908c3c530960cfdec577d
                           .group:0000000000000000 wm4.gpio_common_all.h.37.fedbbcb9179f773c905aa3c3e4b7dbdd
                           .group:0000000000000000 wm4.gpio_common_f234.h.48.1db4d0a0536896711e20c0a147f92021
                           .group:0000000000000000 wm4.gpio_common_f24.h.48.d7799bf98ecad7663b4b299525c33e1b
                           .group:0000000000000000 wm4.usart_common_all.h.35.bd3c3b47d5858b45f68435b934dd532e
                           .group:0000000000000000 wm4.usart_common_v2.h.33.41e36e260b5c319aa7b0ed20999898ff
                           .group:0000000000000000 wm4.usart.h.43.55cd123cc291e1c0addc78055be937df
                           .group:0000000000000000 wm4.timer_driver.h.6.e1aee10d69d40ff438a41212221ce4ec
                           .group:0000000000000000 wm4.timer_common_all.h.38.1e06b1c38b4fa3b42e65fafbbc60bcfd

UNDEFINED SYMBOLS
timer_get_counter
rcc_periph_clock_enable
timer_set_period
timer_set_prescaler
timer_set_mode
timer_enable_counter
timer_set_oc_mode
timer_enable_oc_preload
timer_enable_preload
timer_enable_break_main_output
timer_set_oc_value
timer_enable_oc_output
gpio_mode_setup
gpio_set_output_options
gpio_set_af
