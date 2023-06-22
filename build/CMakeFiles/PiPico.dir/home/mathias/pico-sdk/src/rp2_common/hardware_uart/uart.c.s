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
	.file	"uart.c"
	.text
	.global	__aeabi_uidiv
	.section	.text.uart_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	uart_init
	.syntax unified
	.code	16
	.thumb_func
	.type	uart_init, %function
uart_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	movs	r0, #6
	movs	r5, r1
	bl	clock_get_hz
	cmp	r0, #0
	beq	.L1
	ldr	r3, .L16
	ldr	r1, .L16+4
	adds	r3, r4, r3
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	movs	r2, #128
	lsls	r2, r2, #16
	mov	ip, r2
	rsbs	r3, r3, #0
	lsrs	r3, r3, #22
	ldr	r2, .L16+8
	lsls	r3, r3, #22
	add	r3, r3, ip
	str	r3, [r2]
	ldr	r2, .L16+12
	str	r3, [r2]
.L4:
	movs	r0, r3
	ldr	r2, [r1, #8]
	bics	r0, r2
	bne	.L4
	ldr	r3, .L16
	ldr	r2, .L16+16
	adds	r3, r4, r3
	rsbs	r1, r3, #0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r3, r3, #1
	lsls	r1, r1, #1
	movs	r0, #6
	strh	r1, [r3, r2]
	bl	clock_get_hz
	movs	r1, r5
	lsls	r0, r0, #3
	bl	__aeabi_uidiv
	lsrs	r3, r0, #7
	bne	.L14
	movs	r7, #64
	movs	r1, #1
.L5:
	movs	r6, r4
	movs	r5, #128
	str	r1, [r4, #36]
	str	r3, [r4, #40]
	movs	r3, #0
	adds	r6, r6, #44
	lsls	r5, r5, #6
	orrs	r5, r6
	str	r3, [r5]
	movs	r0, #6
	bl	clock_get_hz
	movs	r1, r7
	lsls	r0, r0, #2
	bl	__aeabi_uidiv
	movs	r2, #96
	ldr	r3, [r4, #44]
	eors	r3, r2
	adds	r2, r2, #14
	ands	r2, r3
	movs	r3, #128
	lsls	r3, r3, #5
	orrs	r3, r6
	str	r2, [r3]
	ldr	r3, .L16+20
	str	r3, [r4, #48]
	movs	r3, #16
	str	r3, [r5]
	subs	r3, r3, #13
	str	r3, [r4, #72]
.L1:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L14:
	ldr	r2, .L16+24
	cmp	r3, r2
	bls	.L15
	movs	r3, #0
	ldr	r7, .L16+28
	ldr	r1, .L16+32
	b	.L5
.L15:
	movs	r2, #127
	ands	r2, r0
	adds	r2, r2, #1
	lsrs	r2, r2, #1
	lsls	r7, r3, #6
	movs	r1, r3
	adds	r7, r7, r2
	movs	r3, r2
	b	.L5
.L17:
	.align	2
.L16:
	.word	-1073971200
	.word	1073790976
	.word	1073799168
	.word	1073803264
	.word	uart_char_to_line_feed
	.word	769
	.word	65534
	.word	4194240
	.word	65535
	.size	uart_init, .-uart_init
	.section	.text.uart_deinit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	uart_deinit
	.syntax unified
	.code	16
	.thumb_func
	.type	uart_deinit, %function
uart_deinit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L21
	@ sp needed
	adds	r3, r0, r3
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	movs	r2, #128
	lsls	r2, r2, #16
	mov	ip, r2
	rsbs	r3, r3, #0
	lsrs	r3, r3, #22
	ldr	r2, .L21+4
	lsls	r3, r3, #22
	add	r3, r3, ip
	str	r3, [r2]
	bx	lr
.L22:
	.align	2
.L21:
	.word	-1073971200
	.word	1073799168
	.size	uart_deinit, .-uart_deinit
	.section	.text.uart_set_baudrate,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	uart_set_baudrate
	.syntax unified
	.code	16
	.thumb_func
	.type	uart_set_baudrate, %function
uart_set_baudrate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r0, #6
	movs	r5, r1
	bl	clock_get_hz
	movs	r1, r5
	lsls	r0, r0, #3
	bl	__aeabi_uidiv
	lsrs	r3, r0, #7
	beq	.L25
	ldr	r2, .L28
	cmp	r3, r2
	bls	.L27
	movs	r3, #0
	ldr	r5, .L28+4
	ldr	r1, .L28+8
	b	.L24
.L25:
	movs	r5, #64
	movs	r1, #1
.L24:
	@ sp needed
	str	r1, [r4, #36]
	str	r3, [r4, #40]
	movs	r3, #128
	movs	r2, #0
	adds	r4, r4, #44
	lsls	r3, r3, #6
	orrs	r3, r4
	str	r2, [r3]
	movs	r0, #6
	bl	clock_get_hz
	movs	r1, r5
	lsls	r0, r0, #2
	bl	__aeabi_uidiv
	pop	{r4, r5, r6, pc}
.L27:
	movs	r2, #127
	ands	r2, r0
	adds	r2, r2, #1
	lsrs	r2, r2, #1
	lsls	r5, r3, #6
	movs	r1, r3
	adds	r5, r5, r2
	movs	r3, r2
	b	.L24
.L29:
	.align	2
.L28:
	.word	65534
	.word	4194240
	.word	65535
	.size	uart_set_baudrate, .-uart_set_baudrate
	.section	.text.uart_set_translate_crlf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	uart_set_translate_crlf
	.syntax unified
	.code	16
	.thumb_func
	.type	uart_set_translate_crlf, %function
uart_set_translate_crlf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L33
	rsbs	r3, r1, #0
	adcs	r1, r1, r3
	@ sp needed
	mov	ip, r2
	rsbs	r3, r1, #0
	add	r0, r0, ip
	movs	r1, #246
	rsbs	r2, r0, #0
	adcs	r0, r0, r2
	ands	r1, r3
	ldr	r3, .L33+4
	adds	r1, r1, #10
	lsls	r0, r0, #1
	strh	r1, [r0, r3]
	bx	lr
.L34:
	.align	2
.L33:
	.word	-1073971200
	.word	uart_char_to_line_feed
	.size	uart_set_translate_crlf, .-uart_set_translate_crlf
	.section	.text.uart_is_readable_within_us,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	uart_is_readable_within_us
	.syntax unified
	.code	16
	.thumb_func
	.type	uart_is_readable_within_us, %function
uart_is_readable_within_us:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L42
	push	{r4, r5, lr}
	movs	r4, #16
	ldr	r5, [r2, #40]
	b	.L37
.L41:
	ldr	r3, [r2, #40]
	subs	r3, r3, r5
	cmp	r3, r1
	bhi	.L40
.L37:
	ldr	r3, [r0, #24]
	tst	r4, r3
	bne	.L41
	movs	r0, #1
.L36:
	@ sp needed
	pop	{r4, r5, pc}
.L40:
	movs	r0, #0
	b	.L36
.L43:
	.align	2
.L42:
	.word	1074085888
	.size	uart_is_readable_within_us, .-uart_is_readable_within_us
	.global	uart_char_to_line_feed
	.section	.bss.uart_char_to_line_feed,"aw",%nobits
	.align	2
	.type	uart_char_to_line_feed, %object
	.size	uart_char_to_line_feed, 4
uart_char_to_line_feed:
	.space	4
	.ident	"GCC: (Arch Repository) 13.1.0"
