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
	.file	"tusb.c"
	.text
	.section	.text.tusb_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tusb_init
	.syntax unified
	.code	16
	.thumb_func
	.type	tusb_init, %function
tusb_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r0, #0
	@ sp needed
	bl	tud_init
	pop	{r4, pc}
	.size	tusb_init, .-tusb_init
	.section	.text.tusb_inited,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tusb_inited
	.syntax unified
	.code	16
	.thumb_func
	.type	tusb_inited, %function
tusb_inited:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	tud_inited
	@ sp needed
	pop	{r4, pc}
	.size	tusb_inited, .-tusb_inited
	.section	.text.tu_desc_find,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_desc_find
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_desc_find, %function
tu_desc_find:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	.L10
.L6:
	ldrb	r3, [r0, #1]
	cmp	r3, r2
	beq	.L4
	ldrb	r3, [r0]
	adds	r0, r0, r3
.L10:
	adds	r3, r0, #1
	cmp	r1, r3
	bhi	.L6
	movs	r0, #0
.L4:
	@ sp needed
	bx	lr
	.size	tu_desc_find, .-tu_desc_find
	.section	.text.tu_desc_find2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_desc_find2
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_desc_find2, %function
tu_desc_find2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	adds	r4, r0, #2
	cmp	r1, r4
	bhi	.L14
	b	.L15
.L13:
	ldrb	r4, [r0]
	adds	r0, r0, r4
	adds	r4, r0, #2
	cmp	r1, r4
	bls	.L15
.L14:
	ldrb	r4, [r0, #1]
	cmp	r4, r2
	bne	.L13
	ldrb	r4, [r0, #2]
	cmp	r4, r3
	bne	.L13
.L11:
	@ sp needed
	pop	{r4, pc}
.L15:
	movs	r0, #0
	b	.L11
	.size	tu_desc_find2, .-tu_desc_find2
	.section	.text.tu_desc_find3,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_desc_find3
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_desc_find3, %function
tu_desc_find3:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	add	r4, sp, #12
	ldrb	r5, [r4]
	adds	r4, r0, #3
	cmp	r1, r4
	bhi	.L21
	b	.L22
.L20:
	ldrb	r4, [r0]
	adds	r0, r0, r4
	adds	r4, r0, #3
	cmp	r1, r4
	bls	.L22
.L21:
	ldrb	r4, [r0, #1]
	cmp	r4, r2
	bne	.L20
	ldrb	r4, [r0, #2]
	cmp	r4, r3
	bne	.L20
	ldrb	r4, [r0, #3]
	cmp	r4, r5
	bne	.L20
.L18:
	@ sp needed
	pop	{r4, r5, pc}
.L22:
	movs	r0, #0
	b	.L18
	.size	tu_desc_find3, .-tu_desc_find3
	.section	.text.tu_edpt_claim,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_edpt_claim
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_edpt_claim, %function
tu_edpt_claim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r0]
	push	{r4, r5, r6, lr}
	lsls	r3, r3, #31
	movs	r4, r0
	movs	r6, r1
	lsrs	r5, r3, #31
	cmp	r3, #0
	bne	.L28
	ldrb	r3, [r0]
	lsls	r3, r3, #29
	bpl	.L32
.L26:
	@ sp needed
	movs	r0, r5
	pop	{r4, r5, r6, pc}
.L32:
	movs	r1, #1
	movs	r0, r6
	rsbs	r1, r1, #0
	bl	mutex_enter_timeout_ms
	ldrb	r3, [r4]
	lsls	r3, r3, #31
	lsrs	r5, r3, #31
	cmp	r3, #0
	bne	.L29
	ldrb	r3, [r4]
	lsls	r3, r3, #29
	bmi	.L27
	movs	r2, #4
	ldrb	r3, [r4]
	movs	r5, #1
	orrs	r3, r2
	strb	r3, [r4]
	b	.L27
.L28:
	movs	r5, #0
	b	.L26
.L29:
	movs	r5, #0
.L27:
	movs	r0, r6
	bl	mutex_exit
	b	.L26
	.size	tu_edpt_claim, .-tu_edpt_claim
	.section	.text.tu_edpt_release,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_edpt_release
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_edpt_release, %function
tu_edpt_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r1
	movs	r1, #1
	movs	r6, r0
	rsbs	r1, r1, #0
	movs	r0, r4
	bl	mutex_enter_timeout_ms
	ldrb	r3, [r6]
	lsls	r3, r3, #29
	lsrs	r5, r3, #31
	cmp	r3, #0
	blt	.L36
.L34:
	@ sp needed
	movs	r0, r4
	bl	mutex_exit
	movs	r0, r5
	pop	{r4, r5, r6, pc}
.L36:
	ldrb	r3, [r6]
	lsls	r3, r3, #31
	bmi	.L35
	movs	r2, #4
	ldrb	r3, [r6]
	bics	r3, r2
	strb	r3, [r6]
	b	.L34
.L35:
	movs	r5, #0
	b	.L34
	.size	tu_edpt_release, .-tu_edpt_release
	.section	.text.tu_edpt_validate,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_edpt_validate
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_edpt_validate, %function
tu_edpt_validate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #5]
	ldrb	r2, [r0, #4]
	lsls	r3, r3, #8
	orrs	r3, r2
	ldrb	r2, [r0, #3]
	lsls	r3, r3, #21
	lsls	r2, r2, #30
	lsrs	r3, r3, #21
	lsrs	r2, r2, #30
	cmp	r2, #2
	beq	.L38
	cmp	r2, #3
	beq	.L39
	movs	r0, #0
	cmp	r2, #1
	bne	.L40
	subs	r1, r1, #2
	rsbs	r2, r1, #0
	adcs	r1, r1, r2
	ldr	r2, .L48
	mov	ip, r2
	add	r1, r1, ip
	cmp	r1, r3
	adcs	r0, r0, r0
	uxtb	r0, r0
.L40:
	@ sp needed
	bx	lr
.L39:
	subs	r1, r1, #2
	subs	r2, r1, #1
	sbcs	r1, r1, r2
	ldr	r2, .L48+4
	rsbs	r1, r1, #0
	ands	r1, r2
	movs	r2, #128
	lsls	r2, r2, #3
	mov	ip, r2
	movs	r0, #0
	add	r1, r1, ip
	cmp	r1, r3
	adcs	r0, r0, r0
	uxtb	r0, r0
	b	.L40
.L38:
	cmp	r1, #2
	beq	.L47
	movs	r0, #0
	movs	r2, #64
	cmp	r2, r3
	adcs	r0, r0, r0
	uxtb	r0, r0
	b	.L40
.L47:
	ldr	r2, .L48+8
	adds	r0, r3, r2
	rsbs	r3, r0, #0
	adcs	r0, r0, r3
	uxtb	r0, r0
	b	.L40
.L49:
	.align	2
.L48:
	.word	1023
	.word	-960
	.word	-512
	.size	tu_edpt_validate, .-tu_edpt_validate
	.section	.text.tu_edpt_bind_driver,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_edpt_bind_driver
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_edpt_bind_driver, %function
tu_edpt_bind_driver:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r2, r1, r2
	push	{r4, r5, r6, lr}
	cmp	r1, r2
	bcs	.L50
	movs	r6, #127
.L54:
	ldrb	r4, [r1, #1]
	cmp	r4, #5
	beq	.L55
	ldrb	r4, [r1]
	adds	r1, r1, r4
	cmp	r2, r1
	bhi	.L54
.L50:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L55:
	movs	r4, r6
	ldrb	r5, [r1, #2]
	ands	r4, r5
	lsls	r4, r4, #1
	adds	r4, r0, r4
	lsrs	r5, r5, #7
	strb	r3, [r4, r5]
	ldrb	r4, [r1]
	adds	r1, r1, r4
	cmp	r2, r1
	bhi	.L54
	b	.L50
	.size	tu_edpt_bind_driver, .-tu_edpt_bind_driver
	.section	.text.tu_desc_get_interface_total_len,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_desc_get_interface_total_len
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_desc_get_interface_total_len, %function
tu_desc_get_interface_total_len:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	subs	r4, r1, #1
	movs	r3, r0
	uxtb	r4, r4
	cmp	r1, #0
	beq	.L62
	ldrb	r1, [r0]
	movs	r0, #0
	movs	r5, r1
.L61:
	adds	r0, r5, r0
	uxth	r0, r0
	adds	r3, r3, r1
	cmp	r0, r2
	bcc	.L60
	b	.L58
.L59:
	ldrb	r1, [r3]
	adds	r0, r1, r0
	uxth	r0, r0
	adds	r3, r3, r1
	cmp	r2, r0
	bls	.L58
.L60:
	ldrb	r1, [r3, #1]
	cmp	r1, #11
	beq	.L57
	cmp	r1, #4
	bne	.L59
	ldrb	r1, [r3, #3]
	cmp	r1, #0
	bne	.L59
.L58:
	subs	r4, r4, #1
	uxtb	r4, r4
	cmp	r4, #255
	beq	.L57
	ldrb	r1, [r3]
	b	.L61
.L62:
	movs	r0, #0
.L57:
	@ sp needed
	pop	{r4, r5, pc}
	.size	tu_desc_get_interface_total_len, .-tu_desc_get_interface_total_len
	.section	.text.tu_edpt_stream_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_edpt_stream_init
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_edpt_stream_init, %function
tu_edpt_stream_init:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7, lr}
	movs	r5, r0
	movs	r4, r0
	mov	r8, r1
	sub	sp, sp, #12
	movs	r7, r3
	add	r3, sp, #48
	movs	r6, r2
	ldmia	r3!, {r2}
	adds	r5, r5, #32
	ldrh	r3, [r3]
	movs	r0, r5
	mov	fp, r3
	add	r3, sp, #60
	ldrh	r3, [r3]
	mov	r10, r2
	mov	r9, r3
	bl	mutex_init
	mov	r3, r8
	movs	r0, r4
	strb	r3, [r4]
	mov	r2, fp
	movs	r3, #1
	mov	r1, r10
	adds	r0, r0, #12
	str	r7, [sp]
	bl	tu_fifo_config
	movs	r3, #0
	cmp	r6, #0
	beq	.L74
	movs	r3, r5
	movs	r5, #0
.L74:
	str	r3, [r4, #24]
	ldr	r3, [sp, #56]
	movs	r0, #1
	str	r3, [r4, #8]
	mov	r3, r9
	str	r5, [r4, #28]
	strh	r3, [r4, #6]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
	.size	tu_edpt_stream_init, .-tu_edpt_stream_init
	.section	.text.tu_edpt_stream_write_zlp_if_needed,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_edpt_stream_write_zlp_if_needed
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_edpt_stream_write_zlp_if_needed, %function
tu_edpt_stream_write_zlp_if_needed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	adds	r0, r0, #12
	movs	r5, r1
	bl	tu_fifo_count
	cmp	r0, #0
	bne	.L80
	cmp	r5, #0
	beq	.L80
	ldrh	r3, [r4, #4]
	subs	r3, r3, #1
	tst	r5, r3
	bne	.L80
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.L87
.L80:
	movs	r0, #0
.L79:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L87:
	ldrb	r1, [r4, #2]
	ldrb	r0, [r4, #1]
	bl	usbd_edpt_claim
	cmp	r0, #0
	beq	.L80
	ldrb	r3, [r4]
	cmp	r3, #0
	bne	.L80
	movs	r2, #0
	ldrb	r1, [r4, #2]
	ldrb	r0, [r4, #1]
	bl	usbd_edpt_xfer
	b	.L79
	.size	tu_edpt_stream_write_zlp_if_needed, .-tu_edpt_stream_write_zlp_if_needed
	.section	.text.tu_edpt_stream_write_xfer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_edpt_stream_write_xfer
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_edpt_stream_write_xfer, %function
tu_edpt_stream_write_xfer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r0
	adds	r5, r5, #12
	movs	r4, r0
	movs	r0, r5
	bl	tu_fifo_count
	cmp	r0, #0
	beq	.L90
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.L100
.L90:
	movs	r0, #0
.L88:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L100:
	ldrb	r1, [r4, #2]
	ldrb	r0, [r4, #1]
	bl	usbd_edpt_claim
	cmp	r0, #0
	beq	.L90
	movs	r0, r5
	ldrh	r2, [r4, #6]
	ldr	r1, [r4, #8]
	bl	tu_fifo_read_n
	ldrb	r3, [r4]
	subs	r5, r0, #0
	beq	.L92
	cmp	r3, #0
	bne	.L90
	movs	r3, r5
	ldr	r2, [r4, #8]
	ldrb	r1, [r4, #2]
	ldrb	r0, [r4, #1]
	bl	usbd_edpt_xfer
	cmp	r0, #0
	beq	.L90
	movs	r0, r5
	b	.L88
.L92:
	cmp	r3, #0
	bne	.L90
	ldrb	r1, [r4, #2]
	ldrb	r0, [r4, #1]
	bl	usbd_edpt_release
	b	.L90
	.size	tu_edpt_stream_write_xfer, .-tu_edpt_stream_write_xfer
	.section	.text.tu_edpt_stream_write,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_edpt_stream_write
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_edpt_stream_write, %function
tu_edpt_stream_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r0
	subs	r0, r2, #0
	bne	.L108
.L102:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L108:
	movs	r6, r5
	adds	r6, r6, #12
	uxth	r2, r2
	movs	r0, r6
	bl	tu_fifo_write_n
	movs	r4, r0
	movs	r0, r6
	bl	tu_fifo_count
	ldrh	r3, [r5, #4]
	cmp	r0, r3
	bcs	.L103
	ldrh	r2, [r5, #16]
	cmp	r2, r3
	bcs	.L104
.L103:
	movs	r0, r5
	bl	tu_edpt_stream_write_xfer
.L104:
	movs	r0, r4
	b	.L102
	.size	tu_edpt_stream_write, .-tu_edpt_stream_write
	.section	.text.tu_edpt_stream_read_xfer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_edpt_stream_read_xfer
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_edpt_stream_read_xfer, %function
tu_edpt_stream_read_xfer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r0
	movs	r4, r0
	adds	r5, r5, #12
	movs	r0, r5
	bl	tu_fifo_remaining
	ldrh	r3, [r4, #4]
	cmp	r3, r0
	bhi	.L111
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.L125
.L111:
	movs	r0, #0
.L109:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L125:
	ldrb	r1, [r4, #2]
	ldrb	r0, [r4, #1]
	bl	usbd_edpt_claim
	cmp	r0, #0
	beq	.L111
	movs	r0, r5
	bl	tu_fifo_remaining
	ldrh	r3, [r4, #4]
	cmp	r3, r0
	bhi	.L113
	ldrb	r2, [r4]
	ldrh	r1, [r4, #6]
	cmp	r2, #0
	bne	.L111
	rsbs	r3, r3, #0
	ands	r3, r0
	adds	r5, r3, #0
	uxth	r3, r3
	cmp	r3, r1
	bls	.L114
	adds	r5, r1, #0
.L114:
	uxth	r5, r5
	movs	r2, #0
	ldrb	r0, [r4, #1]
	ldrb	r1, [r4, #2]
	cmp	r5, #0
	beq	.L115
	ldr	r2, [r4, #8]
.L115:
	movs	r3, r5
	bl	usbd_edpt_xfer
	cmp	r0, #0
	beq	.L111
	movs	r0, r5
	b	.L109
.L113:
	ldrb	r3, [r4]
	cmp	r3, #0
	bne	.L111
	ldrb	r1, [r4, #2]
	ldrb	r0, [r4, #1]
	bl	usbd_edpt_release
	b	.L111
	.size	tu_edpt_stream_read_xfer, .-tu_edpt_stream_read_xfer
	.section	.text.tu_edpt_stream_read,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tu_edpt_stream_read
	.syntax unified
	.code	16
	.thumb_func
	.type	tu_edpt_stream_read, %function
tu_edpt_stream_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r6, r0
	adds	r6, r6, #12
	movs	r4, r0
	uxth	r2, r2
	movs	r0, r6
	bl	tu_fifo_read_n
	movs	r5, r0
	movs	r0, r6
	bl	tu_fifo_remaining
	ldrh	r3, [r4, #4]
	cmp	r3, r0
	bhi	.L126
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.L138
.L126:
	@ sp needed
	movs	r0, r5
	pop	{r4, r5, r6, pc}
.L138:
	ldrb	r1, [r4, #2]
	ldrb	r0, [r4, #1]
	bl	usbd_edpt_claim
	cmp	r0, #0
	beq	.L126
	movs	r0, r6
	bl	tu_fifo_remaining
	ldrh	r3, [r4, #4]
	cmp	r0, r3
	bcc	.L130
	ldrb	r2, [r4]
	ldrh	r1, [r4, #6]
	cmp	r2, #0
	bne	.L126
	rsbs	r3, r3, #0
	ands	r3, r0
	adds	r2, r3, #0
	uxth	r3, r3
	cmp	r3, r1
	bls	.L131
	adds	r2, r1, #0
.L131:
	uxth	r3, r2
	ldrb	r0, [r4, #1]
	movs	r2, #0
	ldrb	r1, [r4, #2]
	cmp	r3, #0
	beq	.L132
	ldr	r2, [r4, #8]
.L132:
	bl	usbd_edpt_xfer
	b	.L126
.L130:
	ldrb	r3, [r4]
	cmp	r3, #0
	bne	.L126
	ldrb	r1, [r4, #2]
	ldrb	r0, [r4, #1]
	bl	usbd_edpt_release
	b	.L126
	.size	tu_edpt_stream_read, .-tu_edpt_stream_read
	.ident	"GCC: (Arch Repository) 13.1.0"
