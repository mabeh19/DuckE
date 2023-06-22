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
	.file	"platform.c"
	.text
	.section	.text.running_on_fpga,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	running_on_fpga
	.syntax unified
	.code	16
	.thumb_func
	.type	running_on_fpga, %function
running_on_fpga:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	@ sp needed
	ldr	r0, [r3]
	lsls	r0, r0, #30
	lsrs	r0, r0, #31
	bx	lr
.L4:
	.align	2
.L3:
	.word	1074184192
	.size	running_on_fpga, .-running_on_fpga
	.section	.text.rp2040_chip_version,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	rp2040_chip_version
	.syntax unified
	.code	16
	.thumb_func
	.type	rp2040_chip_version, %function
rp2040_chip_version:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #128
	@ sp needed
	lsls	r3, r3, #23
	ldr	r0, [r3]
	lsrs	r0, r0, #28
	bx	lr
	.size	rp2040_chip_version, .-rp2040_chip_version
	.ident	"GCC: (Arch Repository) 13.1.0"
