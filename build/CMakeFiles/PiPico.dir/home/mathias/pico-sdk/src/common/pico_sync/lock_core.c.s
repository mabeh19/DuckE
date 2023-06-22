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
	.file	"lock_core.c"
	.text
	.section	.text.lock_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	lock_init
	.syntax unified
	.code	16
	.thumb_func
	.type	lock_init, %function
lock_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	@ sp needed
	mov	ip, r3
	add	r1, r1, ip
	lsls	r1, r1, #2
	str	r1, [r0]
	bx	lr
.L4:
	.align	2
.L3:
	.word	872415296
	.size	lock_init, .-lock_init
	.ident	"GCC: (Arch Repository) 13.1.0"
