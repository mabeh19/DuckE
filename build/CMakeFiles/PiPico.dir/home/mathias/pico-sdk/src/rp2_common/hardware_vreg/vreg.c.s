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
	.file	"vreg.c"
	.text
	.section	.text.vreg_set_voltage,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vreg_set_voltage
	.syntax unified
	.code	16
	.thumb_func
	.type	vreg_set_voltage, %function
vreg_set_voltage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	lsls	r0, r0, #4
	ldr	r3, [r3]
	ldr	r2, .L3+4
	eors	r0, r3
	movs	r3, #240
	@ sp needed
	ands	r3, r0
	str	r3, [r2]
	bx	lr
.L4:
	.align	2
.L3:
	.word	1074151424
	.word	1074155520
	.size	vreg_set_voltage, .-vreg_set_voltage
	.ident	"GCC: (Arch Repository) 13.1.0"
