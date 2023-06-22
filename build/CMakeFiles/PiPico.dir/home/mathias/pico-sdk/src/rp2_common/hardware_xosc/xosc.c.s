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
	.file	"xosc.c"
	.text
	.section	.text.xosc_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	xosc_init
	.syntax unified
	.code	16
	.thumb_func
	.type	xosc_init, %function
xosc_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #170
	ldr	r2, .L5
	lsls	r3, r3, #4
	str	r3, [r2]
	movs	r3, #47
	ldr	r1, .L5+4
	str	r3, [r2, #12]
	ldr	r3, .L5+8
	str	r1, [r3]
.L2:
	ldr	r3, [r2, #4]
	cmp	r3, #0
	bge	.L2
	@ sp needed
	bx	lr
.L6:
	.align	2
.L5:
	.word	1073889280
	.word	16429056
	.word	1073897472
	.size	xosc_init, .-xosc_init
	.section	.text.xosc_disable,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	xosc_disable
	.syntax unified
	.code	16
	.thumb_func
	.type	xosc_disable, %function
xosc_disable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L10
	ldr	r3, .L10+4
	ldr	r1, [r2]
	ands	r1, r3
	ldr	r3, .L10+8
	orrs	r3, r1
	str	r3, [r2]
.L8:
	ldr	r3, [r2, #4]
	cmp	r3, #0
	blt	.L8
	@ sp needed
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073889280
	.word	-16773121
	.word	13754368
	.size	xosc_disable, .-xosc_disable
	.section	.text.xosc_dormant,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	xosc_dormant
	.syntax unified
	.code	16
	.thumb_func
	.type	xosc_dormant, %function
xosc_dormant:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L15
	ldr	r3, .L15+4
	str	r3, [r2, #8]
.L13:
	ldr	r3, [r2, #4]
	cmp	r3, #0
	bge	.L13
	@ sp needed
	bx	lr
.L16:
	.align	2
.L15:
	.word	1073889280
	.word	1668246881
	.size	xosc_dormant, .-xosc_dormant
	.ident	"GCC: (Arch Repository) 13.1.0"
