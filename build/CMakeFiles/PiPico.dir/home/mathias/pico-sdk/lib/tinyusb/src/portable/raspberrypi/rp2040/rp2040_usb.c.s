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
	.file	"rp2040_usb.c"
	.text
	.section	.time_critical.e15_is_bulkin_ep,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	e15_is_bulkin_ep, %function
e15_is_bulkin_ep:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L8
	movs	r3, r0
	ldr	r2, [r2, #64]
	movs	r0, #0
	lsls	r2, r2, #30
	bmi	.L2
	ldrb	r2, [r3, #2]
	lsrs	r2, r2, #7
	cmp	r2, #1
	beq	.L7
.L2:
	@ sp needed
	bx	lr
.L7:
	ldrb	r0, [r3, #27]
	subs	r0, r0, #2
	rsbs	r3, r0, #0
	adcs	r0, r0, r3
	uxtb	r0, r0
	b	.L2
.L9:
	.align	2
.L8:
	.word	1343291392
	.size	e15_is_bulkin_ep, .-e15_is_bulkin_ep
	.section	.time_critical.e15_is_critical_frame_period,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	e15_is_critical_frame_period, %function
e15_is_critical_frame_period:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	e15_is_bulkin_ep
	cmp	r0, #0
	beq	.L11
	ldr	r1, .L15
	ldr	r3, .L15+4
	mov	ip, r1
	ldr	r2, .L15+8
	ldr	r3, [r3, #40]
	ldr	r2, [r2]
	add	r3, r3, ip
	subs	r3, r3, r2
	movs	r0, #0
	movs	r2, #198
	cmp	r2, r3
	adcs	r0, r0, r0
	uxtb	r0, r0
.L11:
	@ sp needed
	pop	{r4, pc}
.L16:
	.align	2
.L15:
	.word	-800
	.word	1074085888
	.word	e15_last_sof
	.size	e15_is_critical_frame_period, .-e15_is_critical_frame_period
	.section	.time_critical.prepare_ep_buffer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	prepare_ep_buffer, %function
prepare_ep_buffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldrh	r2, [r0, #24]
	ldrh	r3, [r0, #20]
	movs	r4, r0
	movs	r7, r1
	adds	r6, r2, #0
	cmp	r2, r3
	bls	.L18
	adds	r6, r3, #0
.L18:
	ldrb	r2, [r4, #3]
	movs	r1, #128
	movs	r5, r2
	subs	r0, r5, #1
	sbcs	r5, r5, r0
	uxth	r6, r6
	lsls	r1, r1, #3
	orrs	r1, r6
	lsls	r5, r5, #13
	orrs	r5, r1
	movs	r1, #1
	eors	r2, r1
	subs	r3, r3, r6
	strb	r2, [r4, #3]
	ldrb	r2, [r4, #1]
	uxth	r3, r3
	strh	r3, [r4, #20]
	cmp	r2, #0
	beq	.L25
.L19:
	cmp	r3, #0
	bne	.L20
	movs	r3, #128
	lsls	r3, r3, #7
	orrs	r5, r3
.L20:
	cmp	r7, #0
	beq	.L17
	lsls	r5, r5, #16
.L17:
	movs	r0, r5
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L25:
	ldr	r0, [r4, #12]
	lsls	r3, r7, #6
	adds	r0, r0, r3
	movs	r2, r6
	ldr	r1, [r4, #16]
	bl	memcpy
	ldr	r3, [r4, #16]
	adds	r3, r3, r6
	str	r3, [r4, #16]
	movs	r3, #128
	lsls	r3, r3, #8
	orrs	r5, r3
	ldrh	r3, [r4, #20]
	b	.L19
	.size	prepare_ep_buffer, .-prepare_ep_buffer
	.section	.time_critical.sync_ep_buffer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	sync_ep_buffer, %function
sync_ep_buffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #8]
	push	{r4, r5, r6, lr}
	movs	r4, r0
	ldr	r5, [r3]
	cmp	r1, #0
	beq	.L27
	lsrs	r5, r5, #16
.L27:
	ldrb	r3, [r4, #1]
	lsls	r5, r5, #22
	lsrs	r5, r5, #22
	cmp	r3, #0
	bne	.L28
	ldrh	r3, [r4, #22]
	adds	r3, r5, r3
	strh	r3, [r4, #22]
.L29:
	ldrh	r3, [r4, #24]
	cmp	r3, r5
	bls	.L30
	movs	r3, #0
	strh	r3, [r4, #20]
.L30:
	movs	r0, r5
	@ sp needed
	pop	{r4, r5, r6, pc}
.L28:
	ldr	r3, [r4, #12]
	lsls	r1, r1, #6
	adds	r1, r3, r1
	movs	r2, r5
	ldr	r0, [r4, #16]
	bl	memcpy
	ldrh	r3, [r4, #22]
	adds	r3, r5, r3
	strh	r3, [r4, #22]
	ldr	r3, [r4, #16]
	adds	r3, r3, r5
	str	r3, [r4, #16]
	b	.L29
	.size	sync_ep_buffer, .-sync_ep_buffer
	.section	.time_critical._hw_endpoint_xfer_sync,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	_hw_endpoint_xfer_sync, %function
_hw_endpoint_xfer_sync:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	ldr	r3, [r0, #8]
	movs	r1, #0
	ldr	r3, [r3]
	bl	sync_ep_buffer
	ldr	r3, [r4, #4]
	ldr	r3, [r3]
	lsls	r3, r3, #1
	bpl	.L34
	ldrh	r3, [r4, #24]
	cmp	r3, r0
	beq	.L40
.L34:
	@ sp needed
	pop	{r4, pc}
.L40:
	movs	r1, #1
	movs	r0, r4
	bl	sync_ep_buffer
	b	.L34
	.size	_hw_endpoint_xfer_sync, .-_hw_endpoint_xfer_sync
	.section	.text.rp2040_usb_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	rp2040_usb_init
	.syntax unified
	.code	16
	.thumb_func
	.type	rp2040_usb_init, %function
rp2040_usb_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #128
	ldr	r3, .L44
	lsls	r2, r2, #17
	push	{r4, lr}
	str	r2, [r3]
	ldr	r3, .L44+4
	ldr	r1, .L44+8
	str	r2, [r3]
.L42:
	movs	r0, r2
	ldr	r3, [r1, #8]
	bics	r0, r3
	bne	.L42
	@ sp needed
	ldr	r4, .L44+12
	movs	r2, #156
	movs	r1, #0
	movs	r0, r4
	bl	memset
	movs	r2, #128
	movs	r1, #0
	lsls	r2, r2, #5
	ldr	r0, .L44+16
	bl	memset
	movs	r3, #9
	str	r3, [r4, #116]
	pop	{r4, pc}
.L45:
	.align	2
.L44:
	.word	1073799168
	.word	1073803264
	.word	1073790976
	.word	1343291392
	.word	1343225856
	.size	rp2040_usb_init, .-rp2040_usb_init
	.section	.time_critical.hw_endpoint_reset_transfer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hw_endpoint_reset_transfer
	.syntax unified
	.code	16
	.thumb_func
	.type	hw_endpoint_reset_transfer, %function
hw_endpoint_reset_transfer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	@ sp needed
	strb	r3, [r0, #26]
	str	r3, [r0, #20]
	str	r3, [r0, #16]
	bx	lr
	.size	hw_endpoint_reset_transfer, .-hw_endpoint_reset_transfer
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"ep %d %s was already available\000"
	.section	.time_critical._hw_endpoint_buffer_control_update32,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_hw_endpoint_buffer_control_update32
	.syntax unified
	.code	16
	.thumb_func
	.type	_hw_endpoint_buffer_control_update32, %function
_hw_endpoint_buffer_control_update32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, [r0, #8]
	cmp	r1, #0
	beq	.L48
	ldr	r4, [r3]
	ands	r1, r4
.L48:
	cmp	r2, #0
	beq	.L49
	movs	r4, #128
	lsls	r4, r4, #3
	orrs	r1, r2
	tst	r2, r4
	beq	.L49
	ldr	r2, [r3]
	tst	r2, r4
	bne	.L60
	ldr	r2, .L61
	ands	r2, r1
	str	r2, [r3]
	.syntax divided
@ 117 "/home/mathias/pico-sdk/lib/tinyusb/src/portable/raspberrypi/rp2040/rp2040_usb.c" 1
	b 1f
1: b 1f
1: b 1f
1: b 1f
1: b 1f
1: b 1f
1:

@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, [r0, #8]
.L49:
	str	r1, [r3]
	@ sp needed
	pop	{r4, pc}
.L60:
	ldrb	r1, [r0, #2]
	movs	r0, #127
	lsrs	r2, r1, #7
	ldr	r3, .L61+4
	lsls	r2, r2, #2
	ands	r1, r0
	ldr	r2, [r2, r3]
	ldr	r0, .L61+8
	bl	panic
.L62:
	.align	2
.L61:
	.word	-1025
	.word	ep_dir_string
	.word	.LC2
	.size	_hw_endpoint_buffer_control_update32, .-_hw_endpoint_buffer_control_update32
	.section	.time_critical.hw_endpoint_start_next_buffer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hw_endpoint_start_next_buffer
	.syntax unified
	.code	16
	.thumb_func
	.type	hw_endpoint_start_next_buffer, %function
hw_endpoint_start_next_buffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	push	{r4, r5, r6, lr}
	movs	r1, #0
	movs	r5, #128
	ldr	r6, [r3]
	movs	r4, r0
	bl	prepare_ep_buffer
	ldr	r3, .L75
	lsls	r5, r5, #5
	ldr	r3, [r3, #64]
	orrs	r5, r0
	lsls	r3, r3, #30
	bpl	.L64
	ldrb	r3, [r4, #2]
	lsls	r3, r3, #25
	beq	.L66
.L65:
	ldr	r3, .L75+4
	ands	r6, r3
	movs	r3, #128
	lsls	r3, r3, #22
	orrs	r3, r6
.L67:
	ldr	r2, [r4, #4]
	movs	r1, #0
	@ sp needed
	str	r3, [r2]
	movs	r0, r4
	movs	r2, r5
	bl	_hw_endpoint_buffer_control_update32
	pop	{r4, r5, r6, pc}
.L64:
	ldrb	r3, [r4, #2]
	lsrs	r3, r3, #7
	beq	.L65
.L66:
	ldrh	r3, [r4, #20]
	cmp	r3, #0
	beq	.L65
	movs	r1, #1
	movs	r0, r4
	bl	prepare_ep_buffer
	movs	r3, #160
	ldr	r2, .L75+8
	lsls	r3, r3, #23
	ands	r2, r6
	orrs	r5, r0
	orrs	r3, r2
	b	.L67
.L76:
	.align	2
.L75:
	.word	1343291392
	.word	-1342177281
	.word	-536870913
	.size	hw_endpoint_start_next_buffer, .-hw_endpoint_start_next_buffer
	.section	.text.hw_endpoint_xfer_start,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hw_endpoint_xfer_start
	.syntax unified
	.code	16
	.thumb_func
	.type	hw_endpoint_xfer_start, %function
hw_endpoint_xfer_start:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, lr}
	strh	r3, [r0, #22]
	adds	r3, r3, #1
	strh	r2, [r0, #20]
	strb	r3, [r0, #26]
	str	r1, [r0, #16]
	movs	r4, r0
	bl	e15_is_bulkin_ep
	cmp	r0, #0
	beq	.L78
	movs	r1, #128
	movs	r3, #144
	ldr	r2, .L84
	lsls	r1, r1, #10
	str	r1, [r2, r3]
.L78:
	movs	r0, r4
	bl	e15_is_critical_frame_period
	cmp	r0, #0
	beq	.L79
	movs	r3, #1
	strb	r3, [r4, #28]
.L77:
	@ sp needed
	pop	{r4, pc}
.L79:
	movs	r0, r4
	bl	hw_endpoint_start_next_buffer
	b	.L77
.L85:
	.align	2
.L84:
	.word	1343299584
	.size	hw_endpoint_xfer_start, .-hw_endpoint_xfer_start
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"Can't continue xfer on inactive ep %d %s\000"
	.section	.time_critical.hw_endpoint_xfer_continue,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hw_endpoint_xfer_continue
	.syntax unified
	.code	16
	.thumb_func
	.type	hw_endpoint_xfer_continue, %function
hw_endpoint_xfer_continue:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldrb	r5, [r0, #26]
	movs	r4, r0
	cmp	r5, #0
	beq	.L94
	bl	_hw_endpoint_xfer_sync
	ldrh	r3, [r4, #20]
	cmp	r3, #0
	bne	.L95
.L88:
	@ sp needed
	movs	r0, r5
	pop	{r4, r5, r6, pc}
.L95:
	movs	r0, r4
	bl	e15_is_critical_frame_period
	cmp	r0, #0
	beq	.L89
	movs	r3, #1
	movs	r5, #0
	strb	r3, [r4, #28]
	b	.L88
.L89:
	movs	r0, r4
	bl	hw_endpoint_start_next_buffer
	movs	r5, #0
	b	.L88
.L94:
	ldrb	r1, [r0, #2]
	movs	r0, #127
	lsrs	r2, r1, #7
	ldr	r3, .L96
	lsls	r2, r2, #2
	ands	r1, r0
	ldr	r2, [r2, r3]
	ldr	r0, .L96+4
	bl	panic
.L97:
	.align	2
.L96:
	.word	ep_dir_string
	.word	.LC5
	.size	hw_endpoint_xfer_continue, .-hw_endpoint_xfer_continue
	.global	e15_last_sof
	.section	.bss.e15_last_sof,"aw",%nobits
	.align	2
	.type	e15_last_sof, %object
	.size	e15_last_sof, 4
e15_last_sof:
	.space	4
	.global	ep_dir_string
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"out\000"
	.align	2
.LC8:
	.ascii	"in\000"
	.section	.data.ep_dir_string,"aw"
	.align	2
	.type	ep_dir_string, %object
	.size	ep_dir_string, 8
ep_dir_string:
	.word	.LC7
	.word	.LC8
	.ident	"GCC: (Arch Repository) 13.1.0"
