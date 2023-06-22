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
	.file	"usbd.c"
	.text
	.section	.text.tud_speed_get,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_speed_get
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_speed_get, %function
tud_speed_get:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	@ sp needed
	ldrb	r0, [r3, #2]
	bx	lr
.L4:
	.align	2
.L3:
	.word	_usbd_dev
	.size	tud_speed_get, .-tud_speed_get
	.section	.text.tud_connected,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_connected
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_connected, %function
tud_connected:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L6
	@ sp needed
	ldrb	r0, [r3]
	lsls	r0, r0, #31
	lsrs	r0, r0, #31
	bx	lr
.L7:
	.align	2
.L6:
	.word	_usbd_dev
	.size	tud_connected, .-tud_connected
	.section	.text.tud_mounted,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_mounted
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_mounted, %function
tud_mounted:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L9
	@ sp needed
	ldrb	r0, [r3, #1]
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	uxtb	r0, r0
	bx	lr
.L10:
	.align	2
.L9:
	.word	_usbd_dev
	.size	tud_mounted, .-tud_mounted
	.section	.text.tud_suspended,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_suspended
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_suspended, %function
tud_suspended:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	@ sp needed
	ldrb	r0, [r3]
	lsls	r0, r0, #29
	lsrs	r0, r0, #31
	bx	lr
.L13:
	.align	2
.L12:
	.word	_usbd_dev
	.size	tud_suspended, .-tud_suspended
	.section	.text.tud_remote_wakeup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_remote_wakeup
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_remote_wakeup, %function
tud_remote_wakeup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L21
	push	{r4, lr}
	ldrb	r3, [r2]
	lsls	r3, r3, #29
	lsrs	r4, r3, #31
	cmp	r3, #0
	bge	.L15
	movs	r3, #24
	ldrb	r2, [r2]
	ands	r3, r2
	cmp	r3, #24
	beq	.L20
	movs	r4, #0
.L15:
	@ sp needed
	movs	r0, r4
	pop	{r4, pc}
.L20:
	ldr	r3, .L21+4
	ldrb	r0, [r3]
	bl	dcd_remote_wakeup
	b	.L15
.L22:
	.align	2
.L21:
	.word	_usbd_dev
	.word	_usbd_rhport
	.size	tud_remote_wakeup, .-tud_remote_wakeup
	.section	.text.tud_disconnect,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_disconnect
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_disconnect, %function
tud_disconnect:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L26
	push	{r4, lr}
	cmp	r3, #0
	beq	.L25
	ldr	r3, .L26+4
	ldrb	r0, [r3]
	bl	dcd_disconnect
	movs	r0, #1
.L24:
	@ sp needed
	pop	{r4, pc}
.L25:
	movs	r0, #0
	b	.L24
.L27:
	.align	2
.L26:
	.word	dcd_disconnect
	.word	_usbd_rhport
	.size	tud_disconnect, .-tud_disconnect
	.section	.text.tud_connect,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_connect
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_connect, %function
tud_connect:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L31
	push	{r4, lr}
	cmp	r3, #0
	beq	.L30
	ldr	r3, .L31+4
	ldrb	r0, [r3]
	bl	dcd_connect
	movs	r0, #1
.L29:
	@ sp needed
	pop	{r4, pc}
.L30:
	movs	r0, #0
	b	.L29
.L32:
	.align	2
.L31:
	.word	dcd_connect
	.word	_usbd_rhport
	.size	tud_connect, .-tud_connect
	.section	.text.tud_inited,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_inited
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_inited, %function
tud_inited:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L34
	@ sp needed
	ldrb	r0, [r3]
	subs	r0, r0, #255
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	uxtb	r0, r0
	bx	lr
.L35:
	.align	2
.L34:
	.word	_usbd_rhport
	.size	tud_inited, .-tud_inited
	.section	.text.tud_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_init
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_init, %function
tud_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	lr, r9
	mov	r7, r8
	push	{r7, lr}
	ldr	r6, .L51
	movs	r5, r0
	ldrb	r3, [r6]
	cmp	r3, #255
	beq	.L48
	movs	r0, #1
	b	.L42
.L48:
	movs	r2, #83
	movs	r1, #0
	ldr	r0, .L51+4
	bl	memset
	ldr	r4, .L51+8
	movs	r0, r4
	bl	mutex_init
	ldr	r3, .L51+12
	str	r4, [r3]
	ldr	r4, .L51+16
	movs	r0, r4
	subs	r4, r4, #20
	bl	critical_section_init
	movs	r0, r4
	bl	tu_fifo_clear
	ldr	r3, .L51+20
	ldr	r7, .L51+24
	str	r4, [r3]
	ldr	r3, .L51+28
	mov	r8, r3
	cmp	r7, #0
	beq	.L38
	movs	r0, r3
	bl	usbd_app_driver_get_cb
	ldr	r3, .L51+32
	str	r0, [r3]
	mov	r3, r8
	ldrb	r3, [r3]
.L39:
	ldr	r2, .L51+36
	movs	r4, #0
	mov	r9, r2
.L43:
	cmp	r7, #0
	beq	.L40
	mov	r2, r9
	cmp	r3, r4
	bhi	.L49
.L41:
	blx	r2
	mov	r3, r8
	adds	r4, r4, #1
	ldrb	r3, [r3]
	uxtb	r4, r4
	cmp	r3, r4
	bcs	.L43
	movs	r0, r5
	strb	r5, [r6]
	bl	dcd_init
	movs	r0, r5
	bl	dcd_int_enable
	movs	r0, #1
	b	.L42
.L38:
	ldrb	r3, [r3]
	b	.L39
.L40:
	cmp	r4, #0
	beq	.L50
.L46:
	movs	r0, #0
.L42:
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L50:
	ldr	r2, .L51+36
	b	.L41
.L49:
	ldr	r2, .L51+32
	lsls	r3, r4, #1
	ldr	r2, [r2]
	adds	r3, r3, r4
	lsls	r3, r3, #3
	adds	r3, r2, r3
	cmp	r3, #0
	beq	.L46
	ldr	r2, [r3]
	b	.L41
.L52:
	.align	2
.L51:
	.word	_usbd_rhport
	.word	_usbd_dev
	.word	_ubsd_mutexdef
	.word	_usbd_mutex
	.word	_usbd_qdef+20
	.word	_usbd_q
	.word	usbd_app_driver_get_cb
	.word	_app_driver_count
	.word	_app_driver
	.word	cdcd_init
	.size	tud_init, .-tud_init
	.section	.text.tud_task_event_ready,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_task_event_ready
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_task_event_ready, %function
tud_task_event_ready:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	tusb_inited
	cmp	r0, #0
	beq	.L54
	ldr	r3, .L58
	ldr	r0, [r3]
	bl	tu_fifo_empty
	movs	r3, #1
	eors	r0, r3
	uxtb	r0, r0
.L54:
	@ sp needed
	pop	{r4, pc}
.L59:
	.align	2
.L58:
	.word	_usbd_q
	.size	tud_task_event_ready, .-tud_task_event_ready
	.section	.text.tud_task_ext,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_task_ext
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_task_ext, %function
tud_task_ext:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7, lr}
	sub	sp, sp, #68
	bl	tusb_inited
	cmp	r0, #0
	bne	.LCB391
	b	.L60	@long jump
.LCB391:
	ldr	r3, .L303
	ldr	r6, .L303+4
	mov	r9, r3
	ldr	r3, .L303+8
	add	r4, sp, #52
	str	r3, [sp, #8]
	ldr	r3, .L303+12
	mov	fp, r3
	mov	r3, r9
	str	r3, [sp, #4]
.L146:
	ldr	r5, [r6]
	ldr	r2, [r5, #20]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L62:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L62
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r1, [r5, #24]
	movs	r0, r5
	movs	r1, r4
	bl	tu_fifo_read
	ldr	r2, [r5, #20]
	ldr	r3, [r5, #24]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r1, #0
	str	r1, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r3
@ 0 "" 2
	.thumb
	.syntax unified
	cmp	r0, #0
	bne	.LCB425
	b	.L60	@long jump
.LCB425:
	ldrb	r3, [r4, #1]
	cmp	r3, #8
	bhi	.L146
	ldr	r2, [sp, #4]
	lsls	r3, r3, #2
	ldr	r3, [r2, r3]
	mov	pc, r3
	.section	.rodata.tud_task_ext,"a",%progbits
	.align	2
.L66:
	.word	.L146
	.word	.L72
	.word	.L71
	.word	.L146
	.word	.L70
	.word	.L69
	.word	.L68
	.word	.L67
	.word	.L65
	.section	.text.tud_task_ext
.L65:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L146
	ldr	r0, [r4, #8]
	blx	r3
	b	.L146
.L67:
	movs	r0, #127
	ldrb	r1, [r4, #4]
	ldr	r5, .L303+8
	ands	r0, r1
	lsls	r3, r0, #1
	lsrs	r2, r1, #7
	adds	r3, r5, r3
	adds	r3, r3, r2
	movs	r5, r3
	movs	r7, #1
	adds	r5, r5, #48
	ldrb	r2, [r5, #3]
	bics	r2, r7
	strb	r2, [r5, #3]
	ldrb	r2, [r5, #3]
	adds	r7, r7, #3
	bics	r2, r7
	strb	r2, [r5, #3]
	cmp	r0, #0
	bne	.LCB470
	b	.L280	@long jump
.LCB470:
	ldr	r7, .L303+16
	ldrb	r3, [r3, #19]
	cmp	r7, #0
	beq	.L143
	ldr	r2, .L303+20
	ldrb	r2, [r2]
	cmp	r3, r2
	bcs	.LCB478
	b	.L281	@long jump
.LCB478:
	subs	r3, r3, r2
	uxtb	r3, r3
.L143:
	cmp	r3, #0
	beq	.LCB484
	b	.L60	@long jump
.LCB484:
	ldr	r5, .L303+24
.L145:
	ldr	r3, [r4, #8]
	ldrb	r2, [r4, #5]
	ldrb	r0, [r4]
	blx	r5
	b	.L146
.L68:
	movs	r2, #1
	ldr	r5, .L303+8
	movs	r0, #1
	ldrb	r3, [r5]
	movs	r1, #4
	orrs	r3, r2
	strb	r3, [r5]
	movs	r3, #51
	ldrb	r2, [r5, r3]
	bics	r2, r0
	strb	r2, [r5, r3]
	ldrb	r2, [r5, r3]
	bics	r2, r1
	strb	r2, [r5, r3]
	adds	r3, r3, #1
	ldrb	r2, [r5, r3]
	bics	r2, r0
	strb	r2, [r5, r3]
	ldrb	r2, [r5, r3]
	movs	r0, #0
	bics	r2, r1
	strb	r2, [r5, r3]
	ldrb	r3, [r4]
	mov	r10, r3
	bl	usbd_control_set_complete_callback
	movs	r2, #96
	ldrb	r3, [r4, #4]
	ands	r2, r3
	cmp	r2, #96
	bne	.LCB526
	b	.L83	@long jump
.LCB526:
	cmp	r2, #64
	bne	.LCB528
	b	.L282	@long jump
.LCB528:
	lsls	r3, r3, #27
	lsrs	r3, r3, #27
	cmp	r3, #1
	bne	.LCB533
	b	.L87	@long jump
.LCB533:
	cmp	r3, #2
	bne	.LCB535
	b	.L88	@long jump
.LCB535:
	cmp	r3, #0
	beq	.LCB537
	b	.L83	@long jump
.LCB537:
	cmp	r2, #32
	bne	.LCB539
	b	.L283	@long jump
.LCB539:
	cmp	r2, #0
	beq	.LCB541
	b	.L83	@long jump
.LCB541:
	ldrb	r3, [r4, #5]
	cmp	r3, #9
	bls	.LCB544
	b	.L83	@long jump
.LCB544:
	ldr	r2, .L303+28
	lsls	r3, r3, #2
	ldr	r3, [r2, r3]
	mov	pc, r3
	.section	.rodata.tud_task_ext
	.align	2
.L94:
	.word	.L100
	.word	.L99
	.word	.L83
	.word	.L98
	.word	.L83
	.word	.L97
	.word	.L96
	.word	.L83
	.word	.L95
	.word	.L93
	.section	.text.tud_task_ext
.L69:
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]
	lsls	r3, r3, #31
	bmi	.LCB562
	b	.L146	@long jump
.LCB562:
	ldr	r3, .L303+32
	cmp	r3, #0
	bne	.LCB565
	b	.L146	@long jump
.LCB565:
	bl	tud_resume_cb
	b	.L146
.L70:
	ldr	r5, .L303+8
	ldrb	r3, [r5]
	lsls	r3, r3, #31
	bmi	.LCB577
	b	.L146	@long jump
.LCB577:
	ldr	r3, .L303+36
	cmp	r3, #0
	bne	.LCB580
	b	.L146	@long jump
.LCB580:
	ldrb	r0, [r5]
	lsls	r0, r0, #28
	lsrs	r0, r0, #31
	bl	tud_suspend_cb
	b	.L146
.L71:
	movs	r5, #0
	ldrb	r3, [r4]
	ldr	r7, .L303+16
	mov	r10, r3
	ldr	r3, .L303+20
	mov	r8, r3
	ldrb	r3, [r3]
.L80:
	cmp	r7, #0
	beq	.L77
	mov	r2, fp
	cmp	r3, r5
	bhi	.L284
.L78:
	mov	r0, r10
	blx	r2
	mov	r3, r8
	adds	r5, r5, #1
	ldrb	r3, [r3]
	uxtb	r5, r5
	cmp	r3, r5
	bcs	.L80
	ldr	r5, .L303+8
	movs	r2, #83
	movs	r1, #0
	movs	r0, r5
	bl	memset
	movs	r2, #16
	movs	r1, #255
	adds	r0, r5, #3
	bl	memset
	movs	r0, r5
	movs	r2, #32
	movs	r1, #255
	adds	r0, r0, #19
	bl	memset
	b	.L79
.L72:
	movs	r5, #0
	ldrb	r3, [r4]
	ldr	r7, .L303+16
	mov	r10, r3
	ldr	r3, .L303+20
	mov	r8, r3
	ldrb	r3, [r3]
.L76:
	cmp	r7, #0
	beq	.L73
	mov	r2, fp
	cmp	r5, r3
	bcc	.L285
.L74:
	mov	r0, r10
	blx	r2
	mov	r3, r8
	adds	r5, r5, #1
	ldrb	r3, [r3]
	uxtb	r5, r5
	cmp	r3, r5
	bcs	.L76
	ldr	r5, .L303+8
	movs	r2, #83
	movs	r1, #0
	movs	r0, r5
	bl	memset
	movs	r2, #16
	movs	r1, #255
	adds	r0, r5, #3
	bl	memset
	movs	r0, r5
	movs	r2, #32
	movs	r1, #255
	adds	r0, r0, #19
	bl	memset
	b	.L75
.L60:
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L77:
	cmp	r5, #0
	beq	.L286
.L79:
	bl	usbd_control_reset
	ldr	r3, .L303+40
	cmp	r3, #0
	bne	.LCB694
	b	.L146	@long jump
.LCB694:
	bl	tud_umount_cb
	b	.L146
.L73:
	cmp	r5, #0
	beq	.L260
.L276:
	ldr	r5, .L303+8
.L75:
	bl	usbd_control_reset
	ldrb	r3, [r4, #4]
	strb	r3, [r5, #2]
	b	.L146
.L285:
	ldr	r2, .L303+44
	lsls	r3, r5, #1
	ldr	r2, [r2]
	adds	r3, r3, r5
	lsls	r3, r3, #3
	adds	r3, r2, r3
	cmp	r3, #0
	beq	.L276
	ldr	r2, [r3, #4]
	b	.L74
.L284:
	ldr	r2, .L303+44
	lsls	r3, r5, #1
	ldr	r2, [r2]
	adds	r3, r3, r5
	lsls	r3, r3, #3
	adds	r3, r2, r3
	cmp	r3, #0
	beq	.L79
	ldr	r2, [r3, #4]
	b	.L78
.L260:
	ldr	r2, .L303+12
	b	.L74
.L282:
	ldr	r0, .L303+48
	cmp	r0, #0
	bne	.L287
.L83:
	ldrb	r0, [r4]
	movs	r1, #0
	bl	dcd_edpt_stall
	movs	r1, #128
	ldrb	r0, [r4]
	bl	dcd_edpt_stall
	b	.L146
.L280:
	ldr	r3, [r4, #8]
	ldrb	r2, [r4, #5]
	ldrb	r0, [r4]
	bl	usbd_control_xfer_cb
	b	.L146
.L286:
	ldr	r2, .L303+12
	b	.L78
.L281:
	ldr	r2, .L303+44
	lsls	r0, r3, #1
	ldr	r2, [r2]
	adds	r3, r0, r3
	lsls	r3, r3, #3
	adds	r3, r2, r3
	cmp	r3, #0
	beq	.L60
	ldr	r5, [r3, #16]
	b	.L145
.L287:
	bl	usbd_control_set_complete_callback
	movs	r1, #1
	mov	r0, r10
	add	r2, sp, #56
	bl	tud_vendor_control_xfer_cb
.L86:
	cmp	r0, #0
	beq	.LCB792
	b	.L146	@long jump
.LCB792:
	b	.L83
.L87:
	ldrb	r3, [r4, #8]
	cmp	r3, #15
	bhi	.L83
	ldr	r7, .L303+16
	adds	r3, r5, r3
	ldrb	r3, [r3, #3]
	cmp	r7, #0
	beq	.L129
	ldr	r2, .L303+20
	ldrb	r2, [r2]
	cmp	r3, r2
	bcs	.LCB809
	b	.L288	@long jump
.LCB809:
	subs	r3, r3, r2
	uxtb	r3, r3
.L129:
	cmp	r3, #0
	bne	.L83
	ldr	r0, .L303+52
	ldr	r5, .L303+56
.L131:
	bl	usbd_control_set_complete_callback
	movs	r1, #1
	mov	r0, r10
	ldr	r3, [r5, #12]
	add	r2, sp, #56
	blx	r3
	cmp	r0, #0
	beq	.LCB829
	b	.L146	@long jump
.LCB829:
	movs	r2, #96
	movs	r5, r2
	ldrb	r3, [r4, #4]
	ands	r5, r3
	tst	r2, r3
	bne	.L83
	ldrb	r3, [r4, #5]
	subs	r3, r3, #10
	cmp	r3, #1
	bhi	.L83
	bl	usbd_control_set_complete_callback
	ldrb	r3, [r4, #5]
	cmp	r3, #10
	bne	.LCB844
	b	.L289	@long jump
.LCB844:
.L275:
	mov	r0, r10
	add	r1, sp, #56
	bl	tud_control_status
	b	.L146
.L304:
	.align	2
.L303:
	.word	.L66
	.word	_usbd_q
	.word	_usbd_dev
	.word	cdcd_reset
	.word	usbd_app_driver_get_cb
	.word	_app_driver_count
	.word	cdcd_xfer_cb
	.word	.L94
	.word	tud_resume_cb
	.word	tud_suspend_cb
	.word	tud_umount_cb
	.word	_app_driver
	.word	tud_vendor_control_xfer_cb
	.word	cdcd_control_xfer_cb
	.word	_usbd_driver
.L88:
	movs	r3, #112
	ldrb	r1, [r4, #8]
	tst	r3, r1
	bne	.L83
	lsrs	r0, r1, #7
	mov	ip, r0
	adds	r3, r3, #15
	ands	r3, r1
	lsls	r3, r3, #1
	adds	r0, r5, r3
	add	r0, r0, ip
	ldrb	r0, [r0, #19]
	ldr	r7, .L305
	mov	r8, r0
	cmp	r7, #0
	beq	.L133
	ldr	r0, .L305+4
	ldrb	r0, [r0]
	cmp	r8, r0
	bcc	.L290
	mov	r7, r8
	subs	r0, r7, r0
	uxtb	r0, r0
	mov	r8, r0
.L133:
	mov	r0, r8
	cmp	r0, #0
	bne	.L137
	cmp	r2, #0
	beq	.LCB908
	b	.L153	@long jump
.LCB908:
	ldr	r2, .L305+8
	mov	r8, r2
.L136:
	ldrb	r7, [r4, #5]
	movs	r0, #2
	movs	r2, r7
	bics	r2, r0
	cmp	r2, #1
	bne	.LCB920
	b	.L139	@long jump
.LCB920:
	cmp	r7, #0
	beq	.LCB922
	b	.L83	@long jump
.LCB922:
	adds	r3, r5, r3
	add	r3, r3, ip
	adds	r3, r3, #48
	ldrb	r3, [r3, #3]
	add	r2, sp, #48
	lsls	r3, r3, #30
	lsrs	r3, r3, #31
	adds	r2, r2, #2
.L274:
	strh	r3, [r2]
	mov	r0, r10
	movs	r3, #2
	add	r1, sp, #56
	bl	tud_control_xfer
	b	.L146
.L283:
	ldrb	r3, [r4, #8]
	cmp	r3, #15
	bls	.LCB946
	b	.L83	@long jump
.LCB946:
	ldr	r7, .L305
	adds	r3, r5, r3
	ldrb	r3, [r3, #3]
	cmp	r7, #0
	beq	.L90
	ldr	r2, .L305+4
	ldrb	r2, [r2]
	cmp	r3, r2
	bcs	.LCB955
	b	.L291	@long jump
.LCB955:
	subs	r3, r3, r2
	uxtb	r3, r3
.L90:
	cmp	r3, #0
	beq	.LCB961
	b	.L83	@long jump
.LCB961:
	ldr	r0, .L305+12
	ldr	r5, .L305+8
.L92:
	bl	usbd_control_set_complete_callback
	movs	r1, #1
	mov	r0, r10
	ldr	r3, [r5, #12]
	add	r2, sp, #56
	blx	r3
	b	.L86
.L137:
	mov	r8, r2
	cmp	r2, #0
	beq	.L136
	b	.L83
.L288:
	ldr	r2, .L305+16
	lsls	r1, r3, #1
	ldr	r5, [r2]
	adds	r3, r1, r3
	lsls	r3, r3, #3
	adds	r5, r5, r3
	cmp	r5, #0
	bne	.LCB990
	b	.L83	@long jump
.LCB990:
	ldr	r0, [r5, #12]
	b	.L131
.L290:
	mov	r7, r8
	ldr	r0, .L305+16
	lsls	r7, r7, #1
	ldr	r0, [r0]
	add	r7, r7, r8
	mov	r8, r0
	lsls	r7, r7, #3
	add	r8, r8, r7
	cmp	r2, #0
	beq	.L136
	mov	r3, r8
	cmp	r3, #0
	bne	.LCB1008
	b	.L83	@long jump
.LCB1008:
	ldr	r0, [r3, #12]
.L138:
	bl	usbd_control_set_complete_callback
	mov	r3, r8
	movs	r1, #1
	mov	r0, r10
	ldr	r3, [r3, #12]
	add	r2, sp, #56
	blx	r3
	b	.L86
.L93:
	ldrb	r3, [r4, #6]
	str	r3, [sp, #12]
	movs	r2, r3
	ldrb	r3, [r5, #1]
	cmp	r2, r3
	beq	.L102
	ldrb	r3, [r5, #1]
	cmp	r3, #0
	beq	.LCB1034
	b	.L292	@long jump
.LCB1034:
.L103:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.LCB1038
	b	.L293	@long jump
.LCB1038:
.L102:
	ldr	r3, [sp, #12]
	mov	r0, r10
	add	r1, sp, #56
	strb	r3, [r5, #1]
	bl	tud_control_status
	b	.L146
.L95:
	ldrb	r3, [r5, #1]
	add	r2, sp, #48
	adds	r2, r2, #2
	strb	r3, [r2]
	mov	r0, r10
	movs	r3, #1
	add	r1, sp, #56
	bl	tud_control_xfer
	b	.L146
.L96:
	ldrh	r3, [r4, #6]
	lsrs	r2, r3, #8
	uxtb	r0, r3
	cmp	r2, #15
	bls	.LCB1067
	b	.L83	@long jump
.LCB1067:
	ldr	r1, .L305+20
	lsls	r3, r2, #2
	ldr	r3, [r1, r3]
	mov	pc, r3
	.section	.rodata.tud_task_ext
	.align	2
.L120:
	.word	.L83
	.word	.L124
	.word	.L121
	.word	.L123
	.word	.L83
	.word	.L83
	.word	.L122
	.word	.L121
	.word	.L83
	.word	.L83
	.word	.L83
	.word	.L83
	.word	.L83
	.word	.L83
	.word	.L83
	.word	.L119
	.section	.text.tud_task_ext
.L97:
	add	r0, sp, #56
	bl	usbd_control_set_request
	mov	r0, r10
	ldrb	r1, [r4, #6]
	bl	dcd_set_address
	movs	r2, #2
	ldrb	r3, [r5]
	orrs	r3, r2
	strb	r3, [r5]
	b	.L146
.L99:
	ldrh	r3, [r4, #6]
	cmp	r3, #1
	beq	.LCB1095
	b	.L83	@long jump
.LCB1095:
	movs	r2, #8
	ldrb	r3, [r5]
	mov	r0, r10
	bics	r3, r2
	add	r1, sp, #56
	strb	r3, [r5]
	bl	tud_control_status
	b	.L146
.L100:
	movs	r0, #2
	ldrb	r1, [r5]
	add	r3, sp, #48
	adds	r2, r3, #2
	lsls	r3, r1, #26
	lsrs	r1, r1, #2
	lsrs	r3, r3, #31
	ands	r1, r0
	orrs	r3, r1
	b	.L274
.L98:
	ldrh	r3, [r4, #6]
	cmp	r3, #1
	beq	.LCB1124
	b	.L83	@long jump
.LCB1124:
	movs	r2, #8
	ldrb	r3, [r5]
	mov	r0, r10
	orrs	r3, r2
	add	r1, sp, #56
	strb	r3, [r5]
	bl	tud_control_status
	b	.L146
.L119:
	ldr	r3, .L305+24
	cmp	r3, #0
	bne	.LCB1138
	b	.L83	@long jump
.LCB1138:
	bl	tud_descriptor_bos_cb
	subs	r2, r0, #0
	bne	.LCB1142
	b	.L83	@long jump
.LCB1142:
.L277:
	ldrb	r3, [r2, #3]
	ldrb	r1, [r2, #2]
	lsls	r3, r3, #8
	orrs	r3, r1
	mov	r0, r10
	add	r1, sp, #56
	bl	tud_control_xfer
	b	.L86
.L122:
	ldr	r3, .L305+28
	cmp	r3, #0
	bne	.LCB1159
	b	.L83	@long jump
.LCB1159:
	bl	tud_descriptor_device_qualifier_cb
	subs	r2, r0, #0
	bne	.LCB1163
	b	.L83	@long jump
.LCB1163:
.L278:
	mov	r0, r10
	ldrb	r3, [r2]
	add	r1, sp, #56
	bl	tud_control_xfer
	b	.L86
.L123:
	ldrh	r1, [r4, #8]
	bl	tud_descriptor_string_cb
	subs	r2, r0, #0
	bne	.L278
	b	.L83
.L121:
	cmp	r2, #2
	bne	.LCB1184
	b	.L294	@long jump
.LCB1184:
	ldr	r3, .L305+32
	cmp	r3, #0
	bne	.LCB1187
	b	.L83	@long jump
.LCB1187:
	bl	tud_descriptor_other_speed_configuration_cb
	movs	r2, r0
.L127:
	cmp	r2, #0
	bne	.LCB1193
	b	.L83	@long jump
.LCB1193:
	b	.L277
.L124:
	bl	tud_descriptor_device_cb
	movs	r3, #18
	movs	r2, r0
	add	r1, sp, #56
	mov	r0, r10
	bl	tud_control_xfer
	b	.L86
.L153:
	ldr	r3, .L305+8
	ldr	r0, .L305+12
	mov	r8, r3
	b	.L138
.L139:
	ldrh	r2, [r4, #6]
	cmp	r2, #0
	bne	.L140
	ldr	r2, .L305+36
	ldrb	r0, [r2]
	cmp	r7, #1
	beq	.L295
	adds	r7, r5, r3
	add	r7, r7, ip
	adds	r7, r7, #48
	ldrb	r3, [r7, #3]
	lsls	r3, r3, #30
	bpl	.L296
.L140:
	mov	r3, r8
	cmp	r3, #0
	bne	.LCB1234
	b	.L146	@long jump
.LCB1234:
	ldr	r0, [r3, #12]
	bl	usbd_control_set_complete_callback
	mov	r3, r8
	movs	r1, #1
	ldr	r3, [r3, #12]
	add	r2, sp, #56
	mov	r0, r10
	blx	r3
	movs	r0, #0
	bl	usbd_control_set_complete_callback
	movs	r3, #52
	ldrb	r3, [r5, r3]
	lsls	r3, r3, #31
	bpl	.LCB1252
	b	.L146	@long jump
.LCB1252:
	b	.L275
.L291:
	ldr	r2, .L305+16
	lsls	r1, r3, #1
	ldr	r5, [r2]
	adds	r3, r1, r3
	lsls	r3, r3, #3
	adds	r5, r5, r3
	cmp	r5, #0
	bne	.LCB1264
	b	.L83	@long jump
.LCB1264:
	ldr	r0, [r5, #12]
	b	.L92
.L295:
	movs	r2, #48
	mov	r9, r2
	adds	r3, r5, r3
	add	r3, r3, ip
	add	r9, r9, r3
	mov	r3, r9
	ldrb	r3, [r3, #3]
	lsls	r3, r3, #30
	bpl	.L140
	bl	dcd_edpt_clear_stall
	mov	r3, r9
	movs	r2, #2
	ldrb	r3, [r3, #3]
	bics	r3, r2
	mov	r2, r9
	strb	r3, [r2, #3]
	ldrb	r3, [r2, #3]
	bics	r3, r7
	strb	r3, [r2, #3]
	b	.L140
.L289:
	add	r3, sp, #48
	adds	r2, r3, #2
	mov	r0, r10
	movs	r3, #1
	add	r1, sp, #56
	strb	r5, [r2]
	bl	tud_control_xfer
	b	.L146
.L296:
	bl	dcd_edpt_stall
	movs	r2, #2
	ldrb	r3, [r7, #3]
	orrs	r3, r2
	movs	r2, #1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]
	orrs	r3, r2
	strb	r3, [r7, #3]
	b	.L140
.L306:
	.align	2
.L305:
	.word	usbd_app_driver_get_cb
	.word	_app_driver_count
	.word	_usbd_driver
	.word	cdcd_control_xfer_cb
	.word	_app_driver
	.word	.L120
	.word	tud_descriptor_bos_cb
	.word	tud_descriptor_device_qualifier_cb
	.word	tud_descriptor_other_speed_configuration_cb
	.word	_usbd_rhport
.L293:
	subs	r0, r3, #1
	uxtb	r0, r0
	bl	tud_descriptor_configuration_cb
	cmp	r0, #0
	bne	.LCB1339
	b	.L83	@long jump
.LCB1339:
	ldrb	r3, [r0, #1]
	str	r3, [sp, #28]
	cmp	r3, #2
	beq	.LCB1343
	b	.L83	@long jump
.LCB1343:
	movs	r1, #1
	ldrb	r2, [r0, #7]
	mov	r9, r6
	asrs	r3, r2, #6
	asrs	r2, r2, #5
	ands	r3, r1
	ands	r2, r1
	lsls	r2, r2, #4
	lsls	r3, r3, #5
	orrs	r3, r2
	ldrb	r2, [r5]
	adds	r1, r1, #47
	bics	r2, r1
	orrs	r3, r2
	strb	r3, [r5]
	movs	r3, #9
	mov	r8, r3
	add	r8, r8, r0
	mov	r7, r8
	mov	r8, r5
	ldrb	r3, [r0, #3]
	ldrb	r2, [r0, #2]
	lsls	r3, r3, #8
	orrs	r3, r2
	adds	r3, r0, r3
	str	r3, [sp, #16]
	ldr	r3, .L307
	str	r3, [sp, #36]
.L109:
	ldr	r3, [sp, #16]
	cmp	r3, r7
	bhi	.LCB1378
	b	.L297	@long jump
.LCB1378:
	ldrb	r3, [r7, #1]
	movs	r2, #1
	cmp	r3, #11
	bne	.L110
	ldrb	r3, [r7]
	ldrb	r2, [r7, #3]
	adds	r7, r7, r3
.L110:
	ldrb	r3, [r7, #1]
	cmp	r3, #4
	bne	.L273
	movs	r5, #0
	ldr	r3, [sp, #16]
	str	r2, [sp, #44]
	subs	r3, r3, r7
	uxth	r3, r3
	str	r3, [sp, #20]
	ldr	r3, .L307+4
	ldrb	r1, [r3]
	str	r3, [sp, #24]
	ldr	r3, .L307+8
	str	r3, [sp, #40]
	ldr	r3, .L307+12
	str	r3, [sp, #32]
.L117:
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L111
	ldr	r3, [sp, #36]
	ldr	r6, [sp, #32]
	cmp	r5, r1
	bcc	.L298
.L112:
	movs	r1, r7
	mov	r0, r10
	ldr	r2, [sp, #20]
	blx	r3
	mov	ip, r0
	cmp	r0, #8
	bls	.L113
	ldr	r2, [sp, #20]
	cmp	r2, r0
	bcs	.L299
.L113:
	ldr	r3, [sp, #24]
	adds	r5, r5, #1
	ldrb	r1, [r3]
	uxtb	r5, r5
	cmp	r1, r5
	bcs	.L117
.L273:
	mov	r6, r9
	b	.L83
.L292:
	mov	r0, r10
	bl	dcd_edpt_close_all
	movs	r2, #0
	mov	r9, r2
	ldr	r2, .L307+16
	ldrb	r3, [r5, #2]
	str	r2, [sp, #20]
	movs	r2, r5
	mov	r5, r9
	mov	r9, r2
	str	r3, [sp, #16]
	ldr	r3, .L307+4
	ldr	r7, .L307+8
	mov	r8, r3
	ldrb	r3, [r3]
.L107:
	cmp	r7, #0
	beq	.L104
	ldr	r2, [sp, #20]
	cmp	r5, r3
	bcc	.L300
.L105:
	mov	r0, r10
	blx	r2
	mov	r3, r8
	adds	r5, r5, #1
	ldrb	r3, [r3]
	uxtb	r5, r5
	cmp	r3, r5
	bcs	.L107
	mov	r5, r9
	movs	r2, #83
	movs	r1, #0
	movs	r0, r5
	bl	memset
	movs	r2, #16
	movs	r1, #255
	ldr	r0, .L307+20
	bl	memset
	movs	r2, #32
	movs	r1, #255
	ldr	r0, .L307+24
	bl	memset
	b	.L106
.L104:
	cmp	r5, #0
	beq	.L301
.L269:
	mov	r5, r9
.L106:
	ldr	r3, [sp, #16]
	strb	r3, [r5, #2]
	b	.L103
.L298:
	movs	r3, #24
	ldr	r2, .L307+28
	muls	r3, r5
	ldr	r6, [r2]
	adds	r6, r6, r3
	cmp	r6, #0
	beq	.L273
	ldr	r3, [r6, #8]
	b	.L112
.L111:
	cmp	r5, #0
	bne	.L273
	ldr	r3, .L307
	ldr	r6, .L307+12
	b	.L112
.L300:
	ldr	r2, .L307+28
	lsls	r3, r5, #1
	ldr	r2, [r2]
	adds	r3, r3, r5
	lsls	r3, r3, #3
	adds	r3, r2, r3
	cmp	r3, #0
	beq	.L269
	ldr	r2, [r3, #4]
	b	.L105
.L301:
	ldr	r2, .L307+16
	b	.L105
.L294:
	bl	tud_descriptor_configuration_cb
	movs	r2, r0
	b	.L127
.L297:
	ldr	r3, .L307+32
	mov	r5, r8
	mov	r6, r9
	cmp	r3, #0
	bne	.LCB1547
	b	.L102	@long jump
.LCB1547:
	bl	tud_mount_cb
	b	.L102
.L299:
	ldr	r2, [sp, #44]
	cmp	r2, #1
	beq	.L302
.L114:
	movs	r1, #0
	mov	r6, r8
	b	.L115
.L116:
	ldrb	r3, [r7, #2]
	adds	r3, r1, r3
	uxtb	r3, r3
	adds	r3, r6, r3
	ldrb	r0, [r3, #3]
	cmp	r0, #255
	bne	.L273
	adds	r1, r1, #1
	strb	r5, [r3, #3]
	uxtb	r1, r1
.L115:
	cmp	r1, r2
	bne	.L116
	mov	r8, r6
	mov	r6, ip
	movs	r3, r5
	movs	r1, r7
	movs	r2, r6
	ldr	r0, .L307+24
	bl	tu_edpt_bind_driver
	mov	ip, r6
	ldr	r3, [sp, #24]
	add	r7, r7, ip
	ldrb	r3, [r3]
	cmp	r3, r5
	bcc	.LCB1589
	b	.L109	@long jump
.LCB1589:
	mov	r6, r9
	b	.L83
.L302:
	ldr	r3, .L307
	ldr	r1, [r6, #8]
	cmp	r1, r3
	bne	.L114
	ldr	r2, [sp, #28]
	b	.L114
.L308:
	.align	2
.L307:
	.word	cdcd_open
	.word	_app_driver_count
	.word	usbd_app_driver_get_cb
	.word	_usbd_driver
	.word	cdcd_reset
	.word	_usbd_dev+3
	.word	_usbd_dev+19
	.word	_app_driver
	.word	tud_mount_cb
	.size	tud_task_ext, .-tud_task_ext
	.section	.time_critical.tinyusb,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_event_handler
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_event_handler, %function
dcd_event_handler:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	ldrb	r3, [r0, #1]
	movs	r5, r0
	sub	sp, sp, #16
	cmp	r3, #4
	bne	.LCB1628
	b	.L310	@long jump
.LCB1628:
	bhi	.L311
	cmp	r3, #2
	bne	.LCB1632
	b	.L312	@long jump
.LCB1632:
	cmp	r3, #3
	bne	.L314
	ldr	r7, .L358
	ldr	r2, .L358+4
	movs	r4, #0
	mov	r8, r2
	ldrb	r3, [r7]
	ldr	r6, .L358+8
	b	.L316
.L323:
	adds	r4, r4, #1
	uxtb	r4, r4
	cmp	r4, r3
	bhi	.L357
.L316:
	cmp	r6, #0
	beq	.L323
	cmp	r4, r3
	bcs	.L323
	mov	r1, r8
	lsls	r2, r4, #1
	ldr	r1, [r1]
	adds	r2, r2, r4
	lsls	r2, r2, #3
	adds	r2, r1, r2
	cmp	r2, #0
	beq	.L323
	ldr	r2, [r2, #20]
	cmp	r2, #0
	beq	.L323
	ldr	r1, [r5, #4]
	ldrb	r0, [r5]
	blx	r2
	adds	r4, r4, #1
	ldrb	r3, [r7]
	uxtb	r4, r4
	cmp	r4, r3
	bls	.L316
.L357:
	ldr	r3, .L358+12
	ldrb	r2, [r3]
	lsls	r2, r2, #29
	bpl	.L309
	movs	r1, #4
	ldrb	r2, [r3]
	bics	r2, r1
	strb	r2, [r3]
	mov	r3, sp
	movs	r2, #10
	movs	r1, #0
	adds	r0, r3, #6
	bl	memset
	mov	r2, sp
	ldrb	r3, [r5]
	strb	r3, [r2, #4]
	movs	r3, #5
	strb	r3, [r2, #5]
	ldr	r3, .L358+16
	ldr	r4, [r3]
	ldr	r2, [r4, #20]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L324:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L324
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r1, [r4, #24]
	add	r1, sp, #4
	b	.L355
.L311:
	cmp	r3, #5
	bne	.L314
	ldr	r3, .L358+12
	ldrb	r2, [r3]
	lsls	r2, r2, #31
	bpl	.L309
	movs	r1, #4
	ldrb	r2, [r3]
	bics	r2, r1
	strb	r2, [r3]
	ldr	r3, .L358+16
	ldr	r4, [r3]
	ldr	r2, [r4, #20]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L322:
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L356
	b	.L322
.L314:
	ldr	r3, .L358+16
	ldr	r4, [r3]
	ldr	r2, [r4, #20]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L325:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L325
.L356:
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r1, [r4, #24]
	movs	r1, r5
.L355:
	movs	r0, r4
	bl	tu_fifo_write
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #24]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r1, #0
	str	r1, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r3
@ 0 "" 2
	.thumb
	.syntax unified
.L309:
	add	sp, sp, #16
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L310:
	ldr	r3, .L358+12
	ldrb	r2, [r3]
	lsls	r2, r2, #31
	bpl	.L309
	movs	r1, #4
	ldrb	r2, [r3]
	orrs	r2, r1
	strb	r2, [r3]
	ldr	r3, .L358+16
	ldr	r4, [r3]
	ldr	r2, [r4, #20]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L320:
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L356
	b	.L320
.L312:
	movs	r0, #1
	ldr	r2, .L358+12
	ldrb	r1, [r2]
	bics	r1, r0
	strb	r1, [r2]
	ldrb	r1, [r2]
	bics	r1, r3
	movs	r3, #0
	strb	r1, [r2]
	movs	r1, #4
	strb	r3, [r2, #1]
	ldrb	r3, [r2]
	bics	r3, r1
	strb	r3, [r2]
	ldr	r3, .L358+16
	ldr	r4, [r3]
	ldr	r2, [r4, #20]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L317:
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L356
	b	.L317
.L359:
	.align	2
.L358:
	.word	_app_driver_count
	.word	_app_driver
	.word	usbd_app_driver_get_cb
	.word	_usbd_dev
	.word	_usbd_q
	.size	dcd_event_handler, .-dcd_event_handler
	.section	.text.usbd_int_set,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_int_set
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_int_set, %function
usbd_int_set:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L363
	ldrb	r3, [r3]
	cmp	r0, #0
	beq	.L361
	movs	r0, r3
	bl	dcd_int_enable
.L360:
	@ sp needed
	pop	{r4, pc}
.L361:
	movs	r0, r3
	bl	dcd_int_disable
	b	.L360
.L364:
	.align	2
.L363:
	.word	_usbd_rhport
	.size	usbd_int_set, .-usbd_int_set
	.section	.text.usbd_open_edpt_pair,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_open_edpt_pair
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_open_edpt_pair, %function
usbd_open_edpt_pair:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	lr, fp
	mov	r5, r8
	movs	r4, r1
	push	{r5, r6, r7, lr}
	movs	r6, r2
	movs	r7, r3
	cmp	r2, #0
	beq	.L366
	ldr	r3, .L385
	movs	r5, #0
	mov	r10, r3
	movs	r3, #112
	mov	r9, r3
	ldr	r3, .L385+4
	mov	fp, r3
	b	.L372
.L384:
	mov	r3, fp
	movs	r0, r4
	ldrb	r1, [r3, #2]
	bl	tu_edpt_validate
	cmp	r0, #0
	beq	.L369
	movs	r1, r4
	mov	r0, r8
	bl	dcd_edpt_open
	cmp	r0, #0
	beq	.L369
	ldrb	r3, [r4, #2]
	lsrs	r2, r3, #7
	cmp	r2, #1
	beq	.L383
	ldr	r2, [sp, #40]
	adds	r5, r5, #1
	strb	r3, [r2]
	ldrb	r3, [r4]
	adds	r4, r4, r3
	cmp	r5, r6
	bge	.L366
.L372:
	ldrb	r3, [r4, #1]
	cmp	r3, #5
	bne	.L369
	ldrb	r3, [r4, #3]
	lsls	r3, r3, #30
	lsrs	r3, r3, #30
	cmp	r3, r7
	bne	.L369
	mov	r3, r10
	mov	r2, r9
	ldrb	r3, [r3]
	mov	r8, r3
	ldrb	r3, [r4, #2]
	tst	r2, r3
	beq	.L384
.L369:
	movs	r0, #0
.L368:
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L383:
	ldr	r2, [sp, #44]
	adds	r5, r5, #1
	strb	r3, [r2]
	ldrb	r3, [r4]
	adds	r4, r4, r3
	cmp	r5, r6
	blt	.L372
.L366:
	movs	r0, #1
	b	.L368
.L386:
	.align	2
.L385:
	.word	_usbd_rhport
	.word	_usbd_dev
	.size	usbd_open_edpt_pair, .-usbd_open_edpt_pair
	.section	.text.usbd_defer_func,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_defer_func
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_defer_func, %function
usbd_defer_func:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #128
	push	{r4, lr}
	lsls	r3, r3, #4
	sub	sp, sp, #16
	str	r3, [sp, #4]
	ldr	r3, .L391
	str	r0, [sp, #8]
	ldr	r4, [r3]
	str	r1, [sp, #12]
	ldr	r2, [r4, #20]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r3, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L388:
	ldr	r1, [r2]
	cmp	r1, #0
	beq	.L388
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r4, #24]
	movs	r0, r4
	add	r1, sp, #4
	bl	tu_fifo_write
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #24]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r1, #0
	str	r1, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r3
@ 0 "" 2
	.thumb
	.syntax unified
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L392:
	.align	2
.L391:
	.word	_usbd_q
	.size	usbd_defer_func, .-usbd_defer_func
	.section	.text.usbd_edpt_open,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_edpt_open
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_edpt_open, %function
usbd_edpt_open:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #112
	push	{r4, r5, r6, lr}
	ldr	r3, .L400
	movs	r4, r1
	ldrb	r5, [r3]
	ldrb	r3, [r1, #2]
	tst	r2, r3
	beq	.L394
.L396:
	movs	r0, #0
.L395:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L394:
	ldr	r3, .L400+4
	movs	r0, r4
	ldrb	r1, [r3, #2]
	bl	tu_edpt_validate
	cmp	r0, #0
	beq	.L396
	movs	r1, r4
	movs	r0, r5
	bl	dcd_edpt_open
	b	.L395
.L401:
	.align	2
.L400:
	.word	_usbd_rhport
	.word	_usbd_dev
	.size	usbd_edpt_open, .-usbd_edpt_open
	.section	.text.usbd_edpt_claim,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_edpt_claim
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_edpt_claim, %function
usbd_edpt_claim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r1
	movs	r0, #127
	push	{r4, lr}
	ands	r0, r3
	lsrs	r3, r3, #7
	adds	r3, r3, #51
	lsls	r0, r0, #1
	ldr	r2, .L403
	adds	r0, r0, r3
	ldr	r3, .L403+4
	ldr	r1, [r2]
	adds	r0, r0, r3
	bl	tu_edpt_claim
	@ sp needed
	pop	{r4, pc}
.L404:
	.align	2
.L403:
	.word	_usbd_mutex
	.word	_usbd_dev
	.size	usbd_edpt_claim, .-usbd_edpt_claim
	.section	.text.usbd_edpt_release,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_edpt_release
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_edpt_release, %function
usbd_edpt_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r1
	movs	r0, #127
	push	{r4, lr}
	ands	r0, r3
	lsrs	r3, r3, #7
	adds	r3, r3, #51
	lsls	r0, r0, #1
	ldr	r2, .L406
	adds	r0, r0, r3
	ldr	r3, .L406+4
	ldr	r1, [r2]
	adds	r0, r0, r3
	bl	tu_edpt_release
	@ sp needed
	pop	{r4, pc}
.L407:
	.align	2
.L406:
	.word	_usbd_mutex
	.word	_usbd_dev
	.size	usbd_edpt_release, .-usbd_edpt_release
	.section	.text.usbd_edpt_xfer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_edpt_xfer
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_edpt_xfer, %function
usbd_edpt_xfer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, #127
	ldr	r0, .L413
	ands	r4, r1
	lsls	r4, r4, #1
	adds	r4, r0, r4
	lsrs	r5, r1, #7
	adds	r4, r4, r5
	adds	r4, r4, #48
	ldrb	r0, [r4, #3]
	lsls	r0, r0, #31
	bpl	.L412
.L409:
	movs	r0, #0
.L410:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L412:
	movs	r6, #1
	ldrb	r5, [r4, #3]
	ldr	r0, .L413+4
	orrs	r5, r6
	ldrb	r0, [r0]
	strb	r5, [r4, #3]
	bl	dcd_edpt_xfer
	cmp	r0, #0
	bne	.L410
	movs	r2, #1
	ldrb	r3, [r4, #3]
	bics	r3, r2
	strb	r3, [r4, #3]
	ldrb	r3, [r4, #3]
	adds	r2, r2, #3
	bics	r3, r2
	strb	r3, [r4, #3]
	b	.L409
.L414:
	.align	2
.L413:
	.word	_usbd_dev
	.word	_usbd_rhport
	.size	usbd_edpt_xfer, .-usbd_edpt_xfer
	.section	.text.usbd_edpt_xfer_fifo,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_edpt_xfer_fifo
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_edpt_xfer_fifo, %function
usbd_edpt_xfer_fifo:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, #127
	ldr	r0, .L420
	ands	r4, r1
	lsls	r4, r4, #1
	adds	r4, r0, r4
	lsrs	r5, r1, #7
	adds	r4, r4, r5
	adds	r4, r4, #48
	ldrb	r0, [r4, #3]
	lsls	r0, r0, #31
	bpl	.L419
.L416:
	movs	r0, #0
.L417:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L419:
	movs	r6, #1
	ldrb	r5, [r4, #3]
	ldr	r0, .L420+4
	orrs	r5, r6
	ldrb	r0, [r0]
	strb	r5, [r4, #3]
	bl	dcd_edpt_xfer_fifo
	cmp	r0, #0
	bne	.L417
	movs	r2, #1
	ldrb	r3, [r4, #3]
	bics	r3, r2
	strb	r3, [r4, #3]
	ldrb	r3, [r4, #3]
	adds	r2, r2, #3
	bics	r3, r2
	strb	r3, [r4, #3]
	b	.L416
.L421:
	.align	2
.L420:
	.word	_usbd_dev
	.word	_usbd_rhport
	.size	usbd_edpt_xfer_fifo, .-usbd_edpt_xfer_fifo
	.section	.text.usbd_edpt_busy,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_edpt_busy
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_edpt_busy, %function
usbd_edpt_busy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #127
	@ sp needed
	ldr	r3, .L423
	ands	r2, r1
	lsls	r2, r2, #1
	lsrs	r1, r1, #7
	adds	r3, r3, r2
	adds	r3, r3, r1
	adds	r3, r3, #48
	ldrb	r0, [r3, #3]
	lsls	r0, r0, #31
	lsrs	r0, r0, #31
	bx	lr
.L424:
	.align	2
.L423:
	.word	_usbd_dev
	.size	usbd_edpt_busy, .-usbd_edpt_busy
	.section	.text.usbd_edpt_stall,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_edpt_stall
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_edpt_stall, %function
usbd_edpt_stall:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #127
	push	{r4, lr}
	ldr	r3, .L429
	ands	r2, r1
	lsls	r2, r2, #1
	adds	r4, r3, r2
	lsrs	r0, r1, #7
	adds	r4, r4, r0
	adds	r4, r4, #48
	ldrb	r3, [r4, #3]
	lsls	r3, r3, #30
	bpl	.L428
.L425:
	@ sp needed
	pop	{r4, pc}
.L428:
	ldr	r3, .L429+4
	ldrb	r0, [r3]
	bl	dcd_edpt_stall
	movs	r2, #2
	ldrb	r3, [r4, #3]
	orrs	r3, r2
	movs	r2, #1
	strb	r3, [r4, #3]
	ldrb	r3, [r4, #3]
	orrs	r3, r2
	strb	r3, [r4, #3]
	b	.L425
.L430:
	.align	2
.L429:
	.word	_usbd_dev
	.word	_usbd_rhport
	.size	usbd_edpt_stall, .-usbd_edpt_stall
	.section	.text.usbd_edpt_clear_stall,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_edpt_clear_stall
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_edpt_clear_stall, %function
usbd_edpt_clear_stall:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #127
	push	{r4, lr}
	ldr	r3, .L438
	ands	r2, r1
	lsls	r2, r2, #1
	adds	r4, r3, r2
	lsrs	r0, r1, #7
	adds	r4, r4, r0
	adds	r4, r4, #48
	ldrb	r3, [r4, #3]
	lsls	r3, r3, #30
	bmi	.L437
.L431:
	@ sp needed
	pop	{r4, pc}
.L437:
	ldr	r3, .L438+4
	ldrb	r0, [r3]
	bl	dcd_edpt_clear_stall
	movs	r2, #2
	ldrb	r3, [r4, #3]
	bics	r3, r2
	strb	r3, [r4, #3]
	ldrb	r3, [r4, #3]
	subs	r2, r2, #1
	bics	r3, r2
	strb	r3, [r4, #3]
	b	.L431
.L439:
	.align	2
.L438:
	.word	_usbd_dev
	.word	_usbd_rhport
	.size	usbd_edpt_clear_stall, .-usbd_edpt_clear_stall
	.section	.text.usbd_edpt_stalled,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_edpt_stalled
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_edpt_stalled, %function
usbd_edpt_stalled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #127
	@ sp needed
	ldr	r3, .L441
	ands	r2, r1
	lsls	r2, r2, #1
	lsrs	r1, r1, #7
	adds	r3, r3, r2
	adds	r3, r3, r1
	adds	r3, r3, #48
	ldrb	r0, [r3, #3]
	lsls	r0, r0, #30
	lsrs	r0, r0, #31
	bx	lr
.L442:
	.align	2
.L441:
	.word	_usbd_dev
	.size	usbd_edpt_stalled, .-usbd_edpt_stalled
	.section	.text.usbd_edpt_close,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_edpt_close
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_edpt_close, %function
usbd_edpt_close:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L448
	push	{r4, lr}
	movs	r4, r1
	cmp	r3, #0
	beq	.L443
	ldr	r3, .L448+4
	ldrb	r0, [r3]
	bl	dcd_edpt_close
	movs	r3, #127
	movs	r1, #2
	ldr	r2, .L448+8
	ands	r3, r4
	lsls	r3, r3, #1
	adds	r3, r2, r3
	lsrs	r4, r4, #7
	adds	r3, r3, r4
	adds	r3, r3, #48
	ldrb	r2, [r3, #3]
	bics	r2, r1
	strb	r2, [r3, #3]
	ldrb	r2, [r3, #3]
	subs	r1, r1, #1
	bics	r2, r1
	strb	r2, [r3, #3]
	ldrb	r2, [r3, #3]
	adds	r1, r1, #3
	bics	r2, r1
	strb	r2, [r3, #3]
.L443:
	@ sp needed
	pop	{r4, pc}
.L449:
	.align	2
.L448:
	.word	dcd_edpt_close
	.word	_usbd_rhport
	.word	_usbd_dev
	.size	usbd_edpt_close, .-usbd_edpt_close
	.section	.text.usbd_sof_enable,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usbd_sof_enable
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_sof_enable, %function
usbd_sof_enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L451
	@ sp needed
	ldrb	r0, [r3]
	bl	dcd_sof_enable
	pop	{r4, pc}
.L452:
	.align	2
.L451:
	.word	_usbd_rhport
	.size	usbd_sof_enable, .-usbd_sof_enable
	.section	.bss._usbd_mutex,"aw",%nobits
	.align	2
	.type	_usbd_mutex, %object
	.size	_usbd_mutex, 4
_usbd_mutex:
	.space	4
	.section	.bss._ubsd_mutexdef,"aw",%nobits
	.align	2
	.type	_ubsd_mutexdef, %object
	.size	_ubsd_mutexdef, 8
_ubsd_mutexdef:
	.space	8
	.section	.bss._usbd_q,"aw",%nobits
	.align	2
	.type	_usbd_q, %object
	.size	_usbd_q, 4
_usbd_q:
	.space	4
	.global	_usbd_qdef
	.section	.data._usbd_qdef,"aw"
	.align	2
	.type	_usbd_qdef, %object
	.size	_usbd_qdef, 28
_usbd_qdef:
	.word	_usbd_qdef_buf
	.short	16
	.byte	12
	.byte	0
	.space	12
	.space	8
	.global	_usbd_qdef_buf
	.section	.bss._usbd_qdef_buf,"aw",%nobits
	.align	2
	.type	_usbd_qdef_buf, %object
	.size	_usbd_qdef_buf, 192
_usbd_qdef_buf:
	.space	192
	.section	.data._usbd_rhport,"aw"
	.type	_usbd_rhport, %object
	.size	_usbd_rhport, 1
_usbd_rhport:
	.byte	-1
	.section	.bss._app_driver_count,"aw",%nobits
	.type	_app_driver_count, %object
	.size	_app_driver_count, 1
_app_driver_count:
	.space	1
	.section	.bss._app_driver,"aw",%nobits
	.align	2
	.type	_app_driver, %object
	.size	_app_driver, 4
_app_driver:
	.space	4
	.section	.rodata._usbd_driver,"a"
	.align	2
	.type	_usbd_driver, %object
	.size	_usbd_driver, 24
_usbd_driver:
	.word	cdcd_init
	.word	cdcd_reset
	.word	cdcd_open
	.word	cdcd_control_xfer_cb
	.word	cdcd_xfer_cb
	.word	0
	.section	.bss._usbd_dev,"aw",%nobits
	.align	2
	.type	_usbd_dev, %object
	.size	_usbd_dev, 83
_usbd_dev:
	.space	83
	.weak	dcd_edpt_close
	.weak	dcd_edpt_xfer_fifo
	.weak	tud_mount_cb
	.weak	tud_descriptor_other_speed_configuration_cb
	.weak	tud_descriptor_device_qualifier_cb
	.weak	tud_descriptor_bos_cb
	.weak	tud_vendor_control_xfer_cb
	.weak	tud_umount_cb
	.weak	tud_suspend_cb
	.weak	tud_resume_cb
	.weak	usbd_app_driver_get_cb
	.weak	dcd_connect
	.weak	dcd_disconnect
	.ident	"GCC: (Arch Repository) 13.1.0"
