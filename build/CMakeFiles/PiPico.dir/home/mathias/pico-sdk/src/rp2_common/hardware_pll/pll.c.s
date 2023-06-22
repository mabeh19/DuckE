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
	.file	"pll.c"
	.text
	.global	__aeabi_uidiv
	.section	.text.pll_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	pll_init
	.syntax unified
	.code	16
	.thumb_func
	.type	pll_init, %function
pll_init:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	movs	r0, #12
	movs	r7, r2
	movs	r6, r3
	movs	r5, r1
	bl	__aeabi_uidiv
	lsls	r3, r0, #5
	subs	r3, r3, r0
	lsls	r1, r3, #6
	subs	r1, r1, r3
	lsls	r1, r1, #3
	adds	r1, r1, r0
	lsls	r1, r1, #6
	movs	r0, r7
	bl	__aeabi_uidiv
	ldr	r3, [sp, #24]
	lsls	r7, r6, #16
	lsls	r3, r3, #12
	orrs	r7, r3
	ldr	r3, [r4]
	cmp	r3, #0
	blt	.L11
.L2:
	ldr	r3, .L12
	ldr	r6, .L12+4
	adds	r2, r4, r3
	subs	r3, r2, #1
	sbcs	r2, r2, r3
	movs	r3, #128
	lsls	r3, r3, #6
	mov	ip, r3
	rsbs	r2, r2, #0
	lsrs	r2, r2, #12
	ldr	r3, .L12+8
	lsls	r2, r2, #12
	add	r2, r2, ip
	str	r2, [r3]
	ldr	r3, .L12+12
	str	r2, [r3]
.L5:
	movs	r3, r2
	ldr	r1, [r6, #8]
	bics	r3, r1
	bne	.L5
	movs	r3, #192
	adds	r2, r4, #4
	lsls	r3, r3, #6
	orrs	r3, r2
	movs	r2, #33
	str	r5, [r4]
	str	r0, [r4, #8]
	str	r2, [r3]
.L6:
	ldr	r2, [r4]
	cmp	r2, #0
	bge	.L6
	movs	r2, #8
	str	r7, [r4, #12]
	str	r2, [r3]
.L1:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L11:
	movs	r3, #63
	ldr	r2, [r4]
	ands	r3, r2
	cmp	r3, r5
	bne	.L2
	ldr	r3, [r4, #8]
	lsls	r3, r3, #20
	lsrs	r3, r3, #20
	cmp	r3, r0
	bne	.L2
	movs	r2, #238
	ldr	r3, [r4, #12]
	lsls	r2, r2, #11
	ands	r3, r2
	cmp	r3, r7
	bne	.L2
	b	.L1
.L13:
	.align	2
.L12:
	.word	-1073922048
	.word	1073790976
	.word	1073799168
	.word	1073803264
	.size	pll_init, .-pll_init
	.section	.text.pll_deinit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	pll_deinit
	.syntax unified
	.code	16
	.thumb_func
	.type	pll_deinit, %function
pll_deinit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #45
	@ sp needed
	str	r3, [r0, #4]
	bx	lr
	.size	pll_deinit, .-pll_deinit
	.ident	"GCC: (Arch Repository) 13.1.0"
