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
	.file	"usbd_control.c"
	.text
	.section	.text.tud_control_status,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_control_status
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_control_status, %function
tud_control_status:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L3
	movs	r6, r0
	@ sp needed
	movs	r2, #8
	movs	r0, r4
	movs	r5, r1
	bl	memcpy
	movs	r3, #0
	movs	r1, #128
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	ldrb	r3, [r5]
	movs	r0, r6
	bics	r1, r3
	movs	r2, #0
	movs	r3, #0
	bl	usbd_edpt_xfer
	pop	{r4, r5, r6, pc}
.L4:
	.align	2
.L3:
	.word	_ctrl_xfer
	.size	tud_control_status, .-tud_control_status
	.section	.text.tud_control_xfer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_control_xfer
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_control_xfer, %function
tud_control_xfer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	lr, r9
	mov	r7, r8
	mov	r8, r2
	ldr	r6, .L16
	push	{r7, lr}
	mov	r9, r0
	movs	r2, #8
	movs	r0, r6
	movs	r5, r1
	movs	r7, r3
	bl	memcpy
	mov	r3, r8
	str	r3, [r6, #8]
	movs	r3, #0
	strh	r3, [r6, #14]
	ldrb	r4, [r5, #7]
	ldrb	r3, [r5, #6]
	lsls	r4, r4, #8
	orrs	r4, r3
	adds	r3, r4, #0
	cmp	r4, r7
	bls	.L6
	adds	r3, r7, #0
.L6:
	uxth	r7, r3
	strh	r3, [r6, #12]
	cmp	r4, #0
	beq	.L7
	cmp	r7, #0
	beq	.L8
	mov	r3, r8
	cmp	r3, #0
	beq	.L13
	adds	r3, r7, #0
	cmp	r7, #64
	bhi	.L14
	uxth	r7, r3
	ldrb	r3, [r6]
	cmp	r3, #127
	bhi	.L11
.L15:
	movs	r1, #0
	ldr	r2, .L16+4
	b	.L12
.L7:
	movs	r1, #128
	ldrb	r3, [r5]
	movs	r2, #0
	bics	r1, r3
	mov	r0, r9
	movs	r3, #0
	bl	usbd_edpt_xfer
.L9:
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L8:
	movs	r3, #127
	movs	r2, #0
	ldrb	r1, [r6]
	bics	r1, r3
.L12:
	movs	r3, r7
	mov	r0, r9
	bl	usbd_edpt_xfer
	b	.L9
.L14:
	movs	r3, #64
	uxth	r7, r3
	ldrb	r3, [r6]
	cmp	r3, #127
	bls	.L15
.L11:
	ldr	r4, .L16+4
	movs	r2, r7
	mov	r1, r8
	movs	r0, r4
	bl	memcpy
	movs	r1, #128
	movs	r2, r4
	b	.L12
.L13:
	movs	r0, #0
	b	.L9
.L17:
	.align	2
.L16:
	.word	_ctrl_xfer
	.word	_usbd_ctrl_buf
	.size	tud_control_xfer, .-tud_control_xfer
	.section	.text.usbd_control_reset,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_control_reset
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_control_reset, %function
usbd_control_reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r2, #20
	@ sp needed
	movs	r1, #0
	ldr	r0, .L19
	bl	memset
	pop	{r4, pc}
.L20:
	.align	2
.L19:
	.word	_ctrl_xfer
	.size	usbd_control_reset, .-usbd_control_reset
	.section	.text.usbd_control_set_complete_callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_control_set_complete_callback
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_control_set_complete_callback, %function
usbd_control_set_complete_callback:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L22
	@ sp needed
	str	r0, [r3, #16]
	bx	lr
.L23:
	.align	2
.L22:
	.word	_ctrl_xfer
	.size	usbd_control_set_complete_callback, .-usbd_control_set_complete_callback
	.section	.text.usbd_control_set_request,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_control_set_request
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_control_set_request, %function
usbd_control_set_request:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L25
	movs	r1, r0
	@ sp needed
	movs	r2, #8
	movs	r0, r4
	bl	memcpy
	movs	r3, #0
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	pop	{r4, pc}
.L26:
	.align	2
.L25:
	.word	_ctrl_xfer
	.size	usbd_control_set_request, .-usbd_control_set_request
	.section	.text.usbd_control_xfer_cb,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_control_xfer_cb
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_control_xfer_cb, %function
usbd_control_xfer_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L54
	movs	r5, r3
	ldrb	r3, [r4]
	movs	r6, r0
	lsrs	r2, r3, #7
	lsrs	r1, r1, #7
	cmp	r2, r1
	beq	.L28
	movs	r0, #0
	cmp	r5, #0
	beq	.L50
.L29:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L50:
	ldr	r3, .L54+4
	cmp	r3, #0
	beq	.L30
	movs	r1, r4
	movs	r0, r6
	bl	dcd_edpt0_status_complete
.L30:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L31
	movs	r2, r4
	movs	r1, #3
	movs	r0, r6
	blx	r3
.L31:
	movs	r0, #1
	b	.L29
.L28:
	ldr	r0, [r4, #8]
	cmp	r3, #127
	bhi	.L32
	cmp	r0, #0
	beq	.L41
	movs	r2, r5
	ldr	r1, .L54+8
	bl	memcpy
.L32:
	ldrh	r2, [r4, #14]
	ldr	r1, [r4, #8]
	adds	r2, r2, r5
	ldrh	r3, [r4, #6]
	uxth	r2, r2
	adds	r1, r1, r5
	strh	r2, [r4, #14]
	str	r1, [r4, #8]
	cmp	r3, r2
	beq	.L33
	cmp	r5, #63
	bls	.L33
	ldrh	r3, [r4, #12]
	subs	r0, r3, r2
	adds	r5, r0, #0
	uxth	r0, r0
	cmp	r0, #64
	bhi	.L51
.L37:
	ldrb	r0, [r4]
	uxth	r5, r5
	cmp	r0, #127
	bhi	.L52
	movs	r1, #0
	cmp	r2, r3
	beq	.L43
	ldr	r2, .L54+8
.L39:
	movs	r3, r5
	movs	r0, r6
	bl	usbd_edpt_xfer
	b	.L29
.L33:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L36
	movs	r2, r4
	movs	r1, #2
	movs	r0, r6
	blx	r3
	cmp	r0, #0
	beq	.L53
.L36:
	movs	r1, #128
	ldrb	r3, [r4]
	movs	r2, #0
	bics	r1, r3
	movs	r0, r6
	movs	r3, #0
	bl	usbd_edpt_xfer
	b	.L29
.L41:
	movs	r0, #0
	b	.L29
.L53:
	movs	r1, #0
	movs	r0, r6
	bl	dcd_edpt_stall
	movs	r0, r6
	movs	r1, #128
	bl	dcd_edpt_stall
	movs	r0, #1
	b	.L29
.L51:
	movs	r5, #64
	b	.L37
.L52:
	cmp	r2, r3
	beq	.L42
	ldr	r4, .L54+8
	movs	r2, r5
	movs	r0, r4
	bl	memcpy
	movs	r1, #128
	movs	r2, r4
	b	.L39
.L42:
	movs	r1, #128
	movs	r2, #0
	b	.L39
.L43:
	movs	r2, #0
	b	.L39
.L55:
	.align	2
.L54:
	.word	_ctrl_xfer
	.word	dcd_edpt0_status_complete
	.word	_usbd_ctrl_buf
	.size	usbd_control_xfer_cb, .-usbd_control_xfer_cb
	.section	.bss._usbd_ctrl_buf,"aw",%nobits
	.align	2
	.type	_usbd_ctrl_buf, %object
	.size	_usbd_ctrl_buf, 64
_usbd_ctrl_buf:
	.space	64
	.section	.bss._ctrl_xfer,"aw",%nobits
	.align	2
	.type	_ctrl_xfer, %object
	.size	_ctrl_xfer, 20
_ctrl_xfer:
	.space	20
	.weak	dcd_edpt0_status_complete
	.ident	"GCC: (Arch Repository) 13.1.0"
