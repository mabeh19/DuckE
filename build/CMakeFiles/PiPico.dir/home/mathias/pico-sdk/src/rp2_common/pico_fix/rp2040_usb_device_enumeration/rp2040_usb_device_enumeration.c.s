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
	.file	"rp2040_usb_device_enumeration.c"
	.text
	.section	.text.rp2040_usb_device_enumeration_fix,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	rp2040_usb_device_enumeration_fix
	.syntax unified
	.code	16
	.thumb_func
	.type	rp2040_usb_device_enumeration_fix, %function
rp2040_usb_device_enumeration_fix:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	rp2040_usb_device_enumeration_fix, .-rp2040_usb_device_enumeration_fix
	.ident	"GCC: (Arch Repository) 13.1.0"
