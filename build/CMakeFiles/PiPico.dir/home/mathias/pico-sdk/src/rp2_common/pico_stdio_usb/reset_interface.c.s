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
	.file	"reset_interface.c"
	.text
	.section	.text.resetd_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	resetd_init, %function
resetd_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	resetd_init, .-resetd_init
	.section	.text.resetd_reset,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	resetd_reset, %function
resetd_reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #0
	@ sp needed
	ldr	r3, .L4
	strb	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	itf_num
	.size	resetd_reset, .-resetd_reset
	.section	.text.resetd_open,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	resetd_open, %function
resetd_open:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #5]
	movs	r0, #0
	cmp	r3, #255
	bne	.L7
	ldrb	r3, [r1, #6]
	cmp	r3, #0
	bne	.L7
	ldrb	r3, [r1, #7]
	cmp	r3, #1
	bne	.L7
	cmp	r2, #8
	bls	.L7
	ldr	r3, .L12
	ldrb	r2, [r1, #2]
	adds	r0, r0, #9
	strb	r2, [r3]
.L7:
	@ sp needed
	bx	lr
.L13:
	.align	2
.L12:
	.word	itf_num
	.size	resetd_open, .-resetd_open
	.section	.text.resetd_xfer_cb,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	resetd_xfer_cb, %function
resetd_xfer_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1
	@ sp needed
	bx	lr
	.size	resetd_xfer_cb, .-resetd_xfer_cb
	.section	.text.resetd_control_xfer_cb,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	resetd_control_xfer_cb, %function
resetd_control_xfer_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	cmp	r1, #1
	beq	.L25
	movs	r0, #1
.L17:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L25:
	ldr	r1, .L27
	ldrb	r3, [r2, #5]
	ldrb	r0, [r2, #4]
	ldrb	r1, [r1]
	lsls	r3, r3, #8
	orrs	r3, r0
	movs	r0, #0
	cmp	r1, r3
	bne	.L17
	ldrb	r3, [r2, #1]
	cmp	r3, #1
	beq	.L26
	cmp	r3, #2
	bne	.L17
	movs	r0, #0
	movs	r2, #100
	movs	r1, #0
	bl	watchdog_reboot
	movs	r0, #1
	b	.L17
.L26:
	ldrb	r4, [r2, #2]
	ldrb	r2, [r2, #3]
	movs	r5, r0
	lsls	r2, r2, #8
	orrs	r4, r2
	lsls	r2, r2, #23
	bpl	.L19
	lsrs	r2, r4, #9
	lsls	r3, r3, r2
	movs	r5, r3
.L19:
	ldr	r0, .L27+4
	bl	rom_func_lookup
	movs	r1, #127
	movs	r3, r0
	ands	r1, r4
	movs	r0, r5
	blx	r3
.L28:
	.align	2
.L27:
	.word	itf_num
	.word	16981
	.size	resetd_control_xfer_cb, .-resetd_control_xfer_cb
	.section	.text.usbd_app_driver_get_cb,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	usbd_app_driver_get_cb
	.syntax unified
	.code	16
	.thumb_func
	.type	usbd_app_driver_get_cb, %function
usbd_app_driver_get_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	@ sp needed
	strb	r3, [r0]
	ldr	r0, .L30
	bx	lr
.L31:
	.align	2
.L30:
	.word	_resetd_driver
	.size	usbd_app_driver_get_cb, .-usbd_app_driver_get_cb
	.section	.text.tud_cdc_line_coding_cb,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	tud_cdc_line_coding_cb
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_line_coding_cb, %function
tud_cdc_line_coding_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r1, #1]
	ldrb	r2, [r1]
	lsls	r3, r3, #8
	orrs	r3, r2
	ldrb	r2, [r1, #2]
	push	{r4, lr}
	lsls	r2, r2, #16
	orrs	r2, r3
	ldrb	r3, [r1, #3]
	lsls	r3, r3, #24
	orrs	r3, r2
	movs	r2, #150
	lsls	r2, r2, #3
	cmp	r3, r2
	beq	.L34
	@ sp needed
	pop	{r4, pc}
.L34:
	ldr	r0, .L35
	bl	rom_func_lookup
	movs	r1, #0
	movs	r3, r0
	movs	r0, r1
	blx	r3
.L36:
	.align	2
.L35:
	.word	16981
	.size	tud_cdc_line_coding_cb, .-tud_cdc_line_coding_cb
	.section	.rodata._resetd_driver,"a"
	.align	2
	.type	_resetd_driver, %object
	.size	_resetd_driver, 24
_resetd_driver:
	.word	resetd_init
	.word	resetd_reset
	.word	resetd_open
	.word	resetd_control_xfer_cb
	.word	resetd_xfer_cb
	.word	0
	.section	.bss.itf_num,"aw",%nobits
	.type	itf_num, %object
	.size	itf_num, 1
itf_num:
	.space	1
	.ident	"GCC: (Arch Repository) 13.1.0"
