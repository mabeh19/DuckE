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
	.file	"gpio.c"
	.text
	.section	.text.gpio_default_irq_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_default_irq_handler, %function
gpio_default_irq_handler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #208
	lsls	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, .L83
	lsls	r1, r3, #2
	push	{r4, r5, r6, r7, lr}
	mov	r6, r9
	mov	r9, r1
	ldr	r1, [r2, r1]
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	movs	r2, #47
	mov	r7, r10
	mov	r5, r8
	mov	lr, fp
	rsbs	r3, r3, #0
	bics	r3, r2
	mov	r8, r3
	ldr	r3, .L83+4
	push	{r5, r6, r7, lr}
	mov	ip, r3
	sub	sp, sp, #12
	movs	r7, #0
	str	r1, [sp, #4]
	add	r8, r8, ip
	cmp	r1, #0
	beq	.L78
	ldr	r3, .L83+8
	movs	r6, #15
	mov	fp, r3
.L3:
	mov	r2, r8
	lsrs	r3, r7, #3
	adds	r3, r3, #8
	lsls	r3, r3, #2
	ldr	r4, [r3, r2]
	movs	r3, #1
	movs	r5, r7
	mov	r10, r3
	adds	r7, r7, #8
	cmp	r4, #0
	beq	.L19
.L17:
	movs	r1, r6
	ands	r1, r4
	tst	r6, r4
	beq	.L18
	mov	r3, fp
	mov	r2, r9
	ldr	r2, [r3, r2]
	mov	r3, r10
	lsls	r3, r3, r5
	tst	r2, r3
	bne	.L18
	movs	r2, #7
	movs	r0, r1
	ands	r2, r5
	lsls	r2, r2, #2
	lsls	r0, r0, r2
	movs	r2, r0
	lsrs	r3, r5, #3
	ldr	r0, .L83+12
	adds	r3, r3, #60
	lsls	r3, r3, #2
	str	r2, [r3, r0]
	movs	r0, r5
	ldr	r3, [sp, #4]
	blx	r3
.L18:
	lsrs	r4, r4, #4
	adds	r5, r5, #1
	cmp	r4, #0
	beq	.L19
	cmp	r5, r7
	bcc	.L17
.L19:
	cmp	r7, #32
	bne	.L3
.L1:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L78:
	ldr	r3, .L83+8
	movs	r1, #0
	movs	r2, #15
	mov	fp, r3
	movs	r4, #1
.L15:
	lsrs	r5, r1, #3
	movs	r3, r5
	mov	r0, r8
	adds	r3, r3, #8
	lsls	r3, r3, #2
	ldr	r3, [r3, r0]
	movs	r0, r1
	adds	r1, r1, #8
	cmp	r3, #0
	bne	.LCB117
	b	.L4	@long jump
.LCB117:
	movs	r7, r2
	ands	r7, r3
	mov	ip, r7
	tst	r2, r3
	beq	.L5
	mov	r7, fp
	mov	r6, r9
	ldr	r6, [r7, r6]
	movs	r7, r4
	lsls	r7, r7, r0
	tst	r6, r7
	bne	.L5
	mov	r6, ip
	ldr	r7, .L83+12
	adds	r5, r5, #60
	lsls	r5, r5, #2
	str	r6, [r5, r7]
.L5:
	lsrs	r5, r3, #4
	bne	.LCB140
	b	.L4	@long jump
.LCB140:
	movs	r7, r2
	ands	r7, r5
	tst	r2, r5
	beq	.L7
	movs	r6, r4
	adds	r5, r0, #1
	lsls	r6, r6, r5
	str	r5, [sp, #4]
	mov	ip, r6
	mov	r5, fp
	mov	r6, r9
	ldr	r6, [r5, r6]
	mov	r5, ip
	tst	r6, r5
	bne	.L7
	ldr	r5, [sp, #4]
	ldr	r6, .L83+12
	lsrs	r5, r5, #3
	adds	r5, r5, #60
	lsls	r7, r7, #4
	lsls	r5, r5, #2
	str	r7, [r5, r6]
.L7:
	lsrs	r5, r3, #8
	beq	.L4
	movs	r7, r2
	ands	r7, r5
	tst	r2, r5
	beq	.L8
	movs	r6, r4
	adds	r5, r0, #2
	lsls	r6, r6, r5
	str	r5, [sp, #4]
	mov	ip, r6
	mov	r5, fp
	mov	r6, r9
	ldr	r6, [r5, r6]
	mov	r5, ip
	tst	r6, r5
	bne	.L8
	ldr	r5, [sp, #4]
	ldr	r6, .L83+12
	lsrs	r5, r5, #3
	adds	r5, r5, #60
	lsls	r7, r7, #8
	lsls	r5, r5, #2
	str	r7, [r5, r6]
.L8:
	lsrs	r5, r3, #12
	beq	.L4
	movs	r7, r2
	ands	r7, r5
	tst	r2, r5
	beq	.L9
	movs	r6, r4
	adds	r5, r0, #3
	lsls	r6, r6, r5
	str	r5, [sp, #4]
	mov	ip, r6
	mov	r5, fp
	mov	r6, r9
	ldr	r6, [r5, r6]
	mov	r5, ip
	tst	r6, r5
	beq	.L80
.L9:
	lsrs	r5, r3, #16
	beq	.L4
	movs	r7, r2
	ands	r7, r5
	mov	ip, r7
	tst	r2, r5
	beq	.L10
	movs	r6, #1
	adds	r7, r0, #4
	lsls	r6, r6, r7
	mov	r10, r6
	mov	r6, r9
	ldr	r5, .L83+8
	ldr	r5, [r5, r6]
	mov	r6, r10
	tst	r5, r6
	beq	.L81
.L10:
	lsrs	r5, r3, #20
	beq	.L4
	movs	r6, r2
	ands	r6, r5
	mov	ip, r6
	tst	r2, r5
	beq	.L11
	movs	r6, #1
	adds	r7, r0, #5
	lsls	r6, r6, r7
	mov	r10, r6
	mov	r6, r9
	ldr	r5, .L83+8
	ldr	r5, [r5, r6]
	mov	r6, r10
	tst	r5, r6
	beq	.L82
.L11:
	lsrs	r5, r3, #24
	beq	.L4
	movs	r6, r2
	ands	r6, r5
	mov	ip, r6
	tst	r2, r5
	beq	.L12
	movs	r6, #1
	adds	r7, r0, #6
	lsls	r6, r6, r7
	mov	r10, r6
	mov	r6, r9
	ldr	r5, .L83+8
	ldr	r5, [r5, r6]
	mov	r6, r10
	tst	r5, r6
	bne	.L12
	mov	r6, ip
	lsrs	r5, r7, #3
	adds	r5, r5, #60
	lsls	r7, r6, #24
	ldr	r6, .L83+12
	lsls	r5, r5, #2
	str	r7, [r5, r6]
.L12:
	lsrs	r3, r3, #28
	adds	r0, r0, #7
	cmp	r3, #0
	beq	.L4
	mov	r5, r9
	mov	r6, fp
	ldr	r7, [r6, r5]
	movs	r5, r4
	lsls	r5, r5, r0
	tst	r7, r5
	bne	.L4
	lsrs	r0, r0, #3
	ldr	r5, .L83+12
	adds	r0, r0, #60
	lsls	r3, r3, #28
	lsls	r0, r0, #2
	str	r3, [r0, r5]
.L4:
	cmp	r1, #32
	beq	.LCB306
	b	.L15	@long jump
.LCB306:
	b	.L1
.L80:
	ldr	r5, [sp, #4]
	ldr	r6, .L83+12
	lsrs	r5, r5, #3
	adds	r5, r5, #60
	lsls	r7, r7, #12
	lsls	r5, r5, #2
	str	r7, [r5, r6]
	b	.L9
.L81:
	mov	r5, ip
	lsls	r5, r5, #16
	mov	ip, r5
	mov	r6, ip
	lsrs	r7, r7, #3
	adds	r7, r7, #60
	lsls	r5, r7, #2
	ldr	r7, .L83+12
	str	r6, [r5, r7]
	b	.L10
.L82:
	mov	r6, ip
	lsrs	r5, r7, #3
	adds	r5, r5, #60
	lsls	r7, r6, #20
	ldr	r6, .L83+12
	lsls	r5, r5, #2
	str	r7, [r5, r6]
	b	.L11
.L84:
	.align	2
.L83:
	.word	callbacks
	.word	1073824048
	.word	raw_irq_mask
	.word	1073823744
	.size	gpio_default_irq_handler, .-gpio_default_irq_handler
	.section	.text.gpio_get_pad,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_get_pad
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_get_pad, %function
gpio_get_pad:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L86
	lsls	r2, r0, #2
	mov	ip, r3
	@ sp needed
	movs	r3, #128
	add	r2, r2, ip
	lsls	r3, r3, #6
	orrs	r3, r2
	movs	r2, #64
	str	r2, [r3]
	ldr	r3, .L86+4
	lsls	r0, r0, #3
	ldr	r0, [r0, r3]
	lsls	r0, r0, #14
	lsrs	r0, r0, #31
	bx	lr
.L87:
	.align	2
.L86:
	.word	1073856516
	.word	1073823744
	.size	gpio_get_pad, .-gpio_get_pad
	.section	.text.gpio_set_function,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_function
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_function, %function
gpio_set_function:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L89
	push	{r4, lr}
	mov	ip, r2
	@ sp needed
	movs	r4, #64
	lsls	r3, r0, #2
	add	r3, r3, ip
	ldr	r2, [r3]
	lsls	r0, r0, #3
	eors	r2, r4
	adds	r4, r4, #128
	ands	r4, r2
	movs	r2, #128
	lsls	r2, r2, #5
	orrs	r3, r2
	str	r4, [r3]
	ldr	r3, .L89+4
	mov	ip, r3
	add	r0, r0, ip
	str	r1, [r0, #4]
	pop	{r4, pc}
.L90:
	.align	2
.L89:
	.word	1073856516
	.word	1073823744
	.size	gpio_set_function, .-gpio_set_function
	.section	.text.gpio_get_function,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_get_function
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_get_function, %function
gpio_get_function:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L92
	lsls	r0, r0, #3
	mov	ip, r3
	@ sp needed
	add	r0, r0, ip
	ldr	r3, [r0, #4]
	movs	r0, #31
	ands	r0, r3
	bx	lr
.L93:
	.align	2
.L92:
	.word	1073823744
	.size	gpio_get_function, .-gpio_get_function
	.section	.text.gpio_set_pulls,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_pulls
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_pulls, %function
gpio_set_pulls:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L95
	lsls	r0, r0, #2
	mov	ip, r3
	@ sp needed
	add	r0, r0, ip
	ldr	r3, [r0]
	lsls	r1, r1, #3
	lsls	r2, r2, #2
	orrs	r2, r1
	eors	r2, r3
	movs	r3, #12
	ands	r2, r3
	movs	r3, #128
	lsls	r3, r3, #5
	orrs	r3, r0
	str	r2, [r3]
	bx	lr
.L96:
	.align	2
.L95:
	.word	1073856516
	.size	gpio_set_pulls, .-gpio_set_pulls
	.section	.text.gpio_set_irqover,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_irqover
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_irqover, %function
gpio_set_irqover:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L98
	lsls	r0, r0, #3
	mov	ip, r3
	@ sp needed
	add	r0, r0, ip
	ldr	r3, [r0]
	lsls	r1, r1, #28
	eors	r1, r3
	movs	r3, #192
	lsls	r3, r3, #22
	ands	r1, r3
	movs	r3, #128
	lsls	r3, r3, #5
	orrs	r3, r0
	str	r1, [r3]
	bx	lr
.L99:
	.align	2
.L98:
	.word	1073823748
	.size	gpio_set_irqover, .-gpio_set_irqover
	.section	.text.gpio_set_inover,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_inover
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_inover, %function
gpio_set_inover:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L101
	lsls	r0, r0, #3
	mov	ip, r3
	@ sp needed
	add	r0, r0, ip
	ldr	r3, [r0]
	lsls	r1, r1, #16
	eors	r1, r3
	movs	r3, #192
	lsls	r3, r3, #10
	ands	r1, r3
	movs	r3, #128
	lsls	r3, r3, #5
	orrs	r3, r0
	str	r1, [r3]
	bx	lr
.L102:
	.align	2
.L101:
	.word	1073823748
	.size	gpio_set_inover, .-gpio_set_inover
	.section	.text.gpio_set_outover,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_outover
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_outover, %function
gpio_set_outover:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L104
	lsls	r0, r0, #3
	mov	ip, r3
	@ sp needed
	add	r0, r0, ip
	ldr	r3, [r0]
	lsls	r1, r1, #8
	eors	r1, r3
	movs	r3, #192
	lsls	r3, r3, #2
	ands	r1, r3
	movs	r3, #128
	lsls	r3, r3, #5
	orrs	r3, r0
	str	r1, [r3]
	bx	lr
.L105:
	.align	2
.L104:
	.word	1073823748
	.size	gpio_set_outover, .-gpio_set_outover
	.section	.text.gpio_set_oeover,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_oeover
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_oeover, %function
gpio_set_oeover:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L107
	lsls	r0, r0, #3
	mov	ip, r3
	@ sp needed
	add	r0, r0, ip
	ldr	r3, [r0]
	lsls	r1, r1, #12
	eors	r1, r3
	movs	r3, #192
	lsls	r3, r3, #6
	ands	r1, r3
	movs	r3, #128
	lsls	r3, r3, #5
	orrs	r3, r0
	str	r1, [r3]
	bx	lr
.L108:
	.align	2
.L107:
	.word	1073823748
	.size	gpio_set_oeover, .-gpio_set_oeover
	.section	.text.gpio_set_input_hysteresis_enabled,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_input_hysteresis_enabled
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_input_hysteresis_enabled, %function
gpio_set_input_hysteresis_enabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L112
	lsls	r0, r0, #2
	mov	ip, r3
	add	r0, r0, ip
	cmp	r1, #0
	beq	.L110
	movs	r3, #128
	movs	r2, #2
	lsls	r3, r3, #6
	orrs	r3, r0
	str	r2, [r3]
.L109:
	@ sp needed
	bx	lr
.L110:
	movs	r3, #192
	movs	r2, #2
	lsls	r3, r3, #6
	orrs	r3, r0
	str	r2, [r3]
	b	.L109
.L113:
	.align	2
.L112:
	.word	1073856516
	.size	gpio_set_input_hysteresis_enabled, .-gpio_set_input_hysteresis_enabled
	.section	.text.gpio_is_input_hysteresis_enabled,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_is_input_hysteresis_enabled
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_is_input_hysteresis_enabled, %function
gpio_is_input_hysteresis_enabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L115
	lsls	r0, r0, #2
	mov	ip, r3
	@ sp needed
	add	r0, r0, ip
	ldr	r0, [r0, #4]
	lsls	r0, r0, #30
	lsrs	r0, r0, #31
	bx	lr
.L116:
	.align	2
.L115:
	.word	1073856512
	.size	gpio_is_input_hysteresis_enabled, .-gpio_is_input_hysteresis_enabled
	.section	.text.gpio_set_slew_rate,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_slew_rate
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_slew_rate, %function
gpio_set_slew_rate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L118
	lsls	r0, r0, #2
	mov	ip, r3
	@ sp needed
	add	r0, r0, ip
	ldr	r3, [r0]
	eors	r3, r1
	movs	r1, #1
	ands	r1, r3
	movs	r3, #128
	lsls	r3, r3, #5
	orrs	r3, r0
	str	r1, [r3]
	bx	lr
.L119:
	.align	2
.L118:
	.word	1073856516
	.size	gpio_set_slew_rate, .-gpio_set_slew_rate
	.section	.text.gpio_get_slew_rate,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_get_slew_rate
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_get_slew_rate, %function
gpio_get_slew_rate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L121
	lsls	r0, r0, #2
	mov	ip, r3
	@ sp needed
	add	r0, r0, ip
	ldr	r3, [r0, #4]
	movs	r0, #1
	ands	r0, r3
	bx	lr
.L122:
	.align	2
.L121:
	.word	1073856512
	.size	gpio_get_slew_rate, .-gpio_get_slew_rate
	.section	.text.gpio_set_drive_strength,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_drive_strength
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_drive_strength, %function
gpio_set_drive_strength:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L124
	lsls	r0, r0, #2
	mov	ip, r3
	@ sp needed
	add	r0, r0, ip
	ldr	r3, [r0]
	lsls	r1, r1, #4
	eors	r1, r3
	movs	r3, #128
	movs	r2, #48
	lsls	r3, r3, #5
	ands	r2, r1
	orrs	r3, r0
	str	r2, [r3]
	bx	lr
.L125:
	.align	2
.L124:
	.word	1073856516
	.size	gpio_set_drive_strength, .-gpio_set_drive_strength
	.section	.text.gpio_get_drive_strength,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_get_drive_strength
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_get_drive_strength, %function
gpio_get_drive_strength:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L127
	lsls	r0, r0, #2
	mov	ip, r3
	@ sp needed
	add	r0, r0, ip
	ldr	r0, [r0, #4]
	lsls	r0, r0, #26
	lsrs	r0, r0, #30
	bx	lr
.L128:
	.align	2
.L127:
	.word	1073856512
	.size	gpio_get_drive_strength, .-gpio_get_drive_strength
	.section	.text.gpio_set_irq_enabled,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_irq_enabled
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_irq_enabled, %function
gpio_set_irq_enabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #208
	lsls	r3, r3, #24
	ldr	r3, [r3]
	push	{r4, r5, lr}
	movs	r5, r0
	rsbs	r0, r3, #0
	adcs	r3, r3, r0
	movs	r0, #47
	rsbs	r3, r3, #0
	bics	r3, r0
	ldr	r0, .L134
	lsrs	r4, r5, #3
	mov	ip, r0
	movs	r0, #7
	ands	r0, r5
	lsls	r0, r0, #2
	lsls	r1, r1, r0
	movs	r0, r4
	ldr	r5, .L134+4
	adds	r0, r0, #60
	add	r3, r3, ip
	lsls	r0, r0, #2
	lsls	r4, r4, #2
	str	r1, [r0, r5]
	adds	r3, r3, r4
	cmp	r2, #0
	beq	.L131
	movs	r2, #128
	lsls	r2, r2, #6
	orrs	r3, r2
	str	r1, [r3]
.L129:
	@ sp needed
	pop	{r4, r5, pc}
.L131:
	movs	r2, #192
	lsls	r2, r2, #6
	orrs	r3, r2
	str	r1, [r3]
	b	.L129
.L135:
	.align	2
.L134:
	.word	1073824048
	.word	1073823744
	.size	gpio_set_irq_enabled, .-gpio_set_irq_enabled
	.section	.text.gpio_set_irq_enabled_with_callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_irq_enabled_with_callback
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_irq_enabled_with_callback, %function
gpio_set_irq_enabled_with_callback:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r5, r3
	movs	r3, #208
	lsls	r3, r3, #24
	ldr	r4, [r3]
	movs	r6, r0
	rsbs	r0, r4, #0
	adcs	r4, r4, r0
	movs	r0, #47
	rsbs	r4, r4, #0
	bics	r4, r0
	ldr	r0, .L152
	lsrs	r7, r6, #3
	mov	ip, r0
	movs	r0, #7
	ands	r0, r6
	lsls	r0, r0, #2
	lsls	r1, r1, r0
	movs	r0, r7
	ldr	r6, .L152+4
	adds	r0, r0, #60
	add	r4, r4, ip
	lsls	r0, r0, #2
	lsls	r7, r7, #2
	str	r1, [r0, r6]
	adds	r4, r4, r7
	cmp	r2, #0
	beq	.L138
	movs	r2, #128
	lsls	r2, r2, #6
	orrs	r2, r4
	str	r1, [r2]
	ldr	r4, [r3]
	ldr	r6, .L152+8
	lsls	r4, r4, #2
	ldr	r3, [r4, r6]
	cmp	r3, #0
	beq	.L139
	cmp	r5, #0
	beq	.L140
.L150:
	str	r5, [r4, r6]
.L141:
	movs	r1, #1
	movs	r0, #13
	bl	irq_set_enabled
.L136:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L138:
	movs	r2, #192
	lsls	r2, r2, #6
	orrs	r2, r4
	str	r1, [r2]
	ldr	r4, [r3]
	ldr	r6, .L152+8
	lsls	r4, r4, #2
	ldr	r3, [r4, r6]
	cmp	r3, #0
	beq	.L142
	cmp	r5, #0
	beq	.L143
	str	r5, [r4, r6]
	b	.L136
.L139:
	cmp	r5, #0
	beq	.L141
	movs	r2, #0
	movs	r0, #13
	ldr	r1, .L152+12
	str	r5, [r4, r6]
	bl	irq_add_shared_handler
	b	.L141
.L142:
	cmp	r5, #0
	beq	.L136
	movs	r2, #0
	movs	r0, #13
	ldr	r1, .L152+12
	str	r5, [r4, r6]
	bl	irq_add_shared_handler
	b	.L136
.L140:
	movs	r0, #13
	ldr	r1, .L152+12
	bl	irq_remove_handler
	b	.L150
.L143:
	movs	r0, #13
	ldr	r1, .L152+12
	bl	irq_remove_handler
	str	r5, [r4, r6]
	b	.L136
.L153:
	.align	2
.L152:
	.word	1073824048
	.word	1073823744
	.word	callbacks
	.word	gpio_default_irq_handler
	.size	gpio_set_irq_enabled_with_callback, .-gpio_set_irq_enabled_with_callback
	.section	.text.gpio_set_irq_callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_irq_callback
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_irq_callback, %function
gpio_set_irq_callback:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #208
	lsls	r3, r3, #24
	push	{r4, r5, r6, lr}
	ldr	r4, [r3]
	ldr	r6, .L162
	lsls	r4, r4, #2
	ldr	r3, [r6, r4]
	movs	r5, r0
	cmp	r3, #0
	beq	.L155
	cmp	r0, #0
	beq	.L161
.L156:
	str	r5, [r6, r4]
.L154:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L155:
	cmp	r0, #0
	beq	.L154
	str	r0, [r6, r4]
	movs	r2, #0
	movs	r0, #13
	ldr	r1, .L162+4
	bl	irq_add_shared_handler
	b	.L154
.L161:
	movs	r0, #13
	ldr	r1, .L162+4
	bl	irq_remove_handler
	b	.L156
.L163:
	.align	2
.L162:
	.word	callbacks
	.word	gpio_default_irq_handler
	.size	gpio_set_irq_callback, .-gpio_set_irq_callback
	.section	.text.gpio_add_raw_irq_handler_with_order_priority_masked,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_add_raw_irq_handler_with_order_priority_masked
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_add_raw_irq_handler_with_order_priority_masked, %function
gpio_add_raw_irq_handler_with_order_priority_masked:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #208
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	lsls	r3, r3, #24
	mov	r8, r3
	ldr	r3, [r3]
	ldr	r7, .L170
	lsls	r3, r3, #2
	movs	r6, r2
	ldr	r2, [r7, r3]
	movs	r4, r0
	movs	r5, r1
	push	{lr}
	tst	r0, r2
	bne	.L169
.L165:
	@ sp needed
	movs	r1, r5
	orrs	r4, r2
	movs	r0, #13
	movs	r2, r6
	str	r4, [r7, r3]
	bl	irq_add_shared_handler
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L169:
	bl	hard_assertion_failure
	mov	r3, r8
	ldr	r3, [r3]
	lsls	r3, r3, #2
	ldr	r2, [r7, r3]
	b	.L165
.L171:
	.align	2
.L170:
	.word	raw_irq_mask
	.size	gpio_add_raw_irq_handler_with_order_priority_masked, .-gpio_add_raw_irq_handler_with_order_priority_masked
	.section	.text.gpio_add_raw_irq_handler_masked,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_add_raw_irq_handler_masked
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_add_raw_irq_handler_masked, %function
gpio_add_raw_irq_handler_masked:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r7, #208
	lsls	r7, r7, #24
	ldr	r3, [r7]
	ldr	r6, .L178
	lsls	r3, r3, #2
	ldr	r2, [r6, r3]
	movs	r4, r0
	movs	r5, r1
	tst	r2, r0
	bne	.L177
.L173:
	@ sp needed
	movs	r1, r5
	orrs	r4, r2
	movs	r0, #13
	movs	r2, #128
	str	r4, [r6, r3]
	bl	irq_add_shared_handler
	pop	{r3, r4, r5, r6, r7, pc}
.L177:
	bl	hard_assertion_failure
	ldr	r3, [r7]
	lsls	r3, r3, #2
	ldr	r2, [r6, r3]
	b	.L173
.L179:
	.align	2
.L178:
	.word	raw_irq_mask
	.size	gpio_add_raw_irq_handler_masked, .-gpio_add_raw_irq_handler_masked
	.section	.text.gpio_remove_raw_irq_handler_masked,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_remove_raw_irq_handler_masked
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_remove_raw_irq_handler_masked, %function
gpio_remove_raw_irq_handler_masked:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	@ sp needed
	movs	r0, #13
	bl	irq_remove_handler
	movs	r3, #208
	lsls	r3, r3, #24
	ldr	r3, [r3]
	ldr	r1, .L181
	lsls	r3, r3, #2
	ldr	r2, [r3, r1]
	bics	r2, r4
	str	r2, [r3, r1]
	pop	{r4, pc}
.L182:
	.align	2
.L181:
	.word	raw_irq_mask
	.size	gpio_remove_raw_irq_handler_masked, .-gpio_remove_raw_irq_handler_masked
	.section	.text.gpio_set_dormant_irq_enabled,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_dormant_irq_enabled
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_dormant_irq_enabled, %function
gpio_set_dormant_irq_enabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	lsrs	r3, r0, #3
	push	{r4, lr}
	movs	r4, r0
	movs	r0, #7
	ands	r0, r4
	lsls	r0, r0, #2
	lsls	r1, r1, r0
	movs	r0, r3
	ldr	r4, .L186
	adds	r0, r0, #60
	lsls	r0, r0, #2
	str	r1, [r0, r4]
	ldr	r0, .L186+4
	lsls	r3, r3, #2
	mov	ip, r0
	add	r3, r3, ip
	cmp	r2, #0
	beq	.L184
	movs	r2, #128
	lsls	r2, r2, #6
	orrs	r3, r2
	str	r1, [r3]
.L183:
	@ sp needed
	pop	{r4, pc}
.L184:
	movs	r2, #192
	lsls	r2, r2, #6
	orrs	r3, r2
	str	r1, [r3]
	b	.L183
.L187:
	.align	2
.L186:
	.word	1073823744
	.word	1073824096
	.size	gpio_set_dormant_irq_enabled, .-gpio_set_dormant_irq_enabled
	.section	.text.gpio_acknowledge_irq,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_acknowledge_irq
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_acknowledge_irq, %function
gpio_acknowledge_irq:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, r0
	@ sp needed
	lsrs	r3, r0, #3
	movs	r0, #7
	ands	r0, r2
	lsls	r0, r0, #2
	lsls	r1, r1, r0
	ldr	r2, .L189
	adds	r3, r3, #60
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	bx	lr
.L190:
	.align	2
.L189:
	.word	1073823744
	.size	gpio_acknowledge_irq, .-gpio_acknowledge_irq
	.section	.text.gpio_debug_pins_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_debug_pins_init
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_debug_pins_init, %function
gpio_debug_pins_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r0, #64
	push	{r4, r5, r6, r7, lr}
	mov	lr, r10
	mov	r7, r9
	mov	r6, r8
	mov	r8, r0
	adds	r0, r0, #128
	movs	r2, #224
	movs	r5, #208
	mov	ip, r0
	push	{r6, r7, lr}
	subs	r0, r0, #187
	movs	r7, #128
	movs	r3, #0
	movs	r4, #1
	mov	r10, r0
	ldr	r1, .L198
	lsls	r2, r2, #14
	lsls	r5, r5, #24
	lsls	r7, r7, #5
.L193:
	tst	r4, r2
	beq	.L192
	movs	r0, r4
	lsls	r0, r0, r3
	mov	r6, r8
	str	r0, [r5, #40]
	str	r0, [r5, #24]
	ldr	r0, [r1]
	eors	r0, r6
	mov	r6, ip
	ands	r0, r6
	movs	r6, r7
	orrs	r6, r1
	str	r0, [r6]
	ldr	r6, .L198+4
	lsls	r0, r3, #3
	mov	r9, r6
	mov	r6, r10
	add	r0, r0, r9
	str	r6, [r0]
.L192:
	adds	r3, r3, #1
	lsrs	r2, r2, #1
	adds	r1, r1, #4
	cmp	r3, #30
	bne	.L193
	movs	r2, #208
	@ sp needed
	movs	r3, #224
	lsls	r2, r2, #24
	ldr	r1, [r2, #32]
	lsls	r3, r3, #14
	bics	r3, r1
	str	r3, [r2, #44]
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L199:
	.align	2
.L198:
	.word	1073856516
	.word	1073823748
	.size	gpio_debug_pins_init, .-gpio_debug_pins_init
	.section	.text.gpio_set_input_enabled,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_set_input_enabled
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_set_input_enabled, %function
gpio_set_input_enabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L203
	lsls	r0, r0, #2
	mov	ip, r3
	add	r0, r0, ip
	cmp	r1, #0
	beq	.L201
	movs	r3, #128
	movs	r2, #64
	lsls	r3, r3, #6
	orrs	r3, r0
	str	r2, [r3]
.L200:
	@ sp needed
	bx	lr
.L201:
	movs	r3, #192
	movs	r2, #64
	lsls	r3, r3, #6
	orrs	r3, r0
	str	r2, [r3]
	b	.L200
.L204:
	.align	2
.L203:
	.word	1073856516
	.size	gpio_set_input_enabled, .-gpio_set_input_enabled
	.section	.text.gpio_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_init
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_init, %function
gpio_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	@ sp needed
	movs	r2, #208
	lsls	r3, r3, r0
	lsls	r2, r2, #24
	str	r3, [r2, #40]
	str	r3, [r2, #24]
	ldr	r2, .L206
	movs	r1, #64
	mov	ip, r2
	lsls	r3, r0, #2
	add	r3, r3, ip
	ldr	r2, [r3]
	lsls	r0, r0, #3
	eors	r2, r1
	adds	r1, r1, #128
	ands	r1, r2
	movs	r2, #128
	lsls	r2, r2, #5
	orrs	r3, r2
	str	r1, [r3]
	ldr	r3, .L206+4
	mov	ip, r3
	movs	r3, #5
	add	r0, r0, ip
	str	r3, [r0, #4]
	bx	lr
.L207:
	.align	2
.L206:
	.word	1073856516
	.word	1073823744
	.size	gpio_init, .-gpio_init
	.section	.text.gpio_deinit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_deinit
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_deinit, %function
gpio_deinit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L209
	movs	r1, #64
	@ sp needed
	mov	ip, r2
	lsls	r3, r0, #2
	add	r3, r3, ip
	ldr	r2, [r3]
	lsls	r0, r0, #3
	eors	r2, r1
	adds	r1, r1, #128
	ands	r1, r2
	movs	r2, #128
	lsls	r2, r2, #5
	orrs	r3, r2
	str	r1, [r3]
	ldr	r3, .L209+4
	mov	ip, r3
	movs	r3, #31
	add	r0, r0, ip
	str	r3, [r0, #4]
	bx	lr
.L210:
	.align	2
.L209:
	.word	1073856516
	.word	1073823744
	.size	gpio_deinit, .-gpio_deinit
	.section	.text.gpio_init_mask,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	gpio_init_mask
	.syntax unified
	.code	16
	.thumb_func
	.type	gpio_init_mask, %function
gpio_init_mask:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, #64
	push	{r4, r5, r6, r7, lr}
	mov	lr, r10
	mov	r7, r9
	mov	r6, r8
	mov	r8, r1
	adds	r1, r1, #128
	movs	r5, #208
	mov	ip, r1
	push	{r6, r7, lr}
	subs	r1, r1, #187
	movs	r7, #128
	movs	r3, #0
	movs	r4, #1
	mov	r10, r1
	ldr	r2, .L218
	lsls	r5, r5, #24
	lsls	r7, r7, #5
.L213:
	tst	r4, r0
	beq	.L212
	movs	r1, r4
	lsls	r1, r1, r3
	mov	r6, r8
	str	r1, [r5, #40]
	str	r1, [r5, #24]
	ldr	r1, [r2]
	eors	r1, r6
	mov	r6, ip
	ands	r1, r6
	movs	r6, r7
	orrs	r6, r2
	str	r1, [r6]
	ldr	r6, .L218+4
	lsls	r1, r3, #3
	mov	r9, r6
	mov	r6, r10
	add	r1, r1, r9
	str	r6, [r1]
.L212:
	adds	r3, r3, #1
	lsrs	r0, r0, #1
	adds	r2, r2, #4
	cmp	r3, #30
	bne	.L213
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L219:
	.align	2
.L218:
	.word	1073856516
	.word	1073823748
	.size	gpio_init_mask, .-gpio_init_mask
	.section	.bss.raw_irq_mask,"aw",%nobits
	.align	2
	.type	raw_irq_mask, %object
	.size	raw_irq_mask, 8
raw_irq_mask:
	.space	8
	.section	.bss.callbacks,"aw",%nobits
	.align	2
	.type	callbacks, %object
	.size	callbacks, 8
callbacks:
	.space	8
	.ident	"GCC: (Arch Repository) 13.1.0"
