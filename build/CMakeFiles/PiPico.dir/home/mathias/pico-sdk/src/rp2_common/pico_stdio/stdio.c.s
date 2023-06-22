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
	.file	"stdio.c"
	.text
	.section	.text.stdio_out_chars_no_crlf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_out_chars_no_crlf, %function
stdio_out_chars_no_crlf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r4, lr}
	movs	r0, r1
	@ sp needed
	movs	r1, r2
	ldr	r3, [r3]
	blx	r3
	pop	{r4, pc}
	.size	stdio_out_chars_no_crlf, .-stdio_out_chars_no_crlf
	.section	.text.stdio_out_chars_crlf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_out_chars_crlf, %function
stdio_out_chars_crlf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	ldrb	r3, [r0, #21]
	movs	r7, r0
	movs	r5, r1
	movs	r6, r2
	cmp	r3, #0
	beq	.L4
	cmp	r2, #0
	ble	.L3
	movs	r1, #0
	subs	r2, r5, #1
	mov	r8, r2
	ldrb	r2, [r5, r1]
	ldrb	r3, [r0, #20]
	adds	r4, r1, #1
	movs	r0, #0
	cmp	r2, #10
	beq	.L8
.L15:
	cmp	r6, r4
	beq	.L16
.L9:
	mov	r3, r8
	ldrb	r3, [r3, r4]
	movs	r1, r4
	subs	r3, r3, #13
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	ldrb	r2, [r5, r1]
	uxtb	r3, r3
	adds	r4, r1, #1
	cmp	r2, #10
	bne	.L15
.L8:
	cmp	r3, #0
	bne	.L15
	cmp	r0, r1
	blt	.L17
.L12:
	movs	r1, #2
	ldr	r0, .L18
	ldr	r3, [r7]
	blx	r3
	cmp	r6, r4
	beq	.L13
	movs	r0, r4
	b	.L9
.L16:
	cmp	r6, r0
	ble	.L13
	subs	r1, r6, r0
	ldr	r3, [r7]
	adds	r0, r5, r0
	blx	r3
.L13:
	adds	r5, r5, r6
	subs	r5, r5, #1
	ldrb	r3, [r5]
	subs	r3, r3, #13
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	strb	r3, [r7, #20]
.L3:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L17:
	subs	r1, r1, r0
	ldr	r3, [r7]
	adds	r0, r5, r0
	blx	r3
	b	.L12
.L4:
	ldr	r3, [r0]
	movs	r1, r2
	movs	r0, r5
	blx	r3
	b	.L3
.L19:
	.align	2
.L18:
	.word	crlf_str.0
	.size	stdio_out_chars_crlf, .-stdio_out_chars_crlf
	.section	.text.stdio_buffered_printer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_buffered_printer, %function
stdio_buffered_printer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	ldr	r3, [r1]
	movs	r6, r0
	movs	r4, r1
	push	{lr}
	cmp	r3, #128
	beq	.L21
	adds	r2, r3, #1
.L22:
	str	r2, [r4]
	adds	r4, r4, r3
	strb	r6, [r4, #4]
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L21:
	ldr	r3, .L35
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.L26
	adds	r3, r1, #4
	mov	r8, r3
	ldr	r7, .L35+4
	b	.L23
.L24:
	ldr	r5, [r5, #16]
	cmp	r5, #0
	beq	.L26
.L23:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L25
	cmp	r3, r5
	bne	.L24
.L25:
	movs	r0, r5
	mov	r1, r8
	ldr	r2, [r4]
	bl	stdio_out_chars_crlf
	ldr	r5, [r5, #16]
	cmp	r5, #0
	bne	.L23
.L26:
	movs	r2, #1
	movs	r3, #0
	b	.L22
.L36:
	.align	2
.L35:
	.word	drivers
	.word	filter
	.size	stdio_buffered_printer, .-stdio_buffered_printer
	.section	.text.stdout_serialize_begin,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	stdout_serialize_begin
	.syntax unified
	.code	16
	.thumb_func
	.type	stdout_serialize_begin, %function
stdout_serialize_begin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	time_us_64
	movs	r3, #0
	ldr	r2, .L40
	adds	r2, r2, r0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L38
	movs	r2, #1
	ldr	r3, .L40+4
	rsbs	r2, r2, #0
.L38:
	ldr	r0, .L40+8
	bl	mutex_try_enter_block_until
	@ sp needed
	pop	{r4, pc}
.L41:
	.align	2
.L40:
	.word	1000000
	.word	2147483647
	.word	print_mutex
	.size	stdout_serialize_begin, .-stdout_serialize_begin
	.section	.text.stdout_serialize_end,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	stdout_serialize_end
	.syntax unified
	.code	16
	.thumb_func
	.type	stdout_serialize_end, %function
stdout_serialize_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L43
	bl	mutex_exit
	@ sp needed
	pop	{r4, pc}
.L44:
	.align	2
.L43:
	.word	print_mutex
	.size	stdout_serialize_end, .-stdout_serialize_end
	.section	.text.__wrap_putchar,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_putchar
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_putchar, %function
__wrap_putchar:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r9
	mov	r7, r8
	push	{r7, lr}
	sub	sp, sp, #12
	mov	r3, sp
	movs	r6, r0
	adds	r5, r3, #7
	strb	r0, [r5]
	bl	time_us_64
	movs	r3, #0
	ldr	r2, .L67
	adds	r2, r2, r0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L46
	movs	r2, #1
	ldr	r3, .L67+4
	rsbs	r2, r2, #0
.L46:
	ldr	r1, .L67+8
	movs	r0, r1
	mov	r8, r1
	bl	mutex_try_enter_block_until
	ldr	r3, .L67+12
	mov	r9, r0
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L48
	ldr	r7, .L67+16
	b	.L51
.L49:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	beq	.L48
.L51:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L49
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L50
	cmp	r3, r4
	bne	.L49
.L50:
	movs	r0, r4
	movs	r2, #1
	movs	r1, r5
	bl	stdio_out_chars_crlf
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L51
.L48:
	mov	r3, r9
	cmp	r3, #0
	bne	.L66
.L52:
	movs	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r4, r5, r6, r7, pc}
.L66:
	mov	r0, r8
	bl	mutex_exit
	b	.L52
.L68:
	.align	2
.L67:
	.word	1000000
	.word	2147483647
	.word	print_mutex
	.word	drivers
	.word	filter
	.size	__wrap_putchar, .-__wrap_putchar
	.section	.text.__wrap_puts,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_puts
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_puts, %function
__wrap_puts:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7, lr}
	sub	sp, sp, #20
	movs	r7, r0
	bl	strlen
	movs	r6, r0
	bl	time_us_64
	movs	r3, #0
	ldr	r2, .L99
	adds	r2, r2, r0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L70
	movs	r2, #1
	ldr	r3, .L99+4
	rsbs	r2, r2, #0
.L70:
	ldr	r1, .L99+8
	movs	r0, r1
	mov	fp, r1
	bl	mutex_try_enter_block_until
	ldr	r3, .L99+12
	str	r0, [sp, #4]
	ldr	r4, [r3]
	mov	r10, r3
	cmp	r4, #0
	beq	.L72
	ldr	r3, .L99+16
	mov	r8, r3
	add	r3, sp, #8
	adds	r5, r3, #7
	movs	r3, #10
	mov	r9, r3
	b	.L75
.L73:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	beq	.L98
.L75:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L73
	mov	r3, r8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L74
	cmp	r4, r3
	bne	.L73
.L74:
	movs	r0, r4
	movs	r2, r6
	movs	r1, r7
	bl	stdio_out_chars_crlf
	mov	r3, r9
	movs	r0, r4
	movs	r2, #1
	movs	r1, r5
	strb	r3, [r5]
	bl	stdio_out_chars_crlf
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L75
.L98:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L81
.L76:
	mov	r3, r10
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L69
.L80:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L78
	blx	r3
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L80
.L69:
	movs	r0, r6
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L78:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L80
	b	.L69
.L72:
	cmp	r0, #0
	beq	.L69
.L81:
	mov	r0, fp
	bl	mutex_exit
	b	.L76
.L100:
	.align	2
.L99:
	.word	1000000
	.word	2147483647
	.word	print_mutex
	.word	drivers
	.word	filter
	.size	__wrap_puts, .-__wrap_puts
	.section	.text.putchar_raw,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	putchar_raw
	.syntax unified
	.code	16
	.thumb_func
	.type	putchar_raw, %function
putchar_raw:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r9
	mov	r7, r8
	push	{r7, lr}
	sub	sp, sp, #12
	mov	r3, sp
	movs	r6, r0
	adds	r5, r3, #7
	strb	r0, [r5]
	bl	time_us_64
	movs	r3, #0
	ldr	r2, .L123
	adds	r2, r2, r0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L102
	movs	r2, #1
	ldr	r3, .L123+4
	rsbs	r2, r2, #0
.L102:
	ldr	r1, .L123+8
	movs	r0, r1
	mov	r8, r1
	bl	mutex_try_enter_block_until
	ldr	r3, .L123+12
	mov	r9, r0
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L104
	ldr	r7, .L123+16
	b	.L107
.L105:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	beq	.L104
.L107:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L105
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L106
	cmp	r3, r4
	bne	.L105
.L106:
	movs	r0, r4
	movs	r2, #1
	movs	r1, r5
	bl	stdio_out_chars_no_crlf
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L107
.L104:
	mov	r3, r9
	cmp	r3, #0
	bne	.L122
.L108:
	movs	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r4, r5, r6, r7, pc}
.L122:
	mov	r0, r8
	bl	mutex_exit
	b	.L108
.L124:
	.align	2
.L123:
	.word	1000000
	.word	2147483647
	.word	print_mutex
	.word	drivers
	.word	filter
	.size	putchar_raw, .-putchar_raw
	.section	.text.puts_raw,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	puts_raw
	.syntax unified
	.code	16
	.thumb_func
	.type	puts_raw, %function
puts_raw:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7, lr}
	sub	sp, sp, #20
	movs	r7, r0
	bl	strlen
	movs	r6, r0
	bl	time_us_64
	movs	r3, #0
	ldr	r2, .L155
	adds	r2, r2, r0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L126
	movs	r2, #1
	ldr	r3, .L155+4
	rsbs	r2, r2, #0
.L126:
	ldr	r1, .L155+8
	movs	r0, r1
	mov	fp, r1
	bl	mutex_try_enter_block_until
	ldr	r3, .L155+12
	str	r0, [sp, #4]
	ldr	r4, [r3]
	mov	r10, r3
	cmp	r4, #0
	beq	.L128
	ldr	r3, .L155+16
	mov	r8, r3
	add	r3, sp, #8
	adds	r5, r3, #7
	movs	r3, #10
	mov	r9, r3
	b	.L131
.L129:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	beq	.L154
.L131:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L129
	mov	r3, r8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L130
	cmp	r4, r3
	bne	.L129
.L130:
	movs	r0, r4
	movs	r2, r6
	movs	r1, r7
	bl	stdio_out_chars_no_crlf
	mov	r3, r9
	movs	r0, r4
	movs	r2, #1
	movs	r1, r5
	strb	r3, [r5]
	bl	stdio_out_chars_no_crlf
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L131
.L154:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L137
.L132:
	mov	r3, r10
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L125
.L136:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L134
	blx	r3
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L136
.L125:
	movs	r0, r6
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L134:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L136
	b	.L125
.L128:
	cmp	r0, #0
	beq	.L125
.L137:
	mov	r0, fp
	bl	mutex_exit
	b	.L132
.L156:
	.align	2
.L155:
	.word	1000000
	.word	2147483647
	.word	print_mutex
	.word	drivers
	.word	filter
	.size	puts_raw, .-puts_raw
	.section	.text._read,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_read
	.syntax unified
	.code	16
	.thumb_func
	.type	_read, %function
_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	lr, fp
	mov	r5, r8
	push	{r5, r6, r7, lr}
	movs	r6, r1
	movs	r7, r2
	cmp	r0, #0
	bne	.L158
	ldr	r3, .L177
	ldr	r5, .L177+4
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	mov	fp, r2
	mov	r10, r3
	ldr	r3, .L177+8
	mov	r9, r3
	ldr	r3, .L177+12
	mov	r8, r3
.L165:
	mov	r3, r9
	ldr	r4, [r3]
	cmp	r4, #0
	bne	.L161
	b	.L159
.L162:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	beq	.L159
.L161:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L160
	cmp	r3, r4
	bne	.L162
.L160:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L162
	movs	r1, r7
	movs	r0, r6
	blx	r3
	cmp	r0, #0
	ble	.L162
.L157:
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L159:
	mov	r3, r8
	ldr	r3, [r3, #36]
	cmp	r10, r3
	bhi	.L164
	mov	r2, r8
	ldr	r2, [r2, #40]
	cmp	r2, fp
	bcc	.L176
.L158:
	movs	r0, #1
	rsbs	r0, r0, #0
	b	.L157
.L176:
	cmp	r10, r3
	bne	.L158
.L164:
	movs	r0, #1
	movs	r1, #0
	bl	busy_wait_us
	b	.L165
.L178:
	.align	2
.L177:
	.word	at_the_end_of_time
	.word	filter
	.word	drivers
	.word	1074085888
	.size	_read, .-_read
	.section	.text._write,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_write
	.syntax unified
	.code	16
	.thumb_func
	.type	_write, %function
_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r8
	mov	lr, r10
	mov	r7, r9
	subs	r0, r0, #1
	movs	r5, r1
	mov	r8, r2
	push	{r6, r7, lr}
	cmp	r0, #1
	bhi	.L189
	bl	time_us_64
	movs	r3, #0
	ldr	r2, .L207
	adds	r2, r2, r0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r1, r1, #24
	cmp	r3, r1
	bcs	.L205
.L181:
	ldr	r1, .L207+4
	mov	r7, r8
	movs	r0, r1
	mov	r10, r1
	bl	mutex_try_enter_block_until
	mov	r3, r8
	mov	r9, r0
	adds	r3, r3, #1
	bne	.L183
	movs	r0, r5
	bl	strlen
	movs	r7, r0
.L183:
	ldr	r3, .L207+8
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L184
	ldr	r6, .L207+12
	b	.L187
.L185:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	beq	.L184
.L187:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L185
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L186
	cmp	r3, r4
	bne	.L185
.L186:
	movs	r0, r4
	movs	r2, r7
	movs	r1, r5
	bl	stdio_out_chars_crlf
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L187
.L184:
	mov	r3, r9
	cmp	r3, #0
	bne	.L206
.L188:
	mov	r0, r8
.L179:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L205:
	movs	r2, #1
	ldr	r3, .L207+16
	rsbs	r2, r2, #0
	b	.L181
.L206:
	mov	r0, r10
	bl	mutex_exit
	b	.L188
.L189:
	movs	r0, #1
	rsbs	r0, r0, #0
	b	.L179
.L208:
	.align	2
.L207:
	.word	1000000
	.word	print_mutex
	.word	drivers
	.word	filter
	.word	2147483647
	.size	_write, .-_write
	.section	.text._open,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_open
	.syntax unified
	.code	16
	.thumb_func
	.type	_open, %function
_open:
	@ args = 4, pretend = 12, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 1
	@ link register save eliminated.
	movs	r0, #1
	push	{r1, r2, r3}
	rsbs	r0, r0, #0
	@ sp needed
	add	sp, sp, #12
	bx	lr
	.size	_open, .-_open
	.section	.text._close,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_close
	.syntax unified
	.code	16
	.thumb_func
	.type	_close, %function
_close:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1
	@ sp needed
	rsbs	r0, r0, #0
	bx	lr
	.size	_close, .-_close
	.section	.text._lseek,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_lseek
	.syntax unified
	.code	16
	.thumb_func
	.type	_lseek, %function
_lseek:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1
	@ sp needed
	rsbs	r0, r0, #0
	bx	lr
	.size	_lseek, .-_lseek
	.section	.text._fstat,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_fstat
	.syntax unified
	.code	16
	.thumb_func
	.type	_fstat, %function
_fstat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1
	@ sp needed
	rsbs	r0, r0, #0
	bx	lr
	.size	_fstat, .-_fstat
	.section	.text._isatty,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_isatty
	.syntax unified
	.code	16
	.thumb_func
	.type	_isatty, %function
_isatty:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, r0
	@ sp needed
	movs	r2, #2
	movs	r0, #0
	cmp	r2, r3
	adcs	r0, r0, r0
	bx	lr
	.size	_isatty, .-_isatty
	.section	.text.stdio_set_driver_enabled,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	stdio_set_driver_enabled
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_set_driver_enabled, %function
stdio_set_driver_enabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L227
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L219
	b	.L215
.L217:
	movs	r2, r3
	ldr	r3, [r3, #16]
	adds	r2, r2, #16
	cmp	r3, #0
	beq	.L215
.L219:
	cmp	r0, r3
	bne	.L217
	cmp	r1, #0
	bne	.L214
	ldr	r3, [r0, #16]
	str	r3, [r2]
	str	r1, [r0, #16]
.L214:
	@ sp needed
	bx	lr
.L215:
	cmp	r1, #0
	beq	.L214
	str	r0, [r2]
	b	.L214
.L228:
	.align	2
.L227:
	.word	drivers
	.size	stdio_set_driver_enabled, .-stdio_set_driver_enabled
	.section	.text.stdio_flush,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	stdio_flush
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_flush, %function
stdio_flush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L240
	push	{r4, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L229
.L233:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L231
	blx	r3
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L233
.L229:
	@ sp needed
	pop	{r4, pc}
.L231:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L233
	b	.L229
.L241:
	.align	2
.L240:
	.word	drivers
	.size	stdio_flush, .-stdio_flush
	.section	.text.__wrap_vprintf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_vprintf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_vprintf, %function
__wrap_vprintf:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r9
	mov	r7, r8
	push	{r7, lr}
	sub	sp, sp, #140
	movs	r4, r0
	movs	r5, r1
	bl	time_us_64
	movs	r3, #0
	ldr	r2, .L272
	adds	r2, r2, r0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L243
	movs	r2, #1
	ldr	r3, .L272+4
	rsbs	r2, r2, #0
.L243:
	ldr	r7, .L272+8
	movs	r0, r7
	bl	mutex_try_enter_block_until
	movs	r3, #0
	movs	r6, r0
	str	r3, [sp, #4]
	movs	r2, r4
	movs	r3, r5
	ldr	r0, .L272+12
	add	r1, sp, #4
	bl	vfctprintf
	ldr	r3, [sp, #4]
	mov	r8, r0
	cmp	r3, #0
	bne	.L245
	ldr	r3, .L272+16
	ldr	r4, [r3]
.L269:
	cmp	r4, #0
	beq	.L248
.L251:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L254
	blx	r3
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L251
.L248:
	cmp	r6, #0
	bne	.L270
.L242:
	mov	r0, r8
	add	sp, sp, #140
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r4, r5, r6, r7, pc}
.L254:
	ldr	r4, [r4, #16]
	b	.L269
.L245:
	ldr	r3, .L272+16
	ldr	r5, [r3]
	mov	r9, r3
	cmp	r5, #0
	beq	.L268
	ldr	r4, .L272+20
	b	.L247
.L249:
	ldr	r5, [r5, #16]
	cmp	r5, #0
	beq	.L271
.L247:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L249
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L250
	cmp	r3, r5
	bne	.L249
.L250:
	movs	r0, r5
	ldr	r2, [sp, #4]
	add	r1, sp, #8
	bl	stdio_out_chars_crlf
	ldr	r5, [r5, #16]
	cmp	r5, #0
	bne	.L247
.L271:
	mov	r3, r9
	str	r5, [sp, #4]
	ldr	r4, [r3]
	b	.L269
.L270:
	movs	r0, r7
	bl	mutex_exit
	b	.L242
.L268:
	str	r5, [sp, #4]
	b	.L248
.L273:
	.align	2
.L272:
	.word	1000000
	.word	2147483647
	.word	print_mutex
	.word	stdio_buffered_printer
	.word	drivers
	.word	filter
	.size	__wrap_vprintf, .-__wrap_vprintf
	.section	.text.__wrap_printf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_printf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_printf, %function
__wrap_printf:
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r0, r1, r2, r3}
	push	{lr}
	sub	sp, sp, #12
	add	r1, sp, #16
	ldmia	r1!, {r0}
	str	r1, [sp, #4]
	bl	vprintf
	add	sp, sp, #12
	@ sp needed
	pop	{r3}
	add	sp, sp, #16
	bx	r3
	.size	__wrap_printf, .-__wrap_printf
	.section	.text.stdio_init_all,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	stdio_init_all
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_init_all, %function
stdio_init_all:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	stdio_usb_init
	@ sp needed
	pop	{r4, pc}
	.size	stdio_init_all, .-stdio_init_all
	.section	.text.__wrap_getchar,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_getchar
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_getchar, %function
__wrap_getchar:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	ldr	r3, .L298
	push	{lr}
	ldr	r2, [r3]
	ldr	r7, [r3, #4]
	mov	r8, r2
	ldr	r6, .L298+4
	ldr	r5, .L298+8
	sub	sp, sp, #8
.L284:
	ldr	r4, [r6]
	cmp	r4, #0
	bne	.L279
	b	.L277
.L280:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	beq	.L277
.L279:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L278
	cmp	r4, r3
	bne	.L280
.L278:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L280
	movs	r1, #1
	add	r0, sp, #4
	blx	r3
	cmp	r0, #0
	ble	.L280
	mov	r3, sp
	ldrb	r0, [r3, #4]
.L276:
	add	sp, sp, #8
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L277:
	ldr	r3, .L298+12
	ldr	r2, [r3, #36]
	cmp	r7, r2
	bhi	.L282
	ldr	r3, [r3, #40]
	cmp	r3, r8
	bcc	.L297
.L286:
	movs	r0, #1
	rsbs	r0, r0, #0
	b	.L276
.L297:
	cmp	r7, r2
	bne	.L286
.L282:
	movs	r0, #1
	movs	r1, #0
	bl	busy_wait_us
	b	.L284
.L299:
	.align	2
.L298:
	.word	at_the_end_of_time
	.word	drivers
	.word	filter
	.word	1074085888
	.size	__wrap_getchar, .-__wrap_getchar
	.section	.text.getchar_timeout_us,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	getchar_timeout_us
	.syntax unified
	.code	16
	.thumb_func
	.type	getchar_timeout_us, %function
getchar_timeout_us:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r9
	mov	r7, r8
	movs	r4, r0
	push	{r7, lr}
	sub	sp, sp, #12
	bl	time_us_64
	movs	r6, r4
	movs	r7, #0
	movs	r3, #128
	adds	r6, r6, r0
	adcs	r7, r7, r1
	lsls	r3, r3, #24
	cmp	r7, r3
	bcc	.L301
	movs	r6, #1
	ldr	r7, .L324
	rsbs	r6, r6, #0
.L301:
	ldr	r3, .L324+4
	mov	r9, r7
	mov	r8, r3
	ldr	r5, .L324+8
.L310:
	mov	r3, r8
	ldr	r4, [r3]
	cmp	r4, #0
	bne	.L305
	b	.L303
.L306:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	beq	.L303
.L305:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L304
	cmp	r4, r3
	bne	.L306
.L304:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L306
	movs	r1, #1
	add	r0, sp, #4
	blx	r3
	cmp	r0, #0
	ble	.L306
	mov	r3, sp
	ldrb	r0, [r3, #4]
.L300:
	add	sp, sp, #12
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r4, r5, r6, r7, pc}
.L303:
	ldr	r3, .L324+12
	ldr	r2, [r3, #36]
	cmp	r9, r2
	bhi	.L308
	ldr	r3, [r3, #40]
	cmp	r3, r6
	bcc	.L323
.L312:
	movs	r0, #1
	rsbs	r0, r0, #0
	b	.L300
.L323:
	cmp	r9, r2
	bne	.L312
.L308:
	movs	r0, #1
	movs	r1, #0
	bl	busy_wait_us
	b	.L310
.L325:
	.align	2
.L324:
	.word	2147483647
	.word	drivers
	.word	filter
	.word	1074085888
	.size	getchar_timeout_us, .-getchar_timeout_us
	.section	.text.stdio_filter_driver,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	stdio_filter_driver
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_filter_driver, %function
stdio_filter_driver:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L327
	@ sp needed
	str	r0, [r3]
	bx	lr
.L328:
	.align	2
.L327:
	.word	filter
	.size	stdio_filter_driver, .-stdio_filter_driver
	.section	.text.stdio_set_translate_crlf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	stdio_set_translate_crlf
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_set_translate_crlf, %function
stdio_set_translate_crlf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	beq	.L330
	ldrb	r3, [r0, #21]
	cmp	r3, #0
	bne	.L330
	strb	r3, [r0, #20]
.L330:
	strb	r1, [r0, #21]
	@ sp needed
	bx	lr
	.size	stdio_set_translate_crlf, .-stdio_set_translate_crlf
	.section	.text.stdio_set_chars_available_callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	stdio_set_chars_available_callback
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_set_chars_available_callback, %function
stdio_set_chars_available_callback:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L345
	push	{r4, r5, r6, lr}
	ldr	r4, [r3]
	movs	r6, r0
	movs	r5, r1
	cmp	r4, #0
	beq	.L334
.L338:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L336
	movs	r1, r5
	movs	r0, r6
	blx	r3
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L338
.L334:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L336:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L338
	b	.L334
.L346:
	.align	2
.L345:
	.word	drivers
	.size	stdio_set_chars_available_callback, .-stdio_set_chars_available_callback
	.section	.rodata.crlf_str.0,"a"
	.align	2
	.type	crlf_str.0, %object
	.size	crlf_str.0, 2
crlf_str.0:
	.ascii	"\015\012"
	.section	.mutex_array,"aw"
	.align	2
	.type	print_mutex, %object
	.size	print_mutex, 8
print_mutex:
	.space	8
	.section	.bss.filter,"aw",%nobits
	.align	2
	.type	filter, %object
	.size	filter, 4
filter:
	.space	4
	.section	.bss.drivers,"aw",%nobits
	.align	2
	.type	drivers, %object
	.size	drivers, 4
drivers:
	.space	4
	.ident	"GCC: (Arch Repository) 13.1.0"
