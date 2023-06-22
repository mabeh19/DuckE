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
	.file	"tusb_fifo.c"
	.text
	.section	.text.tu_fifo_config,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_config
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_config, %function
tu_fifo_config:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	movs	r4, r0
	add	r0, sp, #24
	ldrb	r5, [r0]
	movs	r0, #128
	mov	r8, r1
	movs	r7, r2
	movs	r6, r3
	lsls	r0, r0, #8
	cmp	r2, r0
	bhi	.L8
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L3
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L3:
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L4
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L4:
	mov	r3, r8
	str	r3, [r4]
	lsls	r3, r6, #17
	lsrs	r3, r3, #17
	lsls	r5, r5, #15
	orrs	r5, r3
	movs	r3, #0
	ldr	r0, [r4, #12]
	strh	r3, [r4, #10]
	strh	r7, [r4, #4]
	strh	r5, [r4, #6]
	strh	r3, [r4, #8]
	cmp	r0, #0
	beq	.L5
	bl	mutex_exit
.L5:
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L7
	bl	mutex_exit
.L7:
	movs	r0, #1
.L2:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L8:
	movs	r0, #0
	b	.L2
	.size	tu_fifo_config, .-tu_fifo_config
	.section	.text.tu_fifo_count,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_count
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_count, %function
tu_fifo_count:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrh	r4, [r0, #8]
	ldrh	r1, [r0, #10]
	ldrh	r2, [r0, #4]
	uxth	r3, r4
	uxth	r0, r1
	cmp	r4, r1
	bcc	.L20
	subs	r3, r3, r0
	uxth	r3, r3
.L21:
	adds	r0, r2, #0
	cmp	r2, r3
	bls	.L22
	adds	r0, r3, #0
.L22:
	uxth	r0, r0
	@ sp needed
	pop	{r4, pc}
.L20:
	lsls	r1, r2, #1
	subs	r1, r1, r0
	adds	r3, r3, r1
	uxth	r3, r3
	b	.L21
	.size	tu_fifo_count, .-tu_fifo_count
	.section	.text.tu_fifo_empty,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_empty
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_empty, %function
tu_fifo_empty:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #8]
	ldrh	r0, [r0, #10]
	@ sp needed
	subs	r0, r3, r0
	rsbs	r3, r0, #0
	adcs	r0, r0, r3
	uxtb	r0, r0
	bx	lr
	.size	tu_fifo_empty, .-tu_fifo_empty
	.section	.text.tu_fifo_full,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_full
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_full, %function
tu_fifo_full:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrh	r1, [r0, #8]
	ldrh	r2, [r0, #10]
	ldrh	r4, [r0, #4]
	uxth	r3, r1
	uxth	r0, r2
	cmp	r1, r2
	bcc	.L25
	subs	r3, r3, r0
	uxth	r3, r3
.L26:
	movs	r0, #0
	@ sp needed
	cmp	r3, r4
	adcs	r0, r0, r0
	uxtb	r0, r0
	pop	{r4, pc}
.L25:
	lsls	r2, r4, #1
	subs	r2, r2, r0
	adds	r3, r3, r2
	uxth	r3, r3
	b	.L26
	.size	tu_fifo_full, .-tu_fifo_full
	.section	.text.tu_fifo_remaining,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_remaining
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_remaining, %function
tu_fifo_remaining:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrh	r4, [r0, #8]
	ldrh	r1, [r0, #10]
	ldrh	r2, [r0, #4]
	uxth	r3, r4
	uxth	r0, r1
	cmp	r4, r1
	bcc	.L28
	subs	r3, r3, r0
	uxth	r3, r3
.L29:
	movs	r0, #0
	cmp	r2, r3
	bls	.L30
	subs	r2, r2, r3
	uxth	r0, r2
.L30:
	@ sp needed
	pop	{r4, pc}
.L28:
	lsls	r1, r2, #1
	subs	r1, r1, r0
	adds	r3, r3, r1
	uxth	r3, r3
	b	.L29
	.size	tu_fifo_remaining, .-tu_fifo_remaining
	.section	.text.tu_fifo_overflowed,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_overflowed
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_overflowed, %function
tu_fifo_overflowed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrh	r4, [r0, #8]
	ldrh	r1, [r0, #10]
	ldrh	r3, [r0, #4]
	uxth	r2, r4
	uxth	r0, r1
	cmp	r4, r1
	bcc	.L33
	subs	r0, r2, r0
	uxth	r0, r0
.L34:
	cmp	r3, r0
	sbcs	r0, r0, r0
	@ sp needed
	rsbs	r0, r0, #0
	pop	{r4, pc}
.L33:
	lsls	r1, r3, #1
	subs	r1, r1, r0
	adds	r2, r2, r1
	uxth	r0, r2
	b	.L34
	.size	tu_fifo_overflowed, .-tu_fifo_overflowed
	.section	.text.tu_fifo_correct_read_pointer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_correct_read_pointer
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_correct_read_pointer, %function
tu_fifo_correct_read_pointer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	ldr	r0, [r0, #16]
	cmp	r0, #0
	beq	.L44
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #4]
	ldr	r0, [r4, #16]
	uxth	r3, r1
	cmp	r1, r2
	bcs	.L45
	adds	r3, r3, r2
	uxth	r3, r3
.L40:
	strh	r3, [r4, #10]
	cmp	r0, #0
	beq	.L35
	bl	mutex_exit
.L35:
	@ sp needed
	pop	{r4, pc}
.L45:
	subs	r3, r3, r2
	uxth	r3, r3
	b	.L40
.L44:
	ldrh	r2, [r4, #8]
	ldrh	r1, [r4, #4]
	uxth	r3, r2
	cmp	r2, r1
	bcc	.L37
	subs	r3, r3, r1
	uxth	r3, r3
	strh	r3, [r4, #10]
	b	.L35
.L37:
	adds	r3, r3, r1
	uxth	r3, r3
	strh	r3, [r4, #10]
	b	.L35
	.size	tu_fifo_correct_read_pointer, .-tu_fifo_correct_read_pointer
	.section	.text.tu_fifo_read,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_read
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_read, %function
tu_fifo_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	ldr	r0, [r0, #16]
	movs	r6, r1
	cmp	r0, #0
	beq	.L47
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L47:
	ldrh	r5, [r4, #8]
	ldrh	r0, [r4, #10]
	ldrh	r2, [r4, #4]
	uxth	r1, r5
	uxth	r3, r0
	cmp	r5, r0
	bcc	.L48
	subs	r5, r1, r3
	uxth	r5, r5
	cmp	r5, #0
	beq	.L69
.L50:
	cmp	r2, r5
	bcs	.L68
	cmp	r1, r2
	bcc	.L53
	subs	r1, r1, r2
	uxth	r3, r1
	strh	r3, [r4, #10]
.L71:
	cmp	r2, r3
	bhi	.L70
.L56:
	subs	r3, r3, r2
	uxth	r3, r3
.L68:
	cmp	r2, r3
	bls	.L56
.L70:
	ldrh	r2, [r4, #6]
	ldr	r1, [r4]
	lsls	r2, r2, #17
	lsrs	r2, r2, #17
	muls	r3, r2
	movs	r0, r6
	adds	r1, r1, r3
	bl	memcpy
	ldrh	r3, [r4, #10]
	movs	r5, #1
	adds	r1, r3, #1
	uxth	r1, r1
	ldrh	r2, [r4, #4]
	cmp	r3, r1
	bls	.L51
	movs	r1, #0
	lsls	r2, r2, #1
.L57:
	subs	r1, r1, r2
	uxth	r1, r1
.L58:
	ldr	r0, [r4, #16]
	strh	r1, [r4, #10]
	cmp	r0, #0
	beq	.L59
	bl	mutex_exit
.L59:
	@ sp needed
	movs	r0, r5
	pop	{r4, r5, r6, pc}
.L48:
	lsls	r5, r2, #1
	subs	r5, r5, r3
	adds	r5, r1, r5
	uxth	r5, r5
	cmp	r5, #0
	bne	.L50
.L69:
	ldrh	r1, [r4, #10]
	uxth	r1, r1
.L51:
	lsls	r2, r2, #1
	cmp	r1, r2
	blt	.L58
	b	.L57
.L53:
	adds	r1, r1, r2
	uxth	r3, r1
	strh	r3, [r4, #10]
	b	.L71
	.size	tu_fifo_read, .-tu_fifo_read
	.section	.text.tu_fifo_read_n,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_read_n
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_read_n, %function
tu_fifo_read_n:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r8
	mov	r7, r9
	mov	lr, r10
	push	{r6, r7, lr}
	movs	r6, r0
	ldr	r0, [r0, #16]
	mov	r9, r1
	mov	r8, r2
	cmp	r0, #0
	beq	.L73
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L73:
	ldrh	r1, [r6, #8]
	ldrh	r2, [r6, #10]
	ldrh	r5, [r6, #4]
	uxth	r3, r1
	uxth	r4, r2
	cmp	r1, r2
	bcc	.L74
	subs	r7, r3, r4
	uxth	r7, r7
.L75:
	cmp	r7, #0
	beq	.L97
	cmp	r5, r7
	bcs	.L78
	cmp	r3, r5
	bcs	.L98
	adds	r3, r3, r5
	uxth	r4, r3
.L80:
	movs	r7, r5
	strh	r4, [r6, #10]
.L78:
	mov	r3, r8
	cmp	r8, r7
	bhi	.L99
.L81:
	uxth	r7, r3
	cmp	r5, r4
	bhi	.L82
.L83:
	subs	r4, r4, r5
	uxth	r4, r4
	cmp	r5, r4
	bls	.L83
.L82:
	ldrh	r2, [r6, #6]
	ldr	r1, [r6]
	lsls	r2, r2, #17
	lsrs	r2, r2, #17
	mov	r8, r2
	muls	r2, r4
	subs	r3, r5, r4
	uxth	r3, r3
	adds	r1, r1, r2
	mov	r2, r8
	cmp	r7, r3
	bls	.L100
	muls	r3, r2
	uxth	r3, r3
	movs	r2, r3
	mov	r0, r9
	mov	r10, r3
	bl	memcpy
	mov	r3, r8
	mov	r0, r9
	subs	r5, r7, r5
	adds	r4, r4, r5
	muls	r4, r3
	ldr	r1, [r6]
	add	r0, r0, r10
	uxth	r2, r4
	bl	memcpy
.L85:
	ldrh	r1, [r6, #10]
	ldrh	r5, [r6, #4]
	adds	r3, r1, r7
	uxth	r3, r3
	lsls	r2, r5, #1
	cmp	r1, r3
	bls	.L77
.L86:
	subs	r3, r3, r2
	uxth	r3, r3
.L87:
	ldr	r0, [r6, #16]
	strh	r3, [r6, #10]
	cmp	r0, #0
	beq	.L88
	bl	mutex_exit
.L88:
	@ sp needed
	movs	r0, r7
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L100:
	mov	r0, r9
	muls	r2, r7
	bl	memcpy
	b	.L85
.L99:
	adds	r3, r7, #0
	b	.L81
.L97:
	ldrh	r3, [r6, #10]
	uxth	r3, r3
.L77:
	lsls	r2, r5, #1
	cmp	r3, r2
	blt	.L87
	b	.L86
.L74:
	lsls	r7, r5, #1
	subs	r7, r7, r4
	adds	r7, r3, r7
	uxth	r7, r7
	b	.L75
.L98:
	subs	r3, r3, r5
	uxth	r4, r3
	b	.L80
	.size	tu_fifo_read_n, .-tu_fifo_read_n
	.section	.text.tu_fifo_read_n_const_addr_full_words,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_read_n_const_addr_full_words
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_read_n_const_addr_full_words, %function
tu_fifo_read_n_const_addr_full_words:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	mov	lr, fp
	push	{r5, r6, r7, lr}
	movs	r5, r0
	ldr	r0, [r0, #16]
	movs	r7, r1
	mov	r9, r2
	sub	sp, sp, #28
	cmp	r0, #0
	beq	.L102
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L102:
	ldrh	r0, [r5, #8]
	ldrh	r1, [r5, #10]
	ldrh	r4, [r5, #4]
	uxth	r2, r0
	uxth	r3, r1
	cmp	r0, r1
	bcs	.LCB600
	b	.L103	@long jump
.LCB600:
	lsls	r1, r4, #1
	mov	r8, r1
	subs	r6, r2, r3
	uxth	r6, r6
.L104:
	cmp	r6, #0
	bne	.LCB608
	b	.L157	@long jump
.LCB608:
	cmp	r4, r6
	bcs	.L107
	cmp	r2, r4
	bcc	.LCB612
	b	.L158	@long jump
.LCB612:
	adds	r2, r2, r4
	uxth	r3, r2
.L109:
	movs	r6, r4
	strh	r3, [r5, #10]
.L107:
	mov	r2, r9
	cmp	r9, r6
	bls	.LCB623
	b	.L159	@long jump
.LCB623:
.L110:
	uxth	r6, r2
	cmp	r4, r3
	bhi	.L111
.L112:
	subs	r3, r3, r4
	uxth	r3, r3
	cmp	r4, r3
	bls	.L112
.L111:
	ldrh	r1, [r5, #6]
	subs	r2, r4, r3
	lsls	r1, r1, #17
	lsrs	r1, r1, #17
	mov	r9, r1
	ldr	r1, [r5]
	uxth	r2, r2
	mov	fp, r1
	mov	r1, r9
	muls	r1, r3
	add	r1, r1, fp
	str	r1, [sp, #4]
	cmp	r6, r2
	bhi	.L113
	mov	r2, r9
	muls	r2, r6
	uxth	r1, r2
	lsrs	r3, r1, #2
	subs	r2, r3, #1
	uxth	r2, r2
	cmp	r3, #0
	beq	.L114
	mov	r9, r1
	mov	ip, r2
	movs	r1, r2
	ldr	r3, [sp, #4]
	ldr	r4, .L161
.L115:
	ldrb	r0, [r3, #1]
	ldrb	r2, [r3]
	lsls	r0, r0, #8
	orrs	r0, r2
	ldrb	r2, [r3, #2]
	subs	r1, r1, #1
	lsls	r2, r2, #16
	orrs	r2, r0
	ldrb	r0, [r3, #3]
	uxth	r1, r1
	lsls	r0, r0, #24
	orrs	r0, r2
	str	r0, [r7]
	adds	r3, r3, #4
	cmp	r1, r4
	bne	.L115
	mov	r2, ip
	adds	r3, r2, #1
	ldr	r2, [sp, #4]
	lsls	r3, r3, #2
	mov	ip, r2
	add	ip, ip, r3
	mov	r3, ip
	mov	r1, r9
	str	r3, [sp, #4]
.L114:
	movs	r3, #3
	movs	r2, r3
	ands	r2, r1
	tst	r3, r1
	beq	.LCB699
	b	.L160	@long jump
.LCB699:
.L117:
	ldrh	r2, [r5, #10]
	adds	r3, r2, r6
	uxth	r3, r3
	cmp	r2, r3
	bhi	.LCB706
	b	.L106	@long jump
.LCB706:
.L127:
	mov	r2, r8
	subs	r3, r3, r2
	uxth	r3, r3
.L128:
	ldr	r0, [r5, #16]
	strh	r3, [r5, #10]
	cmp	r0, #0
	beq	.L129
	bl	mutex_exit
.L129:
	movs	r0, r6
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L113:
	mov	r1, r9
	muls	r2, r1
	uxth	r2, r2
	mov	ip, r2
	movs	r2, #3
	mov	r1, ip
	bics	r1, r2
	lsrs	r0, r1, #2
	str	r1, [sp, #12]
	subs	r1, r0, #1
	ldr	r2, [sp, #4]
	uxth	r1, r1
	cmp	r0, #0
	beq	.L121
	ldr	r0, .L161
	str	r3, [sp, #8]
	mov	r10, r0
.L118:
	ldrb	r3, [r2, #1]
	ldrb	r0, [r2]
	lsls	r3, r3, #8
	orrs	r3, r0
	ldrb	r0, [r2, #2]
	subs	r1, r1, #1
	lsls	r0, r0, #16
	orrs	r0, r3
	ldrb	r3, [r2, #3]
	uxth	r1, r1
	lsls	r3, r3, #24
	orrs	r3, r0
	str	r3, [r7]
	adds	r2, r2, #4
	cmp	r1, r10
	bne	.L118
	ldr	r3, [sp, #8]
.L121:
	subs	r4, r6, r4
	adds	r4, r3, r4
	mov	r3, r9
	mov	r2, ip
	muls	r4, r3
	movs	r3, #3
	ands	r2, r3
	mov	r10, r2
	mov	r2, ip
	uxth	r4, r4
	tst	r3, r2
	beq	.L120
	mov	r2, r10
	movs	r3, #4
	subs	r3, r3, r2
	adds	r2, r3, #0
	uxth	r3, r3
	cmp	r3, r4
	bls	.L122
	adds	r2, r4, #0
.L122:
	uxth	r3, r2
	mov	r9, r3
	uxtb	r3, r2
	str	r3, [sp, #8]
	mov	r3, r9
	subs	r4, r4, r3
	movs	r3, #0
	str	r3, [sp, #20]
	ldr	r3, [sp, #12]
	ldr	r1, [sp, #4]
	mov	ip, r3
	mov	r2, r10
	add	r1, r1, ip
	add	r0, sp, #20
	bl	memcpy
	mov	r3, r9
	add	r0, sp, #20
	uxth	r4, r4
	add	r0, r0, r10
	cmp	r3, #0
	beq	.L123
	ldr	r3, [sp, #8]
	mov	r1, fp
	mov	r9, r3
	movs	r2, r3
	bl	memcpy
	add	fp, fp, r9
.L123:
	ldr	r3, [sp, #20]
	str	r3, [r7]
.L120:
	cmp	r4, #0
	beq	.L117
	lsrs	r3, r4, #2
	subs	r2, r3, #1
	uxth	r2, r2
	uxtb	r1, r4
	cmp	r3, #0
	beq	.L125
	mov	r3, fp
	mov	ip, r2
	mov	r10, r1
	ldr	r4, .L161
.L126:
	ldrb	r0, [r3, #1]
	ldrb	r1, [r3]
	lsls	r0, r0, #8
	orrs	r1, r0
	ldrb	r0, [r3, #2]
	subs	r2, r2, #1
	lsls	r0, r0, #16
	orrs	r1, r0
	ldrb	r0, [r3, #3]
	uxth	r2, r2
	lsls	r0, r0, #24
	orrs	r0, r1
	str	r0, [r7]
	adds	r3, r3, #4
	cmp	r2, r4
	bne	.L126
	mov	r1, r10
	movs	r3, #3
	mov	r2, ip
	ands	r1, r3
	bne	.LCB874
	b	.L117	@long jump
.LCB874:
	adds	r2, r2, #1
	lsls	r2, r2, #2
	add	fp, fp, r2
.L125:
	movs	r3, #0
	movs	r2, r1
	add	r0, sp, #20
	mov	r1, fp
	str	r3, [sp, #20]
	bl	memcpy
	ldr	r3, [sp, #20]
	str	r3, [r7]
	b	.L117
.L159:
	adds	r2, r6, #0
	b	.L110
.L157:
	ldrh	r3, [r5, #10]
	uxth	r3, r3
.L106:
	cmp	r3, r8
	bge	.LCB902
	b	.L128	@long jump
.LCB902:
	b	.L127
.L103:
	lsls	r1, r4, #1
	subs	r6, r1, r3
	adds	r6, r2, r6
	mov	r8, r1
	uxth	r6, r6
	b	.L104
.L158:
	subs	r2, r2, r4
	uxth	r3, r2
	b	.L109
.L160:
	movs	r3, #0
	ldr	r1, [sp, #4]
	add	r0, sp, #20
	str	r3, [sp, #20]
	bl	memcpy
	ldr	r3, [sp, #20]
	str	r3, [r7]
	b	.L117
.L162:
	.align	2
.L161:
	.word	65535
	.size	tu_fifo_read_n_const_addr_full_words, .-tu_fifo_read_n_const_addr_full_words
	.section	.text.tu_fifo_peek,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_peek
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_peek, %function
tu_fifo_peek:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	ldr	r0, [r0, #16]
	movs	r6, r1
	cmp	r0, #0
	beq	.L164
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L164:
	ldrh	r5, [r4, #8]
	ldrh	r0, [r4, #10]
	ldrh	r2, [r4, #4]
	uxth	r1, r5
	uxth	r3, r0
	cmp	r5, r0
	bcc	.L165
	subs	r5, r1, r3
	uxth	r5, r5
	cmp	r5, #0
	beq	.L174
.L184:
	cmp	r2, r5
	bcs	.L182
	cmp	r1, r2
	bcc	.L169
	subs	r1, r1, r2
	uxth	r3, r1
	strh	r3, [r4, #10]
.L185:
	cmp	r2, r3
	bhi	.L183
.L172:
	subs	r3, r3, r2
	uxth	r3, r3
.L182:
	cmp	r2, r3
	bls	.L172
.L183:
	ldrh	r2, [r4, #6]
	ldr	r1, [r4]
	lsls	r2, r2, #17
	lsrs	r2, r2, #17
	muls	r3, r2
	movs	r0, r6
	adds	r1, r1, r3
	bl	memcpy
	movs	r5, #1
.L167:
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L173
	bl	mutex_exit
.L173:
	@ sp needed
	movs	r0, r5
	pop	{r4, r5, r6, pc}
.L165:
	lsls	r5, r2, #1
	subs	r5, r5, r3
	adds	r5, r1, r5
	uxth	r5, r5
	cmp	r5, #0
	bne	.L184
.L174:
	movs	r5, #0
	b	.L167
.L169:
	adds	r1, r1, r2
	uxth	r3, r1
	strh	r3, [r4, #10]
	b	.L185
	.size	tu_fifo_peek, .-tu_fifo_peek
	.section	.text.tu_fifo_peek_n,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_peek_n
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_peek_n, %function
tu_fifo_peek_n:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r8
	mov	r7, r9
	mov	lr, r10
	push	{r6, r7, lr}
	movs	r6, r0
	ldr	r0, [r0, #16]
	mov	r9, r1
	mov	r8, r2
	cmp	r0, #0
	beq	.L187
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L187:
	ldrh	r1, [r6, #8]
	ldrh	r2, [r6, #10]
	ldrh	r7, [r6, #4]
	uxth	r3, r1
	uxth	r4, r2
	cmp	r1, r2
	bcc	.L188
	subs	r5, r3, r4
	uxth	r5, r5
.L189:
	cmp	r5, #0
	beq	.L190
	cmp	r7, r5
	bcs	.L191
	cmp	r3, r7
	bcs	.L210
	adds	r3, r3, r7
	uxth	r4, r3
.L193:
	movs	r5, r7
	strh	r4, [r6, #10]
.L191:
	mov	r3, r8
	cmp	r8, r5
	bhi	.L211
.L194:
	uxth	r5, r3
	cmp	r7, r4
	bhi	.L195
.L196:
	subs	r4, r4, r7
	uxth	r4, r4
	cmp	r7, r4
	bls	.L196
.L195:
	ldrh	r2, [r6, #6]
	ldr	r1, [r6]
	lsls	r2, r2, #17
	lsrs	r2, r2, #17
	mov	r8, r2
	muls	r2, r4
	subs	r3, r7, r4
	uxth	r3, r3
	adds	r1, r1, r2
	mov	r2, r8
	cmp	r5, r3
	bhi	.L197
	mov	r0, r9
	muls	r2, r5
	bl	memcpy
.L190:
	ldr	r0, [r6, #16]
	cmp	r0, #0
	beq	.L199
	bl	mutex_exit
.L199:
	@ sp needed
	movs	r0, r5
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L197:
	muls	r3, r2
	uxth	r3, r3
	movs	r2, r3
	mov	r0, r9
	mov	r10, r3
	bl	memcpy
	mov	r3, r8
	mov	r0, r9
	subs	r7, r5, r7
	adds	r4, r4, r7
	muls	r4, r3
	ldr	r1, [r6]
	add	r0, r0, r10
	uxth	r2, r4
	bl	memcpy
	b	.L190
.L211:
	adds	r3, r5, #0
	b	.L194
.L188:
	lsls	r5, r7, #1
	subs	r5, r5, r4
	adds	r5, r3, r5
	uxth	r5, r5
	b	.L189
.L210:
	subs	r3, r3, r7
	uxth	r4, r3
	b	.L193
	.size	tu_fifo_peek_n, .-tu_fifo_peek_n
	.section	.text.tu_fifo_write,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_write
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_write, %function
tu_fifo_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	ldr	r0, [r0, #12]
	movs	r6, r1
	cmp	r0, #0
	beq	.L213
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L213:
	ldrh	r5, [r4, #8]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	ldrh	r2, [r4, #4]
	uxth	r5, r5
	uxth	r3, r0
	uxth	r7, r1
	cmp	r0, r1
	bcc	.L214
	subs	r3, r3, r7
	uxth	r3, r3
.L215:
	cmp	r2, r3
	bhi	.L216
	ldrb	r7, [r4, #7]
	lsrs	r7, r7, #7
	bne	.L216
.L217:
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L225
	bl	mutex_exit
.L225:
	@ sp needed
	movs	r0, r7
	pop	{r3, r4, r5, r6, r7, pc}
.L216:
	cmp	r5, r2
	bcc	.L218
	movs	r3, r5
.L219:
	subs	r3, r3, r2
	uxth	r3, r3
	cmp	r3, r2
	bcs	.L219
	ldrh	r2, [r4, #6]
	ldr	r0, [r4]
	lsls	r2, r2, #17
	lsrs	r2, r2, #17
	muls	r3, r2
	movs	r1, r6
	adds	r0, r0, r3
	bl	memcpy
	adds	r3, r5, #1
	uxth	r3, r3
	ldrh	r2, [r4, #4]
	cmp	r5, r3
	bls	.L223
	movs	r3, #0
	lsls	r2, r2, #1
.L220:
	subs	r3, r3, r2
	uxth	r3, r3
.L221:
	movs	r7, #1
	strh	r3, [r4, #8]
	b	.L217
.L214:
	lsls	r1, r2, #1
	subs	r1, r1, r7
	adds	r3, r3, r1
	uxth	r3, r3
	b	.L215
.L218:
	movs	r3, r5
	ldrh	r2, [r4, #6]
	ldr	r0, [r4]
	lsls	r2, r2, #17
	lsrs	r2, r2, #17
	muls	r3, r2
	movs	r1, r6
	adds	r0, r0, r3
	bl	memcpy
	adds	r5, r5, #1
	ldrh	r2, [r4, #4]
	uxth	r3, r5
.L223:
	lsls	r2, r2, #1
	cmp	r3, r2
	blt	.L221
	b	.L220
	.size	tu_fifo_write, .-tu_fifo_write
	.section	.text.tu_fifo_write_n,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_write_n
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_write_n, %function
tu_fifo_write_n:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r5, r8
	mov	lr, fp
	mov	r6, r9
	push	{r5, r6, r7, lr}
	movs	r4, r2
	movs	r5, r0
	movs	r7, r1
	sub	sp, sp, #12
	cmp	r2, #0
	beq	.L257
	ldr	r0, [r0, #12]
	cmp	r0, #0
	beq	.L238
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L238:
	ldrh	r6, [r5, #8]
	ldrb	r1, [r5, #7]
	ldrh	r2, [r5, #10]
	ldrh	r3, [r5, #4]
	uxth	r6, r6
	uxth	r2, r2
	lsrs	r1, r1, #7
	bne	.L239
	cmp	r6, r2
	bcc	.LCB1322
	b	.L273	@long jump
.LCB1322:
	lsls	r1, r3, #1
	subs	r2, r1, r2
	adds	r2, r6, r2
	uxth	r2, r2
.L241:
	movs	r1, #0
	mov	r9, r1
	cmp	r2, r3
	bcs	.L242
	subs	r2, r3, r2
	adds	r1, r2, #0
	uxth	r2, r2
	cmp	r2, r4
	bls	.L243
	adds	r1, r4, #0
.L243:
	uxth	r2, r1
	mov	r9, r2
	ldrh	r2, [r5, #6]
	lsls	r2, r2, #17
	lsrs	r2, r2, #17
	mov	r8, r2
	mov	r2, r9
	adds	r2, r6, r2
	uxth	r2, r2
	mov	r10, r2
	mov	r2, r9
	subs	r2, r2, r3
	uxth	r2, r2
	mov	fp, r2
.L244:
	movs	r4, r6
	cmp	r6, r3
	bcc	.L250
.L251:
	subs	r4, r4, r3
	uxth	r4, r4
	cmp	r4, r3
	bcs	.L251
.L250:
	mov	r2, r8
	muls	r2, r4
	ldr	r0, [r5]
	subs	r3, r3, r4
	uxth	r3, r3
	adds	r0, r0, r2
	mov	r2, r8
	cmp	r3, r9
	bcc	.L252
	mov	r3, r9
	movs	r1, r7
	muls	r2, r3
	bl	memcpy
.L253:
	ldrh	r3, [r5, #4]
	lsls	r3, r3, #1
	cmp	r10, r6
	bcc	.L254
	cmp	r10, r3
	blt	.L255
.L254:
	mov	r2, r10
	subs	r3, r2, r3
	uxth	r3, r3
	mov	r10, r3
.L255:
	mov	r3, r10
	strh	r3, [r5, #8]
.L242:
	ldr	r0, [r5, #12]
	cmp	r0, #0
	beq	.L237
	bl	mutex_exit
	b	.L237
.L239:
	ldrh	r1, [r5, #6]
	lsls	r1, r1, #17
	lsrs	r1, r1, #17
	mov	r8, r1
	cmp	r4, r3
	bcs	.L274
	cmp	r6, r2
	bcc	.L246
	subs	r1, r6, r2
	uxth	r1, r1
	mov	ip, r1
	lsls	r0, r3, #1
.L247:
	subs	r1, r4, r3
	uxth	r1, r1
	mov	fp, r1
	mov	r1, ip
	adds	r1, r1, r4
	cmp	r1, r0
	blt	.L272
	adds	r1, r2, r3
	uxth	r1, r1
	subs	r6, r1, r4
	uxth	r6, r6
	mov	r10, r1
	cmp	r2, r6
	bls	.L275
.L249:
	subs	r6, r6, r0
	uxth	r6, r6
.L272:
	adds	r2, r4, r6
	uxth	r2, r2
	mov	r10, r2
	mov	r9, r4
	b	.L244
.L257:
	movs	r3, #0
	mov	r9, r3
.L237:
	mov	r0, r9
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L273:
	subs	r2, r6, r2
	uxth	r2, r2
	b	.L241
.L274:
	movs	r1, #0
	mov	r9, r1
	cmp	r3, #0
	beq	.L242
	mov	r1, r8
	subs	r4, r4, r3
	muls	r4, r1
	movs	r6, r2
	adds	r1, r2, r3
	movs	r2, #0
	uxth	r1, r1
	mov	r10, r1
	mov	r9, r3
	mov	fp, r2
	adds	r7, r7, r4
	b	.L244
.L252:
	muls	r3, r2
	uxth	r3, r3
	movs	r2, r3
	movs	r1, r7
	add	r4, r4, fp
	str	r3, [sp, #4]
	bl	memcpy
	mov	r1, r8
	movs	r2, r4
	muls	r2, r1
	ldr	r3, [sp, #4]
	ldr	r0, [r5]
	uxth	r2, r2
	adds	r1, r7, r3
	bl	memcpy
	b	.L253
.L246:
	lsls	r0, r3, #1
	subs	r1, r0, r2
	adds	r1, r6, r1
	uxth	r1, r1
	mov	ip, r1
	b	.L247
.L275:
	mov	r9, r4
	cmp	r0, r6
	ble	.LCB1528
	b	.L244	@long jump
.LCB1528:
	b	.L249
	.size	tu_fifo_write_n, .-tu_fifo_write_n
	.section	.text.tu_fifo_write_n_const_addr_full_words,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_write_n_const_addr_full_words
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_write_n_const_addr_full_words, %function
tu_fifo_write_n_const_addr_full_words:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r9
	mov	r5, r8
	mov	lr, fp
	mov	r7, r10
	push	{r5, r6, r7, lr}
	movs	r4, r2
	movs	r5, r0
	movs	r6, r1
	sub	sp, sp, #28
	cmp	r2, #0
	bne	.LCB1547
	b	.L309	@long jump
.LCB1547:
	ldr	r0, [r0, #12]
	cmp	r0, #0
	beq	.L278
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L278:
	ldrh	r3, [r5, #4]
	ldrh	r7, [r5, #8]
	ldrh	r2, [r5, #10]
	str	r3, [sp]
	ldrb	r3, [r5, #7]
	uxth	r7, r7
	uxth	r2, r2
	lsrs	r3, r3, #7
	bne	.L279
	cmp	r7, r2
	bcc	.LCB1569
	b	.L343	@long jump
.LCB1569:
	ldr	r3, [sp]
	lsls	r3, r3, #1
	subs	r3, r3, r2
	adds	r3, r7, r3
	uxth	r3, r3
.L281:
	movs	r2, #0
	mov	r8, r2
	ldr	r2, [sp]
	cmp	r3, r2
	bcc	.LCB1581
	b	.L282	@long jump
.LCB1581:
	subs	r3, r2, r3
	adds	r2, r3, #0
	uxth	r3, r3
	cmp	r3, r4
	bls	.L283
	adds	r2, r4, #0
.L283:
	uxth	r3, r2
	mov	r8, r3
	adds	r3, r7, r3
	uxth	r3, r3
	mov	fp, r3
	mov	r3, r8
	ldr	r2, [sp]
	subs	r3, r3, r2
	uxth	r3, r3
	str	r3, [sp, #4]
.L284:
	ldr	r2, [sp]
	movs	r3, r7
	cmp	r7, r2
	bcc	.L290
.L291:
	subs	r3, r3, r2
	uxth	r3, r3
	cmp	r3, r2
	bcs	.L291
.L290:
	ldrh	r4, [r5, #6]
	ldr	r1, [r5]
	lsls	r4, r4, #17
	lsrs	r4, r4, #17
	movs	r0, r4
	mov	r9, r1
	muls	r0, r3
	ldr	r2, [sp]
	add	r0, r0, r9
	subs	r2, r2, r3
	uxth	r2, r2
	mov	r10, r0
	cmp	r2, r8
	bcc	.L292
	mov	r3, r8
	muls	r4, r3
	uxth	r1, r4
	lsrs	r2, r1, #2
	subs	r3, r2, #1
	uxth	r3, r3
	cmp	r2, #0
	beq	.L293
	mov	r9, r1
	mov	ip, r3
	ldr	r4, .L348
.L294:
	ldr	r2, [r6]
	subs	r3, r3, #1
	lsrs	r1, r2, #8
	strb	r2, [r0]
	strb	r1, [r0, #1]
	uxth	r3, r3
	lsrs	r1, r2, #16
	lsrs	r2, r2, #24
	strb	r1, [r0, #2]
	strb	r2, [r0, #3]
	adds	r0, r0, #4
	cmp	r3, r4
	bne	.L294
	mov	r3, ip
	mov	r1, r9
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r10, r10, r3
.L293:
	movs	r3, #3
	movs	r2, r3
	ands	r2, r1
	tst	r3, r1
	beq	.LCB1669
	b	.L344	@long jump
.LCB1669:
.L295:
	ldr	r3, [sp]
	lsls	r3, r3, #1
	cmp	r7, fp
	bhi	.L306
	cmp	fp, r3
	blt	.L307
.L306:
	mov	r2, fp
	subs	r3, r2, r3
	uxth	r3, r3
	mov	fp, r3
.L307:
	mov	r3, fp
	strh	r3, [r5, #8]
	b	.L282
.L279:
	ldr	r3, [sp]
	cmp	r4, r3
	bcs	.L285
	cmp	r7, r2
	bcs	.LCB1694
	b	.L286	@long jump
.LCB1694:
	subs	r0, r7, r2
	uxth	r0, r0
	lsls	r3, r3, #1
.L287:
	ldr	r1, [sp]
	adds	r0, r0, r4
	subs	r1, r4, r1
	uxth	r1, r1
	str	r1, [sp, #4]
	cmp	r0, r3
	blt	.L341
	ldr	r1, [sp]
	adds	r0, r2, r1
	uxth	r1, r0
	subs	r7, r1, r4
	uxth	r7, r7
	mov	fp, r1
	cmp	r2, r7
	bhi	.LCB1714
	b	.L345	@long jump
.LCB1714:
.L289:
	subs	r7, r7, r3
	uxth	r7, r7
.L341:
	adds	r3, r4, r7
	uxth	r3, r3
	mov	fp, r3
	mov	r8, r4
	b	.L284
.L309:
	movs	r3, #0
	mov	r8, r3
.L277:
	mov	r0, r8
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L343:
	subs	r3, r7, r2
	uxth	r3, r3
	b	.L281
.L285:
	movs	r3, #0
	mov	r8, r3
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.LCB1760
	b	.L346	@long jump
.LCB1760:
.L282:
	ldr	r0, [r5, #12]
	cmp	r0, #0
	beq	.L277
	bl	mutex_exit
	b	.L277
.L292:
	muls	r2, r4
	uxth	r2, r2
	movs	r1, r2
	str	r2, [sp]
	movs	r2, #3
	bics	r1, r2
	lsrs	r2, r1, #2
	subs	r0, r2, #1
	str	r1, [sp, #12]
	uxth	r0, r0
	mov	r1, r10
	cmp	r2, #0
	beq	.L299
	ldr	r2, .L348
	str	r7, [sp, #8]
	mov	ip, r2
.L296:
	ldr	r2, [r6]
	subs	r0, r0, #1
	lsrs	r7, r2, #8
	strb	r2, [r1]
	strb	r7, [r1, #1]
	uxth	r0, r0
	lsrs	r7, r2, #16
	lsrs	r2, r2, #24
	strb	r7, [r1, #2]
	strb	r2, [r1, #3]
	adds	r1, r1, #4
	cmp	r0, ip
	bne	.L296
	ldr	r7, [sp, #8]
.L299:
	ldr	r2, [sp, #4]
	mov	ip, r2
	ldr	r2, [sp]
	add	r3, r3, ip
	muls	r4, r3
	movs	r1, r2
	movs	r3, #3
	uxth	r4, r4
	ands	r1, r3
	tst	r3, r2
	beq	.L298
	movs	r3, #4
	subs	r3, r3, r1
	adds	r2, r3, #0
	uxth	r3, r3
	cmp	r3, r4
	bhi	.L347
.L300:
	mov	r9, r1
	uxth	r3, r2
	ldr	r0, [sp, #12]
	uxtb	r2, r2
	str	r3, [sp]
	subs	r4, r4, r3
	ldr	r3, [r6]
	str	r2, [sp, #4]
	add	r0, r0, r10
	movs	r2, r1
	add	r1, sp, #20
	str	r3, [sp, #20]
	bl	memcpy
	add	r2, sp, #20
	mov	r1, r9
	mov	ip, r2
	ldr	r3, [sp]
	ldr	r2, [r5]
	uxth	r4, r4
	mov	r9, r2
	add	r1, r1, ip
	cmp	r3, #0
	beq	.L298
	ldr	r3, [sp, #4]
	mov	r0, r9
	mov	r10, r3
	movs	r2, r3
	bl	memcpy
	add	r9, r9, r10
.L298:
	cmp	r4, #0
	bne	.L302
.L342:
	ldrh	r3, [r5, #4]
	str	r3, [sp]
	b	.L295
.L286:
	lsls	r3, r3, #1
	subs	r0, r3, r2
	adds	r0, r7, r0
	uxth	r0, r0
	b	.L287
.L344:
	ldr	r3, [r6]
	mov	r0, r10
	add	r1, sp, #20
	str	r3, [sp, #20]
	bl	memcpy
	ldrh	r3, [r5, #4]
	str	r3, [sp]
	b	.L295
.L302:
	lsrs	r3, r4, #2
	subs	r2, r3, #1
	uxtb	r1, r4
	mov	ip, r1
	uxth	r2, r2
	cmp	r3, #0
	beq	.L303
	movs	r0, r2
	mov	r1, r9
	mov	r10, r2
	ldr	r4, .L348
.L304:
	ldr	r3, [r6]
	subs	r0, r0, #1
	lsrs	r2, r3, #8
	strb	r3, [r1]
	strb	r2, [r1, #1]
	uxth	r0, r0
	lsrs	r2, r3, #16
	lsrs	r3, r3, #24
	strb	r2, [r1, #2]
	strb	r3, [r1, #3]
	adds	r1, r1, #4
	cmp	r0, r4
	bne	.L304
	mov	r1, ip
	movs	r3, #3
	ands	r1, r3
	mov	r2, r10
	mov	ip, r1
	beq	.L342
	adds	r2, r2, #1
	lsls	r2, r2, #2
	add	r9, r9, r2
.L303:
	ldr	r3, [r6]
	mov	r2, ip
	mov	r0, r9
	add	r1, sp, #20
	str	r3, [sp, #20]
	bl	memcpy
	b	.L342
.L347:
	adds	r2, r4, #0
	b	.L300
.L345:
	mov	r8, r4
	cmp	r3, r7
	ble	.LCB1952
	b	.L284	@long jump
.LCB1952:
	b	.L289
.L346:
	movs	r1, r3
	adds	r3, r2, r3
	uxth	r3, r3
	mov	fp, r3
	movs	r3, #0
	movs	r7, r2
	mov	r8, r1
	str	r3, [sp, #4]
	b	.L284
.L349:
	.align	2
.L348:
	.word	65535
	.size	tu_fifo_write_n_const_addr_full_words, .-tu_fifo_write_n_const_addr_full_words
	.section	.text.tu_fifo_clear,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_clear
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_clear, %function
tu_fifo_clear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	ldr	r0, [r0, #12]
	cmp	r0, #0
	beq	.L351
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L351:
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L352
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L352:
	movs	r3, #0
	ldr	r0, [r4, #12]
	strh	r3, [r4, #10]
	strh	r3, [r4, #8]
	cmp	r0, #0
	beq	.L353
	bl	mutex_exit
.L353:
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L354
	bl	mutex_exit
.L354:
	@ sp needed
	movs	r0, #1
	pop	{r4, pc}
	.size	tu_fifo_clear, .-tu_fifo_clear
	.section	.text.tu_fifo_set_overwritable,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_set_overwritable
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_set_overwritable, %function
tu_fifo_set_overwritable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	ldr	r0, [r0, #12]
	movs	r5, r1
	cmp	r0, #0
	beq	.L368
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L368:
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L369
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
.L369:
	movs	r1, #127
	ldrb	r3, [r4, #7]
	lsls	r5, r5, #7
	ands	r1, r3
	ldr	r0, [r4, #12]
	orrs	r1, r5
	strb	r1, [r4, #7]
	cmp	r0, #0
	beq	.L370
	bl	mutex_exit
.L370:
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L371
	bl	mutex_exit
.L371:
	@ sp needed
	movs	r0, #1
	pop	{r4, r5, r6, pc}
	.size	tu_fifo_set_overwritable, .-tu_fifo_set_overwritable
	.section	.text.tu_fifo_advance_write_pointer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_advance_write_pointer
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_advance_write_pointer, %function
tu_fifo_advance_write_pointer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r2, [r0, #8]
	ldrh	r3, [r0, #4]
	adds	r1, r2, r1
	uxth	r1, r1
	lsls	r3, r3, #1
	cmp	r2, r1
	bhi	.L385
	cmp	r1, r3
	blt	.L386
.L385:
	subs	r1, r1, r3
	uxth	r1, r1
.L386:
	strh	r1, [r0, #8]
	@ sp needed
	bx	lr
	.size	tu_fifo_advance_write_pointer, .-tu_fifo_advance_write_pointer
	.section	.text.tu_fifo_advance_read_pointer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_advance_read_pointer
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_advance_read_pointer, %function
tu_fifo_advance_read_pointer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r2, [r0, #10]
	ldrh	r3, [r0, #4]
	adds	r1, r2, r1
	uxth	r1, r1
	lsls	r3, r3, #1
	cmp	r2, r1
	bhi	.L390
	cmp	r1, r3
	blt	.L391
.L390:
	subs	r1, r1, r3
	uxth	r1, r1
.L391:
	strh	r1, [r0, #10]
	@ sp needed
	bx	lr
	.size	tu_fifo_advance_read_pointer, .-tu_fifo_advance_read_pointer
	.section	.text.tu_fifo_get_read_info,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_get_read_info
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_get_read_info, %function
tu_fifo_get_read_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r6, r1
	ldrh	r1, [r0, #8]
	ldrh	r2, [r0, #10]
	movs	r7, r0
	ldrh	r3, [r0, #4]
	uxth	r5, r1
	uxth	r4, r2
	cmp	r1, r2
	bcc	.L395
	subs	r2, r5, r4
	uxth	r2, r2
.L396:
	cmp	r3, r2
	bcs	.L397
	ldr	r0, [r7, #16]
	cmp	r0, #0
	beq	.L421
	movs	r1, #1
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
	ldrh	r2, [r7, #4]
	ldr	r0, [r7, #16]
	cmp	r5, r2
	bcs	.L422
	adds	r4, r5, r2
	uxth	r4, r4
	movs	r3, r2
	strh	r4, [r7, #10]
	cmp	r0, #0
	beq	.L419
.L403:
	bl	mutex_exit
	ldrh	r2, [r7, #4]
	movs	r3, r2
.L397:
	cmp	r2, #0
	beq	.L400
	cmp	r5, r3
	bcc	.L419
.L418:
	subs	r5, r5, r3
.L408:
	uxth	r5, r5
	cmp	r5, r3
	bcs	.L418
	cmp	r3, r4
	bhi	.L423
.L410:
	subs	r4, r4, r3
	uxth	r4, r4
.L419:
	cmp	r3, r4
	bls	.L410
.L423:
	ldr	r1, [r7]
	adds	r0, r1, r4
	str	r0, [r6, #4]
	cmp	r4, r5
	bcc	.L424
	subs	r2, r2, r3
	subs	r0, r3, r4
	adds	r4, r4, r2
	strh	r0, [r6]
	strh	r4, [r6, #2]
.L407:
	str	r1, [r6, #8]
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L424:
	movs	r3, #0
	movs	r1, #0
	strh	r2, [r6]
	strh	r3, [r6, #2]
	b	.L407
.L421:
	cmp	r3, r5
	bhi	.L399
	subs	r5, r5, r3
	uxth	r4, r5
	subs	r2, r3, #0
	strh	r4, [r7, #10]
	bne	.L408
.L400:
	movs	r3, #0
	movs	r1, #0
	str	r3, [r6]
	str	r3, [r6, #4]
	b	.L407
.L395:
	lsls	r2, r3, #1
	subs	r2, r2, r4
	adds	r2, r5, r2
	uxth	r2, r2
	b	.L396
.L422:
	subs	r4, r5, r2
	uxth	r4, r4
	strh	r4, [r7, #10]
	cmp	r0, #0
	bne	.L403
	movs	r3, r2
	b	.L397
.L399:
	adds	r4, r3, r5
	uxth	r4, r4
	movs	r2, r3
	strh	r4, [r7, #10]
	cmp	r5, r3
	bcs	.L418
	b	.L419
	.size	tu_fifo_get_read_info, .-tu_fifo_get_read_info
	.section	.text.tu_fifo_get_write_info,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_fifo_get_write_info
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_fifo_get_write_info, %function
tu_fifo_get_write_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldrh	r6, [r0, #8]
	ldrh	r5, [r0, #10]
	ldrh	r4, [r0, #4]
	uxth	r3, r6
	uxth	r2, r5
	cmp	r6, r5
	bcc	.L426
	subs	r5, r3, r2
	uxth	r5, r5
.L427:
	cmp	r4, r5
	bhi	.L439
	movs	r3, #0
	str	r3, [r1]
	str	r3, [r1, #4]
.L435:
	movs	r0, #0
.L431:
	@ sp needed
	str	r0, [r1, #8]
	pop	{r4, r5, r6, pc}
.L429:
	subs	r3, r3, r4
	uxth	r3, r3
.L439:
	cmp	r4, r3
	bls	.L429
	cmp	r4, r2
	bhi	.L441
.L433:
	subs	r2, r2, r4
	uxth	r2, r2
	cmp	r4, r2
	bls	.L433
.L441:
	ldr	r0, [r0]
	adds	r6, r0, r3
	str	r6, [r1, #4]
	cmp	r2, r3
	bls	.L434
	subs	r2, r2, r3
	movs	r3, #0
	strh	r2, [r1]
	strh	r3, [r1, #2]
	b	.L435
.L426:
	lsls	r5, r4, #1
	subs	r5, r5, r2
	adds	r5, r3, r5
	uxth	r5, r5
	b	.L427
.L434:
	subs	r4, r4, r3
	subs	r3, r3, r5
	strh	r4, [r1]
	strh	r3, [r1, #2]
	b	.L431
	.size	tu_fifo_get_write_info, .-tu_fifo_get_write_info
	.ident	"GCC: (Arch Repository) 13.1.0"
