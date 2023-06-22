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
	.file	"stdlib.c"
	.text
	.section	.text.set_sys_clock_48mhz,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	set_sys_clock_48mhz
	.syntax unified
	.code	16
	.thumb_func
	.type	set_sys_clock_48mhz, %function
set_sys_clock_48mhz:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	bl	running_on_fpga
	cmp	r0, #0
	beq	.L4
.L1:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L4:
	ldr	r4, .L5
	movs	r2, #1
	movs	r3, r4
	movs	r1, #1
	str	r4, [sp]
	adds	r0, r0, #5
	bl	clock_configure
	ldr	r0, .L5+4
	bl	pll_deinit
	movs	r3, r4
	movs	r2, #0
	movs	r1, #0
	str	r4, [sp]
	movs	r0, #6
	bl	clock_configure
	b	.L1
.L6:
	.align	2
.L5:
	.word	48000000
	.word	1073905664
	.size	set_sys_clock_48mhz, .-set_sys_clock_48mhz
	.global	__aeabi_uidiv
	.section	.text.set_sys_clock_pll,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	set_sys_clock_pll
	.syntax unified
	.code	16
	.thumb_func
	.type	set_sys_clock_pll, %function
set_sys_clock_pll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	movs	r5, r0
	movs	r6, r1
	movs	r4, r2
	bl	running_on_fpga
	cmp	r0, #0
	beq	.L9
.L7:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L9:
	ldr	r7, .L10
	movs	r2, #1
	movs	r3, r7
	movs	r1, #1
	str	r7, [sp]
	adds	r0, r0, #5
	bl	clock_configure
	movs	r3, r6
	movs	r2, r5
	str	r4, [sp]
	movs	r1, #1
	ldr	r0, .L10+4
	bl	pll_init
	movs	r1, r4
	movs	r0, r5
	muls	r1, r6
	bl	__aeabi_uidiv
	movs	r4, r0
	ldr	r3, .L10+8
	movs	r2, #0
	str	r3, [sp]
	movs	r1, #2
	movs	r0, #4
	bl	clock_configure
	movs	r3, r4
	movs	r2, #0
	movs	r1, #1
	str	r4, [sp]
	movs	r0, #5
	bl	clock_configure
	movs	r3, r7
	movs	r2, #2
	movs	r1, #0
	str	r7, [sp]
	movs	r0, #6
	bl	clock_configure
	b	.L7
.L11:
	.align	2
.L10:
	.word	48000000
	.word	1073905664
	.word	12000000
	.size	set_sys_clock_pll, .-set_sys_clock_pll
	.global	__aeabi_uidivmod
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text.check_sys_clock_khz,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	check_sys_clock_khz
	.syntax unified
	.code	16
	.thumb_func
	.type	check_sys_clock_khz, %function
check_sys_clock_khz:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r6, r9
	mov	r5, r8
	mov	r7, r10
	push	{r5, r6, r7, lr}
	movs	r6, r0
	sub	sp, sp, #20
	movs	r0, #4
	mov	r10, r3
	mov	fp, r1
	str	r2, [sp, #4]
	bl	clock_get_hz
	movs	r1, #250
	lsls	r1, r1, #2
	bl	__aeabi_uidiv
	movs	r3, #50
	adds	r3, r3, #255
	mov	r8, r3
	ldr	r3, .L67
	lsls	r5, r0, #2
	mov	r9, r3
	mov	r3, fp
	str	r3, [sp, #8]
	mov	r3, r10
	mov	r10, r0
	adds	r5, r5, r0
	lsls	r5, r5, #6
	str	r3, [sp, #12]
.L34:
	ldr	r3, .L67+4
	adds	r3, r5, r3
	cmp	r3, r9
	bls	.L57
.L13:
	movs	r3, #1
	rsbs	r3, r3, #0
	mov	ip, r3
	mov	r3, r10
	add	r8, r8, ip
	subs	r5, r5, r3
	mov	r3, r8
	cmp	r3, #0
	bne	.L34
	movs	r0, #0
	b	.L17
.L57:
	movs	r1, #49
	movs	r0, r5
	bl	__aeabi_uidiv
	movs	r4, #7
	movs	r7, #49
	cmp	r6, r0
	beq	.L19
.L21:
	subs	r7, r4, #1
	mov	fp, r4
	movs	r4, r6
	movs	r6, r7
.L22:
	mov	r7, fp
	muls	r7, r6
	movs	r0, r5
	movs	r1, r7
	bl	__aeabi_uidivmod
	cmp	r4, r0
	beq	.L58
.L23:
	subs	r3, r6, #1
	str	r3, [sp]
	cmp	r6, #1
	bne	.LCB199
	b	.L24	@long jump
.LCB199:
	mov	r3, fp
	subs	r7, r7, r3
	movs	r1, r7
	movs	r0, r5
	bl	__aeabi_uidivmod
	cmp	r4, r0
	beq	.L59
.L25:
	subs	r3, r6, #2
	str	r3, [sp]
	cmp	r6, #2
	bne	.LCB212
	b	.L26	@long jump
.LCB212:
	mov	r3, fp
	subs	r7, r7, r3
	movs	r1, r7
	movs	r0, r5
	bl	__aeabi_uidivmod
	cmp	r4, r0
	beq	.L60
	subs	r3, r6, #3
	str	r3, [sp]
	cmp	r6, #3
	beq	.L28
.L65:
	mov	r3, fp
	subs	r7, r7, r3
	movs	r1, r7
	movs	r0, r5
	bl	__aeabi_uidivmod
	cmp	r4, r0
	beq	.L61
	subs	r3, r6, #4
	str	r3, [sp]
	cmp	r6, #4
	beq	.L30
.L66:
	mov	r3, fp
	subs	r7, r7, r3
	movs	r1, r7
	movs	r0, r5
	bl	__aeabi_uidivmod
	cmp	r4, r0
	beq	.L62
	cmp	r6, #5
	beq	.L63
.L32:
	movs	r0, r5
	subs	r1, r7, #7
	bl	__aeabi_uidivmod
	cmp	r4, r0
	bne	.LCB255
	b	.L64	@long jump
.LCB255:
.L15:
	movs	r3, #6
	movs	r1, #36
	movs	r0, r5
	mov	fp, r3
	movs	r7, #36
	bl	__aeabi_uidiv
	cmp	r4, r0
	beq	.L53
	movs	r6, #5
	mov	r7, fp
	muls	r7, r6
	movs	r0, r5
	movs	r1, r7
	bl	__aeabi_uidivmod
	cmp	r4, r0
	bne	.L23
.L58:
	cmp	r1, #0
	bne	.L23
	ldr	r3, [sp, #8]
	mov	r7, fp
	mov	fp, r3
	ldr	r3, [sp, #12]
	movs	r4, r6
	mov	r10, r3
	b	.L18
.L53:
	movs	r6, r4
	mov	r4, fp
.L19:
	movs	r1, r7
	movs	r0, r5
	bl	__aeabi_uidivmod
	cmp	r1, #0
	bne	.L21
	ldr	r3, [sp, #8]
	movs	r7, r4
	mov	fp, r3
	ldr	r3, [sp, #12]
	mov	r10, r3
	b	.L18
.L59:
	cmp	r1, #0
	bne	.L25
.L42:
	ldr	r3, [sp, #8]
	mov	r7, fp
	mov	fp, r3
	ldr	r3, [sp, #12]
	ldr	r4, [sp]
	mov	r10, r3
.L18:
	mov	r3, fp
	lsls	r2, r5, #5
	subs	r2, r2, r5
	lsls	r2, r2, #2
	adds	r2, r2, r5
	lsls	r2, r2, #3
	str	r2, [r3]
	ldr	r3, [sp, #4]
	movs	r0, #1
	str	r7, [r3]
	mov	r3, r10
	str	r4, [r3]
.L17:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L60:
	cmp	r1, #0
	beq	.L42
	subs	r3, r6, #3
	str	r3, [sp]
	cmp	r6, #3
	bne	.L65
.L28:
	movs	r3, #3
	movs	r1, #9
	movs	r0, r5
	mov	fp, r3
	movs	r7, #9
	bl	__aeabi_uidiv
	cmp	r4, r0
	beq	.L53
	movs	r6, #2
	b	.L22
.L61:
	cmp	r1, #0
	beq	.L42
	subs	r3, r6, #4
	str	r3, [sp]
	cmp	r6, #4
	bne	.L66
.L30:
	movs	r3, #4
	movs	r7, #16
	mov	fp, r3
	lsrs	r3, r5, #4
	cmp	r4, r3
	beq	.L53
	movs	r6, #3
	b	.L22
.L62:
	cmp	r1, #0
	beq	.L42
	cmp	r6, #5
	bne	.L32
.L63:
	movs	r1, #25
	movs	r0, r5
	movs	r7, #25
	bl	__aeabi_uidiv
	cmp	r0, r4
	beq	.L36
	movs	r3, #5
	movs	r6, #4
	mov	fp, r3
	b	.L22
.L64:
	cmp	r1, #0
	beq	.LCB407
	b	.L15	@long jump
.LCB407:
	ldr	r3, [sp, #8]
	mov	r7, fp
	mov	fp, r3
	ldr	r3, [sp, #12]
	movs	r4, #1
	mov	r10, r3
	b	.L18
.L24:
	movs	r6, r4
	cmp	r4, r5
	beq	.LCB420
	b	.L13	@long jump
.LCB420:
	ldr	r3, [sp, #8]
	movs	r7, #1
	mov	fp, r3
	ldr	r3, [sp, #12]
	movs	r4, #1
	mov	r10, r3
	b	.L18
.L26:
	movs	r3, #2
	movs	r7, #4
	mov	fp, r3
	lsrs	r3, r5, #2
	cmp	r4, r3
	bne	.LCB436
	b	.L53	@long jump
.LCB436:
	movs	r6, #1
	b	.L22
.L36:
	movs	r6, r4
	movs	r4, #5
	b	.L19
.L68:
	.align	2
.L67:
	.word	850000
	.word	-750000
	.size	check_sys_clock_khz, .-check_sys_clock_khz
	.section	.text.setup_default_uart,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	setup_default_uart
	.syntax unified
	.code	16
	.thumb_func
	.type	setup_default_uart, %function
setup_default_uart:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, #225
	push	{r4, lr}
	lsls	r1, r1, #9
	ldr	r0, .L70
	bl	uart_init
	@ sp needed
	movs	r1, #2
	movs	r0, #0
	bl	gpio_set_function
	movs	r1, #2
	movs	r0, #1
	bl	gpio_set_function
	ldr	r3, .L70+4
	ldrb	r3, [r3]
	pop	{r4, pc}
.L71:
	.align	2
.L70:
	.word	1073954816
	.word	__bi_ptr102.1
	.size	setup_default_uart, .-setup_default_uart
	.section	.rodata.__bi_102.0,"a"
	.align	2
	.type	__bi_102.0, %object
	.size	__bi_102.0, 8
__bi_102.0:
	.short	8
	.short	20562
	.word	146
	.section	.binary_info.__bi_ptr102,"aw"
	.align	2
	.type	__bi_ptr102.1, %object
	.size	__bi_ptr102.1, 4
__bi_ptr102.1:
	.word	__bi_102.0
	.ident	"GCC: (Arch Repository) 13.1.0"
