	.cpu cortex-m0plus
	.arch armv6s-m
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"tick.c"
	.text
	.global	__aeabi_uidiv
	.section	.text.Scheduler_ArmTimer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	Scheduler_ArmTimer
	.syntax unified
	.code	16
	.thumb_func
	.type	Scheduler_ArmTimer, %function
Scheduler_ArmTimer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r0, #5
	@ sp needed
	bl	clock_get_hz
	movs	r1, #10
	bl	__aeabi_uidiv
	ldr	r3, .L3
	subs	r0, r0, #1
	str	r0, [r3]
	pop	{r4, pc}
.L4:
	.align	2
.L3:
	.word	-536813548
	.size	Scheduler_ArmTimer, .-Scheduler_ArmTimer
	.section	.rodata.Scheduler_InitTick.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"Timer started!\000"
	.section	.text.Scheduler_InitTick,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	Scheduler_InitTick
	.syntax unified
	.code	16
	.thumb_func
	.type	Scheduler_InitTick, %function
Scheduler_InitTick:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, lr}
	ldr	r2, .L6
	ldr	r4, .L6+4
	movs	r0, #5
	@ sp needed
	str	r3, [r4]
	str	r3, [r2]
	bl	clock_get_hz
	movs	r1, #10
	bl	__aeabi_uidiv
	ldr	r3, .L6+8
	subs	r0, r0, #1
	str	r0, [r3]
	movs	r3, #7
	str	r3, [r4]
	movs	r3, #255
	movs	r0, #1
	ldr	r2, .L6+12
	lsls	r3, r3, #24
	ldr	r1, [r2]
	rsbs	r0, r0, #0
	orrs	r3, r1
	str	r3, [r2]
	ldr	r1, .L6+16
	bl	exception_set_exclusive_handler
	ldr	r0, .L6+20
	bl	puts
	pop	{r4, pc}
.L7:
	.align	2
.L6:
	.word	-536813544
	.word	-536813552
	.word	-536813548
	.word	-536810208
	.word	isr_systick
	.word	.LC1
	.size	Scheduler_InitTick, .-Scheduler_InitTick
	.ident	"GCC: (Arch Repository) 13.1.0"
