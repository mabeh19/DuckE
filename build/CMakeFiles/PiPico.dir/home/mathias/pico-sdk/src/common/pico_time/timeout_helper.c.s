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
	.file	"timeout_helper.c"
	.text
	.section	.text.check_single_timeout_us,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	check_single_timeout_us, %function
check_single_timeout_us:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L7
	ldr	r3, [r0, #4]
	ldr	r1, [r2, #36]
	push	{r4, lr}
	ldr	r4, [r0]
	movs	r0, #0
	cmp	r3, r1
	bhi	.L2
	ldr	r2, [r2, #40]
	adds	r0, r0, #1
	cmp	r2, r4
	bcc	.L6
.L2:
	@ sp needed
	pop	{r4, pc}
.L6:
	subs	r3, r3, r1
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	uxtb	r0, r3
	b	.L2
.L8:
	.align	2
.L7:
	.word	1074085888
	.size	check_single_timeout_us, .-check_single_timeout_us
	.section	.text.check_per_iteration_timeout_us,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	check_per_iteration_timeout_us, %function
check_per_iteration_timeout_us:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L17
	ldr	r1, [r0, #4]
	ldr	r2, [r3, #36]
	push	{r4, r6, r7, lr}
	movs	r4, r0
	ldr	r6, [r0]
	cmp	r1, r2
	bhi	.L10
	ldr	r3, [r3, #40]
	movs	r0, #1
	cmp	r3, r6
	bcc	.L16
.L11:
	@ sp needed
	pop	{r4, r6, r7, pc}
.L16:
	cmp	r1, r2
	bne	.L11
.L10:
	ldr	r6, [r4, #8]
	ldr	r7, [r4, #12]
	bl	time_us_64
	adds	r0, r0, r6
	adcs	r1, r1, r7
	movs	r3, r1
	movs	r1, #128
	movs	r2, r0
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L12
	movs	r2, #1
	ldr	r3, .L17+4
	rsbs	r2, r2, #0
.L12:
	movs	r0, #0
	stmia	r4!, {r2, r3}
	b	.L11
.L18:
	.align	2
.L17:
	.word	1074085888
	.word	2147483647
	.size	check_per_iteration_timeout_us, .-check_per_iteration_timeout_us
	.section	.text.init_single_timeout_until,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	init_single_timeout_until
	.syntax unified
	.code	16
	.thumb_func
	.type	init_single_timeout_until, %function
init_single_timeout_until:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r2, [r0]
	str	r3, [r0, #4]
	@ sp needed
	ldr	r0, .L20
	bx	lr
.L21:
	.align	2
.L20:
	.word	check_single_timeout_us
	.size	init_single_timeout_until, .-init_single_timeout_until
	.section	.text.init_per_iteration_timeout_us,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	init_per_iteration_timeout_us
	.syntax unified
	.code	16
	.thumb_func
	.type	init_per_iteration_timeout_us, %function
init_per_iteration_timeout_us:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r6, r7, lr}
	movs	r6, r2
	movs	r7, r3
	movs	r4, r0
	bl	time_us_64
	adds	r0, r0, r6
	adcs	r1, r1, r7
	movs	r3, r1
	movs	r1, #128
	movs	r2, r0
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L23
	movs	r2, #1
	ldr	r3, .L25
	rsbs	r2, r2, #0
.L23:
	str	r6, [r4, #8]
	str	r7, [r4, #12]
	@ sp needed
	ldr	r0, .L25+4
	str	r2, [r4]
	str	r3, [r4, #4]
	pop	{r4, r6, r7, pc}
.L26:
	.align	2
.L25:
	.word	2147483647
	.word	check_per_iteration_timeout_us
	.size	init_per_iteration_timeout_us, .-init_per_iteration_timeout_us
	.ident	"GCC: (Arch Repository) 13.1.0"
