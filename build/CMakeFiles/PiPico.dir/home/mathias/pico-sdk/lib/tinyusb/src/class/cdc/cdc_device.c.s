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
	.file	"cdc_device.c"
	.text
	.section	.text.tud_cdc_n_connected,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_cdc_n_connected
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_n_connected, %function
tud_cdc_n_connected:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	bl	tud_mounted
	cmp	r0, #0
	bne	.L2
.L4:
	movs	r0, #0
.L3:
	@ sp needed
	pop	{r4, pc}
.L2:
	bl	tud_suspended
	cmp	r0, #0
	bne	.L4
	movs	r2, #178
	lsls	r2, r2, #2
	muls	r2, r4
	ldr	r3, .L6
	adds	r0, r0, #1
	adds	r3, r3, r2
	ldrb	r3, [r3, #4]
	ands	r0, r3
	b	.L3
.L7:
	.align	2
.L6:
	.word	_cdcd_itf
	.size	tud_cdc_n_connected, .-tud_cdc_n_connected
	.section	.text.tud_cdc_n_get_line_state,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_cdc_n_get_line_state
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_n_get_line_state, %function
tud_cdc_n_get_line_state:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #178
	@ sp needed
	lsls	r2, r2, #2
	muls	r2, r0
	ldr	r3, .L9
	adds	r3, r3, r2
	ldrb	r0, [r3, #4]
	bx	lr
.L10:
	.align	2
.L9:
	.word	_cdcd_itf
	.size	tud_cdc_n_get_line_state, .-tud_cdc_n_get_line_state
	.section	.text.tud_cdc_n_get_line_coding,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_cdc_n_get_line_coding
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_n_get_line_coding, %function
tud_cdc_n_get_line_coding:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	movs	r0, r1
	movs	r1, #178
	lsls	r1, r1, #2
	push	{r4, lr}
	muls	r1, r3
	@ sp needed
	ldr	r3, .L12
	movs	r2, #7
	adds	r1, r1, r3
	bl	memcpy
	pop	{r4, pc}
.L13:
	.align	2
.L12:
	.word	_cdcd_itf+6
	.size	tud_cdc_n_get_line_coding, .-tud_cdc_n_get_line_coding
	.section	.text.tud_cdc_n_set_wanted_char,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_cdc_n_set_wanted_char
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_n_set_wanted_char, %function
tud_cdc_n_set_wanted_char:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #178
	@ sp needed
	lsls	r2, r2, #2
	muls	r2, r0
	ldr	r3, .L15
	adds	r3, r3, r2
	strb	r1, [r3, #5]
	bx	lr
.L16:
	.align	2
.L15:
	.word	_cdcd_itf
	.size	tud_cdc_n_set_wanted_char, .-tud_cdc_n_set_wanted_char
	.section	.text.tud_cdc_n_available,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_cdc_n_available
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_n_available, %function
tud_cdc_n_available:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #178
	lsls	r3, r3, #2
	muls	r3, r0
	push	{r4, lr}
	ldr	r0, .L18
	@ sp needed
	adds	r0, r3, r0
	bl	tu_fifo_count
	pop	{r4, pc}
.L19:
	.align	2
.L18:
	.word	_cdcd_itf+16
	.size	tud_cdc_n_available, .-tud_cdc_n_available
	.section	.text.tud_cdc_n_read,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_cdc_n_read
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_n_read, %function
tud_cdc_n_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r5, #178
	lsls	r5, r5, #2
	muls	r5, r0
	movs	r4, r5
	mov	lr, r8
	ldr	r7, .L29
	adds	r4, r4, #16
	adds	r4, r4, r7
	push	{lr}
	movs	r0, r4
	uxth	r2, r2
	bl	tu_fifo_read_n
	movs	r6, r0
	movs	r0, r4
	bl	tu_fifo_remaining
	cmp	r0, #63
	bhi	.L28
.L20:
	@ sp needed
	movs	r0, r6
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L28:
	adds	r3, r7, r5
	movs	r0, #0
	ldrb	r1, [r3, #3]
	mov	r8, r3
	bl	usbd_edpt_claim
	cmp	r0, #0
	beq	.L20
	movs	r0, r4
	bl	tu_fifo_remaining
	cmp	r0, #63
	bls	.L24
	movs	r3, #146
	lsls	r3, r3, #2
	adds	r2, r5, r3
	mov	r3, r8
	adds	r2, r2, r7
	ldrb	r1, [r3, #3]
	movs	r0, #0
	movs	r3, #64
	bl	usbd_edpt_xfer
	b	.L20
.L24:
	mov	r3, r8
	movs	r0, #0
	ldrb	r1, [r3, #3]
	bl	usbd_edpt_release
	b	.L20
.L30:
	.align	2
.L29:
	.word	_cdcd_itf
	.size	tud_cdc_n_read, .-tud_cdc_n_read
	.section	.text.tud_cdc_n_peek,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_cdc_n_peek
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_n_peek, %function
tud_cdc_n_peek:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #178
	lsls	r3, r3, #2
	muls	r3, r0
	push	{r4, lr}
	ldr	r0, .L32
	@ sp needed
	adds	r0, r3, r0
	bl	tu_fifo_peek
	pop	{r4, pc}
.L33:
	.align	2
.L32:
	.word	_cdcd_itf+16
	.size	tud_cdc_n_peek, .-tud_cdc_n_peek
	.section	.text.tud_cdc_n_read_flush,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_cdc_n_read_flush
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_n_read_flush, %function
tud_cdc_n_read_flush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r5, #178
	lsls	r5, r5, #2
	muls	r5, r0
	movs	r4, r5
	ldr	r6, .L43
	adds	r4, r4, #16
	adds	r4, r4, r6
	movs	r0, r4
	bl	tu_fifo_clear
	movs	r0, r4
	bl	tu_fifo_remaining
	cmp	r0, #63
	bhi	.L42
.L34:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L42:
	adds	r7, r6, r5
	movs	r0, #0
	ldrb	r1, [r7, #3]
	bl	usbd_edpt_claim
	cmp	r0, #0
	beq	.L34
	movs	r0, r4
	bl	tu_fifo_remaining
	cmp	r0, #63
	bls	.L38
	movs	r3, #146
	lsls	r3, r3, #2
	adds	r2, r5, r3
	ldrb	r1, [r7, #3]
	movs	r3, #64
	adds	r2, r2, r6
	movs	r0, #0
	bl	usbd_edpt_xfer
	b	.L34
.L38:
	ldrb	r1, [r7, #3]
	movs	r0, #0
	bl	usbd_edpt_release
	b	.L34
.L44:
	.align	2
.L43:
	.word	_cdcd_itf
	.size	tud_cdc_n_read_flush, .-tud_cdc_n_read_flush
	.section	.text.tud_cdc_n_write_flush,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_cdc_n_write_flush
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_n_write_flush, %function
tud_cdc_n_write_flush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	bl	tud_mounted
	cmp	r0, #0
	bne	.L60
.L47:
	movs	r0, #0
.L45:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L60:
	bl	tud_suspended
	cmp	r0, #0
	bne	.L47
	movs	r3, #178
	lsls	r3, r3, #2
	muls	r4, r3
	movs	r5, r4
	ldr	r6, .L61
	adds	r5, r5, #36
	adds	r5, r5, r6
	movs	r0, r5
	bl	tu_fifo_count
	cmp	r0, #0
	beq	.L47
	adds	r7, r6, r4
	movs	r0, #0
	ldrb	r1, [r7, #2]
	bl	usbd_edpt_claim
	cmp	r0, #0
	beq	.L47
	movs	r3, #162
	lsls	r3, r3, #2
	mov	ip, r3
	add	r4, r4, ip
	adds	r4, r4, r6
	movs	r1, r4
	movs	r0, r5
	movs	r2, #64
	bl	tu_fifo_read_n
	ldrb	r1, [r7, #2]
	subs	r5, r0, #0
	beq	.L49
	movs	r3, r0
	movs	r2, r4
	movs	r0, #0
	bl	usbd_edpt_xfer
	cmp	r0, #0
	beq	.L47
	movs	r0, r5
	b	.L45
.L49:
	movs	r0, #0
	bl	usbd_edpt_release
	b	.L47
.L62:
	.align	2
.L61:
	.word	_cdcd_itf
	.size	tud_cdc_n_write_flush, .-tud_cdc_n_write_flush
	.section	.text.tud_cdc_n_write,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_cdc_n_write
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_n_write, %function
tud_cdc_n_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, #178
	lsls	r4, r4, #2
	muls	r4, r0
	ldr	r3, .L66
	movs	r5, r0
	adds	r4, r4, r3
	movs	r0, r4
	uxth	r2, r2
	bl	tu_fifo_write_n
	movs	r6, r0
	movs	r0, r4
	bl	tu_fifo_count
	cmp	r0, #63
	bhi	.L65
.L64:
	@ sp needed
	movs	r0, r6
	pop	{r4, r5, r6, pc}
.L65:
	movs	r0, r5
	bl	tud_cdc_n_write_flush
	b	.L64
.L67:
	.align	2
.L66:
	.word	_cdcd_itf+36
	.size	tud_cdc_n_write, .-tud_cdc_n_write
	.section	.text.tud_cdc_n_write_available,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_cdc_n_write_available
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_n_write_available, %function
tud_cdc_n_write_available:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #178
	lsls	r3, r3, #2
	muls	r3, r0
	push	{r4, lr}
	ldr	r0, .L69
	@ sp needed
	adds	r0, r3, r0
	bl	tu_fifo_remaining
	pop	{r4, pc}
.L70:
	.align	2
.L69:
	.word	_cdcd_itf+36
	.size	tud_cdc_n_write_available, .-tud_cdc_n_write_available
	.section	.text.tud_cdc_n_write_clear,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_cdc_n_write_clear
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_n_write_clear, %function
tud_cdc_n_write_clear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #178
	lsls	r3, r3, #2
	muls	r3, r0
	push	{r4, lr}
	ldr	r0, .L72
	@ sp needed
	adds	r0, r3, r0
	bl	tu_fifo_clear
	pop	{r4, pc}
.L73:
	.align	2
.L72:
	.word	_cdcd_itf+36
	.size	tud_cdc_n_write_clear, .-tud_cdc_n_write_clear
	.section	.text.cdcd_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	cdcd_init
	.syntax unified
	.code	16
	.thumb_func
	.type	cdcd_init, %function
cdcd_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #178
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L75
	sub	sp, sp, #12
	movs	r1, #0
	movs	r0, r4
	lsls	r2, r2, #2
	bl	memset
	movs	r3, #255
	strb	r3, [r4, #5]
	ldr	r3, .L75+4
	movs	r6, #128
	movs	r5, #0
	strh	r3, [r4, #6]
	movs	r7, #1
	movs	r3, #8
	movs	r1, r4
	movs	r0, r4
	lsls	r6, r6, #1
	strb	r3, [r4, #12]
	movs	r2, r6
	strh	r7, [r4, #8]
	adds	r1, r1, #56
	str	r5, [sp]
	subs	r3, r3, #7
	adds	r0, r0, #16
	bl	tu_fifo_config
	movs	r1, r4
	movs	r0, r4
	adds	r1, r1, #57
	movs	r2, r6
	adds	r1, r1, #255
	movs	r3, #1
	str	r7, [sp]
	adds	r0, r0, #36
	bl	tu_fifo_config
	movs	r3, #142
	lsls	r3, r3, #2
	adds	r6, r4, r3
	movs	r0, r6
	bl	mutex_init
	movs	r3, #144
	lsls	r3, r3, #2
	str	r6, [r4, #32]
	adds	r6, r4, r3
	movs	r0, r6
	str	r5, [r4, #28]
	bl	mutex_init
	str	r6, [r4, #48]
	str	r5, [r4, #52]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L76:
	.align	2
.L75:
	.word	_cdcd_itf
	.word	-15872
	.size	cdcd_init, .-cdcd_init
	.section	.text.cdcd_reset,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	cdcd_reset
	.syntax unified
	.code	16
	.thumb_func
	.type	cdcd_reset, %function
cdcd_reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L78
	movs	r2, #5
	@ sp needed
	movs	r1, #0
	movs	r0, r4
	bl	memset
	movs	r0, r4
	adds	r4, r4, #36
	adds	r0, r0, #16
	bl	tu_fifo_clear
	movs	r0, r4
	bl	tu_fifo_clear
	movs	r1, #1
	movs	r0, r4
	bl	tu_fifo_set_overwritable
	pop	{r4, pc}
.L79:
	.align	2
.L78:
	.word	_cdcd_itf
	.size	cdcd_reset, .-cdcd_reset
	.section	.text.cdcd_open,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	cdcd_open
	.syntax unified
	.code	16
	.thumb_func
	.type	cdcd_open, %function
cdcd_open:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldrb	r3, [r1, #5]
	movs	r6, r0
	sub	sp, sp, #12
	cmp	r3, #2
	bne	.L83
	ldrb	r3, [r1, #6]
	cmp	r3, #2
	beq	.L106
.L83:
	movs	r5, #0
.L82:
	movs	r0, r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L106:
	ldr	r7, .L109
	ldrb	r3, [r7, #2]
	cmp	r3, #0
	bne	.L83
	ldrb	r3, [r1, #2]
	movs	r5, #9
	strb	r3, [r7]
	ldrb	r4, [r1]
	adds	r4, r1, r4
	ldrb	r3, [r4, #1]
	cmp	r3, #36
	bne	.L85
	cmp	r2, #8
	bhi	.L86
	b	.L87
.L107:
	cmp	r2, r5
	bcc	.L87
.L86:
	ldrb	r3, [r4]
	adds	r4, r4, r3
	adds	r5, r3, r5
	ldrb	r3, [r4, #1]
	uxth	r5, r5
	cmp	r3, #36
	beq	.L107
.L85:
	cmp	r3, #5
	beq	.L108
.L89:
	cmp	r3, #4
	bne	.L87
	ldrb	r3, [r4, #5]
	cmp	r3, #10
	bne	.L87
	ldr	r3, .L109+4
	ldrb	r7, [r4]
	str	r3, [sp, #4]
	adds	r3, r3, #1
	str	r3, [sp]
	movs	r2, #2
	movs	r3, #2
	movs	r0, r6
	adds	r1, r4, r7
	bl	usbd_open_edpt_pair
	cmp	r0, #0
	beq	.L83
	adds	r5, r5, #14
	adds	r5, r5, r7
	uxth	r5, r5
.L87:
	ldr	r4, .L109+8
	movs	r0, r4
	bl	tu_fifo_remaining
	cmp	r0, #63
	bls	.L82
	movs	r6, r4
	subs	r6, r6, #16
	movs	r0, #0
	ldrb	r1, [r6, #3]
	bl	usbd_edpt_claim
	cmp	r0, #0
	beq	.L82
	movs	r0, r4
	bl	tu_fifo_remaining
	cmp	r0, #63
	bls	.L91
	movs	r3, #142
	lsls	r3, r3, #2
	adds	r2, r4, r3
	subs	r3, r3, #249
	ldrb	r1, [r6, #3]
	subs	r3, r3, #255
	movs	r0, #0
	bl	usbd_edpt_xfer
	b	.L82
.L108:
	movs	r1, r4
	movs	r0, r6
	bl	usbd_edpt_open
	cmp	r0, #0
	beq	.L83
	ldrb	r3, [r4, #2]
	strb	r3, [r7, #1]
	ldrb	r3, [r4]
	adds	r5, r3, r5
	adds	r4, r4, r3
	ldrb	r3, [r4, #1]
	uxth	r5, r5
	b	.L89
.L91:
	ldrb	r1, [r6, #3]
	movs	r0, #0
	bl	usbd_edpt_release
	b	.L82
.L110:
	.align	2
.L109:
	.word	_cdcd_itf
	.word	_cdcd_itf+2
	.word	_cdcd_itf+16
	.size	cdcd_open, .-cdcd_open
	.section	.text.cdcd_control_xfer_cb,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	cdcd_control_xfer_cb
	.syntax unified
	.code	16
	.thumb_func
	.type	cdcd_control_xfer_cb, %function
cdcd_control_xfer_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r3, #96
	movs	r4, r2
	ldrb	r2, [r2]
	movs	r5, r0
	ands	r3, r2
	movs	r0, #0
	cmp	r3, #32
	bne	.L112
	ldr	r2, .L142
	ldrb	r3, [r4, #5]
	ldrb	r7, [r4, #4]
	ldrb	r6, [r2]
	lsls	r3, r3, #8
	orrs	r3, r7
	cmp	r6, r3
	bne	.L112
	ldrb	r3, [r4, #1]
	cmp	r3, #34
	beq	.L113
	bhi	.L114
	cmp	r3, #32
	beq	.L115
	cmp	r3, #33
	bne	.L112
	cmp	r1, #1
	beq	.L122
.L119:
	movs	r0, #1
.L112:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L114:
	cmp	r3, #35
	bne	.L112
	cmp	r1, #1
	beq	.L124
	cmp	r1, #3
	bne	.L119
	ldr	r3, .L142+4
	cmp	r3, #0
	beq	.L119
	ldrb	r1, [r4, #3]
	ldrb	r3, [r4, #2]
	lsls	r1, r1, #8
	movs	r0, #0
	orrs	r1, r3
	bl	tud_cdc_send_break_cb
	movs	r0, #1
	b	.L112
.L113:
	cmp	r1, #1
	beq	.L124
	cmp	r1, #3
	bne	.L119
	movs	r5, #1
	movs	r6, r5
	ldrb	r3, [r4, #2]
	ldrb	r4, [r4, #3]
	subs	r1, r1, #2
	lsls	r4, r4, #8
	orrs	r4, r3
	strb	r4, [r2, #4]
	ands	r6, r4
	adds	r2, r2, #36
	movs	r0, r2
	eors	r1, r6
	bl	tu_fifo_set_overwritable
	ldr	r3, .L142+8
	cmp	r3, #0
	beq	.L119
	lsrs	r2, r4, #1
	movs	r0, #0
	movs	r1, r6
	ands	r2, r5
	bl	tud_cdc_line_state_cb
	movs	r0, #1
	b	.L112
.L122:
	movs	r3, #7
	movs	r1, r4
	movs	r0, r5
	ldr	r2, .L142+12
	bl	tud_control_xfer
	movs	r0, #1
	b	.L112
.L115:
	cmp	r1, #1
	beq	.L122
	cmp	r1, #3
	bne	.L119
	ldr	r3, .L142+16
	cmp	r3, #0
	beq	.L119
	movs	r0, #0
	adds	r1, r2, #6
	bl	tud_cdc_line_coding_cb
	movs	r0, #1
	b	.L112
.L124:
	movs	r1, r4
	movs	r0, r5
	bl	tud_control_status
	movs	r0, #1
	b	.L112
.L143:
	.align	2
.L142:
	.word	_cdcd_itf
	.word	tud_cdc_send_break_cb
	.word	tud_cdc_line_state_cb
	.word	_cdcd_itf+6
	.word	tud_cdc_line_coding_cb
	.size	cdcd_control_xfer_cb, .-cdcd_control_xfer_cb
	.section	.text.cdcd_xfer_cb,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	cdcd_xfer_cb
	.syntax unified
	.code	16
	.thumb_func
	.type	cdcd_xfer_cb, %function
cdcd_xfer_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r8
	mov	r7, r10
	mov	lr, fp
	mov	r6, r9
	push	{r5, r6, r7, lr}
	ldr	r5, .L185
	movs	r7, r3
	ldrb	r2, [r5, #3]
	mov	r8, r0
	movs	r4, r1
	ldrb	r3, [r5, #2]
	cmp	r2, r1
	beq	.L182
	movs	r0, #0
	cmp	r3, r1
	beq	.L149
.L148:
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L147:
	ldr	r3, .L185+4
	cmp	r3, #0
	beq	.L155
	mov	r0, r9
	bl	tu_fifo_empty
	cmp	r0, #0
	beq	.L183
.L155:
	mov	r0, r9
	bl	tu_fifo_remaining
	cmp	r0, #63
	bls	.L149
	mov	r6, r9
	subs	r6, r6, #16
	movs	r0, #0
	ldrb	r1, [r6, #3]
	bl	usbd_edpt_claim
	cmp	r0, #0
	bne	.L184
.L149:
	ldrb	r3, [r5, #2]
	cmp	r3, r4
	beq	.L159
.L162:
	movs	r0, #1
	b	.L148
.L159:
	ldr	r3, .L185+8
	cmp	r3, #0
	beq	.L160
	movs	r0, #0
	bl	tud_cdc_tx_complete_cb
.L160:
	movs	r0, #0
	bl	tud_cdc_n_write_flush
	cmp	r0, #0
	bne	.L162
	ldr	r4, .L185+12
	movs	r0, r4
	bl	tu_fifo_count
	cmp	r0, #0
	bne	.L162
	cmp	r7, #0
	beq	.L162
	lsls	r7, r7, #26
	bne	.L162
	subs	r4, r4, #36
	mov	r0, r8
	ldrb	r1, [r4, #2]
	bl	usbd_edpt_claim
	cmp	r0, #0
	beq	.L162
	movs	r3, #0
	movs	r2, #0
	mov	r0, r8
	ldrb	r1, [r4, #2]
	bl	usbd_edpt_xfer
	movs	r0, #1
	b	.L148
.L182:
	movs	r3, #146
	lsls	r3, r3, #2
	adds	r6, r5, r3
	movs	r3, #16
	mov	fp, r3
	add	fp, fp, r5
	movs	r1, r6
	mov	r0, fp
	uxth	r2, r7
	bl	tu_fifo_write_n
	ldr	r3, .L185+16
	mov	r9, fp
	cmp	r3, #0
	beq	.L147
	ldrb	r3, [r5, #5]
	cmp	r3, #255
	beq	.L147
	cmp	r7, #0
	beq	.L147
	adds	r2, r6, r7
	mov	r10, r2
	b	.L153
.L151:
	adds	r6, r6, #1
	cmp	r10, r6
	beq	.L147
	ldrb	r3, [r5, #5]
.L153:
	ldrb	r2, [r6]
	cmp	r2, r3
	bne	.L151
	mov	r0, r9
	bl	tu_fifo_empty
	cmp	r0, #0
	bne	.L151
	mov	r3, r9
	subs	r3, r3, #16
	ldrb	r1, [r3, #5]
	bl	tud_cdc_rx_wanted_cb
	b	.L151
.L184:
	mov	r0, r9
	bl	tu_fifo_remaining
	cmp	r0, #63
	bls	.L158
	movs	r2, #142
	lsls	r2, r2, #2
	movs	r3, #64
	ldrb	r1, [r6, #3]
	add	r2, r2, r9
	movs	r0, #0
	bl	usbd_edpt_xfer
	b	.L149
.L183:
	bl	tud_cdc_rx_cb
	b	.L155
.L158:
	ldrb	r1, [r6, #3]
	movs	r0, #0
	bl	usbd_edpt_release
	b	.L149
.L186:
	.align	2
.L185:
	.word	_cdcd_itf
	.word	tud_cdc_rx_cb
	.word	tud_cdc_tx_complete_cb
	.word	_cdcd_itf+36
	.word	tud_cdc_rx_wanted_cb
	.size	cdcd_xfer_cb, .-cdcd_xfer_cb
	.section	.bss._cdcd_itf,"aw",%nobits
	.align	2
	.type	_cdcd_itf, %object
	.size	_cdcd_itf, 712
_cdcd_itf:
	.space	712
	.weak	tud_cdc_rx_cb
	.weak	tud_cdc_rx_wanted_cb
	.weak	tud_cdc_tx_complete_cb
	.weak	tud_cdc_line_coding_cb
	.weak	tud_cdc_line_state_cb
	.weak	tud_cdc_send_break_cb
	.ident	"GCC: (Arch Repository) 13.1.0"
