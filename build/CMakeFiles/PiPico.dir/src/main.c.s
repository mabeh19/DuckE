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
	.file	"main.c"
	.text
	.section	.rodata.task1.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Hello \000"
	.align	2
.LC2:
	.ascii	"world!\000"
	.section	.text.task1,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	task1
	.syntax unified
	.code	16
	.thumb_func
	.type	task1, %function
task1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L4
	ldr	r4, .L4+4
.L2:
	movs	r0, r5
	bl	printf
	movs	r0, #250
	lsls	r0, r0, #2
	bl	Scheduler_Sleep
	movs	r0, r4
	bl	puts
	movs	r0, #250
	lsls	r0, r0, #2
	bl	Scheduler_Sleep
	b	.L2
.L5:
	.align	2
.L4:
	.word	.LC0
	.word	.LC2
	.size	task1, .-task1
	.section	.rodata.task3.str1.4,"aMS",%progbits,1
	.align	2
.LC4:
	.ascii	"Hello Task3\000"
	.section	.text.task3,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	task3
	.syntax unified
	.code	16
	.thumb_func
	.type	task3, %function
task3:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L8
.L7:
	movs	r0, r4
	bl	puts
	movs	r0, #250
	lsls	r0, r0, #3
	bl	Scheduler_Sleep
	b	.L7
.L9:
	.align	2
.L8:
	.word	.LC4
	.size	task3, .-task3
	.section	.rodata.task2.str1.4,"aMS",%progbits,1
	.align	2
.LC6:
	.ascii	"Hello Task2\000"
	.section	.text.task2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	task2
	.syntax unified
	.code	16
	.thumb_func
	.type	task2, %function
task2:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L12
.L11:
	movs	r0, r4
	bl	puts
	movs	r0, #250
	lsls	r0, r0, #3
	bl	Scheduler_Sleep
	b	.L11
.L13:
	.align	2
.L12:
	.word	.LC6
	.size	task2, .-task2
	.section	.rodata.main.str1.4,"aMS",%progbits,1
	.align	2
.LC8:
	.ascii	"Starting scheduler...\000"
	.align	2
.LC14:
	.ascii	"Task 1\000"
	.align	2
.LC16:
	.ascii	"Task 1 created!\000"
	.align	2
.LC19:
	.ascii	"Task 2\000"
	.align	2
.LC21:
	.ascii	"Task 2 created!\000"
	.align	2
.LC24:
	.ascii	"Task 3\000"
	.align	2
.LC26:
	.ascii	"Task 3 created!\000"
	.section	.text.startup.main,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.type	main, %function
main:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #12
	bl	stdio_init_all
	ldr	r0, .L28
	bl	sleep_ms
	.syntax divided
@ 27 "/home/mathias/Documents/C/PiPico/src/main.c" 1
	 cpsie i

@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r0, .L28+4
	bl	puts
	ldr	r2, .L28+8
	ldr	r1, .L28+12
	ldr	r0, .L28+16
	bl	Scheduler_Initialize
	movs	r2, #0
	movs	r1, #128
	str	r2, [sp]
	ldr	r3, .L28+20
	ldr	r0, .L28+24
	adds	r2, r2, #1
	lsls	r1, r1, #5
	bl	Scheduler_CreateTask
	cmp	r0, #0
	beq	.L15
	ldr	r0, .L28+28
	bl	puts
.L15:
	movs	r2, #0
	movs	r1, #128
	str	r2, [sp]
	ldr	r3, .L28+32
	ldr	r0, .L28+36
	adds	r2, r2, #2
	lsls	r1, r1, #5
	bl	Scheduler_CreateTask
	cmp	r0, #0
	beq	.L16
	ldr	r0, .L28+40
	bl	puts
.L16:
	movs	r2, #0
	movs	r1, #128
	str	r2, [sp]
	ldr	r3, .L28+44
	ldr	r0, .L28+48
	adds	r2, r2, #3
	lsls	r1, r1, #5
	bl	Scheduler_CreateTask
	cmp	r0, #0
	beq	.L17
	ldr	r0, .L28+52
	bl	puts
.L17:
	bl	Scheduler_Start
.L18:
	b	.L18
.L29:
	.align	2
.L28:
	.word	5000
	.word	.LC8
	.word	free
	.word	realloc
	.word	malloc
	.word	task1
	.word	.LC14
	.word	.LC16
	.word	task2
	.word	.LC19
	.word	.LC21
	.word	task3
	.word	.LC24
	.word	.LC26
	.size	main, .-main
	.section	.text.turn_on_led,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	turn_on_led
	.syntax unified
	.code	16
	.thumb_func
	.type	turn_on_led, %function
turn_on_led:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	turn_on_led, .-turn_on_led
	.section	.text.turn_off_led,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	turn_off_led
	.syntax unified
	.code	16
	.thumb_func
	.type	turn_off_led, %function
turn_off_led:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	turn_off_led, .-turn_off_led
	.section	.text.blink,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	blink
	.syntax unified
	.code	16
	.thumb_func
	.type	blink, %function
blink:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	@ sp needed
	asrs	r5, r0, #31
	movs	r1, r5
	bl	sleep_us
	movs	r1, r5
	movs	r0, r4
	bl	sleep_us
	pop	{r4, r5, r6, pc}
	.size	blink, .-blink
	.ident	"GCC: (Arch Repository) 13.1.0"
