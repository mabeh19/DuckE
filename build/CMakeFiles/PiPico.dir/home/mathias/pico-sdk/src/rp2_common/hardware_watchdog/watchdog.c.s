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
	.file	"watchdog.c"
	.text
	.section	.text.watchdog_start_tick,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	watchdog_start_tick
	.syntax unified
	.code	16
	.thumb_func
	.type	watchdog_start_tick, %function
watchdog_start_tick:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #128
	@ sp needed
	ldr	r2, .L3
	lsls	r3, r3, #2
	orrs	r3, r0
	str	r3, [r2, #44]
	bx	lr
.L4:
	.align	2
.L3:
	.word	1074102272
	.size	watchdog_start_tick, .-watchdog_start_tick
	.section	.text.watchdog_update,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	watchdog_update
	.syntax unified
	.code	16
	.thumb_func
	.type	watchdog_update, %function
watchdog_update:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L6
	@ sp needed
	ldr	r2, [r3]
	ldr	r3, .L6+4
	str	r2, [r3, #4]
	bx	lr
.L7:
	.align	2
.L6:
	.word	load_value
	.word	1074102272
	.size	watchdog_update, .-watchdog_update
	.section	.text.watchdog_get_count,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	watchdog_get_count
	.syntax unified
	.code	16
	.thumb_func
	.type	watchdog_get_count, %function
watchdog_get_count:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L9
	@ sp needed
	ldr	r0, [r3]
	lsls	r0, r0, #8
	lsrs	r0, r0, #9
	bx	lr
.L10:
	.align	2
.L9:
	.word	1074102272
	.size	watchdog_get_count, .-watchdog_get_count
	.section	.text._watchdog_enable,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_watchdog_enable
	.syntax unified
	.code	16
	.thumb_func
	.type	_watchdog_enable, %function
_watchdog_enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #128
	ldr	r3, .L19
	lsls	r2, r2, #23
	push	{r4, lr}
	str	r2, [r3]
	ldr	r4, .L19+4
	ldr	r2, .L19+8
	str	r4, [r2]
	cmp	r1, #0
	beq	.L12
	movs	r2, #224
	ldr	r3, .L19+12
	lsls	r2, r2, #19
	str	r2, [r3]
	cmp	r0, #0
	bne	.L14
.L18:
	movs	r2, #128
	ldr	r3, .L19+12
	lsls	r2, r2, #24
	str	r2, [r3]
.L11:
	@ sp needed
	pop	{r4, pc}
.L12:
	movs	r2, #224
	lsls	r2, r2, #19
	str	r2, [r3]
	cmp	r0, #0
	beq	.L18
.L14:
	lsls	r3, r0, #5
	subs	r3, r3, r0
	lsls	r3, r3, #2
	adds	r0, r3, r0
	movs	r3, #128
	lsls	r0, r0, #4
	lsls	r3, r3, #17
	cmp	r0, r3
	bcs	.L17
	movs	r3, r0
.L16:
	ldr	r2, .L19+16
	str	r3, [r2]
	movs	r2, #128
	ldr	r3, .L19+20
	lsls	r2, r2, #23
	str	r0, [r3, #4]
	ldr	r3, .L19+12
	str	r2, [r3]
	b	.L11
.L17:
	ldr	r3, .L19+24
	movs	r0, r3
	b	.L16
.L20:
	.align	2
.L19:
	.word	1074114560
	.word	131068
	.word	1073815560
	.word	1074110464
	.word	load_value
	.word	1074102272
	.word	16777215
	.size	_watchdog_enable, .-_watchdog_enable
	.section	.text.watchdog_enable,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	watchdog_enable
	.syntax unified
	.code	16
	.thumb_func
	.type	watchdog_enable, %function
watchdog_enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L29
	ldr	r2, .L29+4
	push	{r4, lr}
	str	r2, [r3, #28]
	movs	r2, #128
	ldr	r3, .L29+8
	lsls	r2, r2, #23
	str	r2, [r3]
	ldr	r4, .L29+12
	ldr	r2, .L29+16
	str	r4, [r2]
	cmp	r1, #0
	beq	.L22
	movs	r2, #224
	ldr	r3, .L29+20
	lsls	r2, r2, #19
	str	r2, [r3]
	cmp	r0, #0
	bne	.L24
.L28:
	movs	r2, #128
	ldr	r3, .L29+20
	lsls	r2, r2, #24
	str	r2, [r3]
.L21:
	@ sp needed
	pop	{r4, pc}
.L22:
	movs	r2, #224
	lsls	r2, r2, #19
	str	r2, [r3]
	cmp	r0, #0
	beq	.L28
.L24:
	lsls	r3, r0, #5
	subs	r3, r3, r0
	lsls	r3, r3, #2
	adds	r0, r3, r0
	movs	r3, #128
	lsls	r0, r0, #4
	lsls	r3, r3, #17
	cmp	r0, r3
	bcs	.L27
	movs	r3, r0
.L26:
	ldr	r2, .L29+24
	str	r3, [r2]
	movs	r2, #128
	ldr	r3, .L29
	lsls	r2, r2, #23
	str	r0, [r3, #4]
	ldr	r3, .L29+20
	str	r2, [r3]
	b	.L21
.L27:
	ldr	r3, .L29+28
	movs	r0, r3
	b	.L26
.L30:
	.align	2
.L29:
	.word	1074102272
	.word	1790390561
	.word	1074114560
	.word	131068
	.word	1073815560
	.word	1074110464
	.word	load_value
	.word	16777215
	.size	watchdog_enable, .-watchdog_enable
	.section	.text.watchdog_reboot,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	watchdog_reboot
	.syntax unified
	.code	16
	.thumb_func
	.type	watchdog_reboot, %function
watchdog_reboot:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, #128
	ldr	r3, .L38
	lsls	r4, r4, #23
	str	r4, [r3]
	cmp	r0, #0
	beq	.L32
	movs	r3, #1
	ldr	r4, .L38+4
	orrs	r0, r3
	ldr	r3, .L38+8
	str	r4, [r3, #28]
	ldr	r4, .L38+12
	eors	r4, r0
	str	r4, [r3, #32]
	str	r1, [r3, #36]
	str	r0, [r3, #40]
.L33:
	movs	r1, #128
	ldr	r3, .L38
	lsls	r1, r1, #23
	str	r1, [r3]
	ldr	r0, .L38+16
	ldr	r1, .L38+20
	str	r0, [r1]
	movs	r1, #224
	lsls	r1, r1, #19
	str	r1, [r3]
	cmp	r2, #0
	bne	.L34
	movs	r2, #128
	ldr	r3, .L38+24
	lsls	r2, r2, #24
	str	r2, [r3]
.L31:
	@ sp needed
	pop	{r4, pc}
.L32:
	ldr	r3, .L38+8
	str	r0, [r3, #28]
	b	.L33
.L34:
	lsls	r3, r2, #5
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r2, r3, r2
	movs	r3, #128
	lsls	r2, r2, #4
	lsls	r3, r3, #17
	cmp	r2, r3
	bcs	.L37
	movs	r3, r2
.L36:
	ldr	r1, .L38+28
	str	r3, [r1]
	ldr	r3, .L38+8
	str	r2, [r3, #4]
	movs	r2, #128
	ldr	r3, .L38+24
	lsls	r2, r2, #23
	str	r2, [r3]
	b	.L31
.L37:
	ldr	r3, .L38+32
	movs	r2, r3
	b	.L36
.L39:
	.align	2
.L38:
	.word	1074114560
	.word	-1341669165
	.word	1074102272
	.word	1341669165
	.word	131068
	.word	1073815560
	.word	1074110464
	.word	load_value
	.word	16777215
	.size	watchdog_reboot, .-watchdog_reboot
	.section	.text.watchdog_caused_reboot,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	watchdog_caused_reboot
	.syntax unified
	.code	16
	.thumb_func
	.type	watchdog_caused_reboot, %function
watchdog_caused_reboot:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L41
	@ sp needed
	ldr	r0, [r3, #8]
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	uxtb	r0, r0
	bx	lr
.L42:
	.align	2
.L41:
	.word	1074102272
	.size	watchdog_caused_reboot, .-watchdog_caused_reboot
	.section	.text.watchdog_enable_caused_reboot,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	watchdog_enable_caused_reboot
	.syntax unified
	.code	16
	.thumb_func
	.type	watchdog_enable_caused_reboot, %function
watchdog_enable_caused_reboot:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L47
	movs	r0, #0
	ldr	r2, [r3, #8]
	cmp	r2, #0
	beq	.L44
	ldr	r0, [r3, #28]
	ldr	r3, .L47+4
	mov	ip, r3
	add	r0, r0, ip
	rsbs	r3, r0, #0
	adcs	r0, r0, r3
	uxtb	r0, r0
.L44:
	@ sp needed
	bx	lr
.L48:
	.align	2
.L47:
	.word	1074102272
	.word	-1790390561
	.size	watchdog_enable_caused_reboot, .-watchdog_enable_caused_reboot
	.section	.bss.load_value,"aw",%nobits
	.align	2
	.type	load_value, %object
	.size	load_value, 4
load_value:
	.space	4
	.ident	"GCC: (Arch Repository) 13.1.0"
