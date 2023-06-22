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
	.file	"clocks.c"
	.text
	.global	__aeabi_uldivmod
	.global	__aeabi_ldivmod
	.section	.text.clocks_irq_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	clocks_irq_handler, %function
clocks_irq_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r3, #196
	ldr	r2, .L20
	ldr	r3, [r2, r3]
	lsls	r3, r3, #31
	bmi	.L18
.L1:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L18:
	ldr	r4, .L20+4
	movs	r3, #0
	ldr	r2, [r4, #16]
	lsrs	r5, r2, #24
	lsls	r6, r2, #8
	movs	r0, r6
	movs	r1, r5
	bl	__aeabi_uldivmod
	ldr	r3, .L20+8
	movs	r2, r0
	ldr	r1, [r3, #4]
	cmp	r1, r2
	bcs	.L4
	str	r2, [r3, #4]
.L4:
	movs	r1, #128
	ldr	r3, .L20+12
	lsls	r1, r1, #4
	str	r1, [r3]
	ldr	r3, [r4, #20]
	cmp	r3, #0
	bne	.L19
.L5:
	movs	r1, #224
	ldr	r3, .L20+8
	ldr	r0, [r3]
	ands	r1, r0
	ldr	r0, .L20+16
	str	r1, [r0]
	movs	r1, #3
	ldr	r7, [r3]
	ands	r1, r7
	str	r1, [r0]
	movs	r0, #1
.L6:
	ldr	r1, [r3, #8]
	tst	r0, r1
	beq	.L6
	movs	r0, #128
	ldr	r1, .L20+20
	lsls	r0, r0, #4
	str	r0, [r1]
	str	r2, [r3, #4]
	movs	r0, r6
	movs	r3, #0
	movs	r1, r5
	bl	__aeabi_uldivmod
	movs	r3, #128
	ldr	r2, .L20+24
	lsls	r3, r3, #9
	str	r0, [r4, #20]
	str	r3, [r2]
	ldr	r2, .L20+28
	str	r3, [r2]
	ldr	r3, .L20+32
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1
	blx	r3
	b	.L1
.L19:
	movs	r3, #2
	.syntax divided
@ 81 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 1
	.syntax unified 
	1: 
	subs r3, #1 
	bne 1b
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L5
.L21:
	.align	2
.L20:
	.word	1073774592
	.word	configured_freq
	.word	1073774652
	.word	1073786940
	.word	1073778748
	.word	1073782844
	.word	1073782904
	.word	1073787000
	.word	_resus_callback
	.size	clocks_irq_handler, .-clocks_irq_handler
	.section	.text.clock_stop,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	clock_stop
	.syntax unified
	.code	16
	.thumb_func
	.type	clock_stop, %function
clock_stop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L23
	lsls	r3, r0, #1
	mov	ip, r2
	@ sp needed
	movs	r2, #192
	adds	r3, r3, r0
	lsls	r3, r3, #2
	add	r3, r3, ip
	lsls	r2, r2, #6
	orrs	r3, r2
	movs	r2, #128
	lsls	r2, r2, #4
	str	r2, [r3]
	movs	r2, #0
	ldr	r3, .L23+4
	lsls	r0, r0, #2
	str	r2, [r0, r3]
	bx	lr
.L24:
	.align	2
.L23:
	.word	1073774592
	.word	configured_freq
	.size	clock_stop, .-clock_stop
	.global	__aeabi_uidiv
	.section	.text.clock_configure,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	clock_configure
	.syntax unified
	.code	16
	.thumb_func
	.type	clock_configure, %function
clock_configure:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r8
	mov	r6, r9
	mov	lr, fp
	mov	r7, r10
	push	{r5, r6, r7, lr}
	sub	sp, sp, #12
	movs	r6, r2
	ldr	r2, [sp, #48]
	movs	r5, r0
	mov	r8, r1
	cmp	r2, r3
	bls	.LCB160
	b	.L34	@long jump
.LCB160:
	lsrs	r2, r3, #24
	mov	fp, r2
	lsls	r3, r3, #8
	movs	r0, r3
	str	r3, [sp, #4]
	mov	r1, fp
	movs	r3, #0
	ldr	r2, [sp, #48]
	bl	__aeabi_uldivmod
	ldr	r3, .L43
	lsls	r4, r5, #1
	mov	ip, r3
	adds	r4, r4, r5
	lsls	r4, r4, #2
	add	r4, r4, ip
	ldr	r3, [r4, #4]
	movs	r7, r0
	cmp	r3, r0
	bcs	.L27
	str	r0, [r4, #4]
.L27:
	subs	r3, r5, #4
	uxtb	r3, r3
	mov	r9, r3
	cmp	r3, #1
	bls	.L42
.L28:
	movs	r3, #192
	movs	r2, #128
	lsls	r3, r3, #6
	orrs	r3, r4
	lsls	r2, r2, #4
	str	r2, [r3]
	ldr	r3, .L43+4
	lsls	r5, r5, #2
	ldr	r1, [r3, r5]
	mov	r10, r3
	cmp	r1, #0
	beq	.L31
	ldr	r0, [r3, #20]
	bl	__aeabi_uidiv
	adds	r0, r0, #1
	.syntax divided
@ 81 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 1
	.syntax unified 
	1: 
	subs r0, #1 
	bne 1b
@ 0 "" 2
	.thumb
	.syntax unified
.L31:
	ldr	r2, [r4]
	lsls	r3, r6, #5
	eors	r3, r2
	movs	r2, #224
	ands	r2, r3
	movs	r3, #128
	lsls	r3, r3, #5
	orrs	r3, r4
	str	r2, [r3]
	mov	r2, r9
	cmp	r2, #1
	bls	.L30
.L33:
	movs	r3, #128
	movs	r2, #128
	lsls	r3, r3, #6
	orrs	r3, r4
	lsls	r2, r2, #4
	str	r2, [r3]
	mov	r1, fp
	movs	r3, #0
	movs	r2, r7
	ldr	r0, [sp, #4]
	str	r7, [r4, #4]
	bl	__aeabi_uldivmod
	mov	r3, r10
	str	r0, [r3, r5]
	movs	r0, #1
.L26:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L42:
	mov	r3, r8
	cmp	r3, #1
	bne	.L28
	movs	r3, #192
	movs	r2, #3
	lsls	r3, r3, #6
	orrs	r3, r4
	str	r2, [r3]
	subs	r2, r2, #2
.L29:
	ldr	r3, [r4, #8]
	tst	r2, r3
	beq	.L29
	ldr	r2, [r4]
	lsls	r3, r6, #5
	eors	r3, r2
	movs	r2, #224
	ands	r2, r3
	movs	r3, #128
	lsls	r3, r3, #5
	orrs	r3, r4
	str	r2, [r3]
	ldr	r2, .L43+4
	lsls	r5, r5, #2
	mov	r10, r2
.L30:
	mov	r2, r8
	ldr	r1, [r4]
	eors	r1, r2
	movs	r2, #3
	ands	r2, r1
	str	r2, [r3]
	movs	r2, #1
	mov	r3, r8
	lsls	r2, r2, r3
.L32:
	ldr	r3, [r4, #8]
	tst	r2, r3
	beq	.L32
	b	.L33
.L34:
	movs	r0, #0
	b	.L26
.L44:
	.align	2
.L43:
	.word	1073774592
	.word	configured_freq
	.size	clock_configure, .-clock_configure
	.section	.text.clocks_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	clocks_init
	.syntax unified
	.code	16
	.thumb_func
	.type	clocks_init, %function
clocks_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r0, #12
	sub	sp, sp, #8
	bl	watchdog_start_tick
	bl	running_on_fpga
	cmp	r0, #0
	beq	.L46
	ldr	r3, .L87
	ldr	r0, .L87+4
	ldr	r1, .L87+4
	ldr	r2, .L87+8
	str	r0, [r3]
	str	r1, [r3, #4]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #24]
	str	r1, [r3, #28]
	str	r0, [r3, #32]
	str	r1, [r3, #36]
	str	r2, [r3, #36]
.L45:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L46:
	ldr	r4, .L87+12
	str	r0, [r4, #120]
	bl	xosc_init
	movs	r2, #1
	ldr	r3, .L87+16
	str	r2, [r3]
.L48:
	ldr	r3, [r4, #68]
	cmp	r3, #1
	bne	.L48
	movs	r2, #3
	ldr	r3, .L87+20
	str	r2, [r3]
	ldr	r2, .L87+12
.L49:
	ldr	r3, [r2, #56]
	cmp	r3, #1
	bne	.L49
	adds	r3, r3, #1
	movs	r1, #1
	ldr	r2, .L87+24
	ldr	r0, .L87+28
	str	r3, [sp]
	adds	r3, r3, #4
	bl	pll_init
	movs	r3, #5
	ldr	r2, .L87+32
	str	r3, [sp]
	movs	r1, #1
	ldr	r0, .L87+36
	bl	pll_init
	ldr	r3, .L87+40
	ldr	r2, [r3, #4]
	cmp	r2, #255
	bhi	.L50
	movs	r2, #128
	lsls	r2, r2, #1
	str	r2, [r3, #4]
.L50:
	movs	r2, #128
	ldr	r3, .L87+20
	ldr	r4, .L87
	lsls	r2, r2, #4
	str	r2, [r3]
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L51
	ldr	r0, [r4, #20]
	bl	__aeabi_uidiv
	adds	r0, r0, #1
	.syntax divided
@ 81 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 1
	.syntax unified 
	1: 
	subs r0, #1 
	bne 1b
@ 0 "" 2
	.thumb
	.syntax unified
.L51:
	movs	r2, #224
	ldr	r3, .L87+40
	ldr	r0, .L87+44
	ldr	r1, [r3]
	ands	r2, r1
	str	r2, [r0]
	movs	r2, #2
	ldr	r1, [r3]
	eors	r1, r2
	adds	r2, r2, #1
	ands	r2, r1
	movs	r1, #4
	str	r2, [r0]
.L52:
	ldr	r2, [r3, #8]
	tst	r1, r2
	beq	.L52
	movs	r1, #128
	ldr	r2, .L87+48
	lsls	r1, r1, #4
	str	r1, [r2]
	movs	r2, #128
	lsls	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, .L87+52
	str	r3, [r4, #16]
	ldr	r3, .L87+56
	ldr	r1, [r3, #4]
	cmp	r1, #255
	bhi	.L53
	str	r2, [r3, #4]
.L53:
	movs	r2, #3
	movs	r1, #1
	ldr	r3, .L87+16
	str	r2, [r3]
	ldr	r2, .L87+56
.L54:
	ldr	r3, [r2, #8]
	tst	r1, r3
	beq	.L54
	movs	r3, #224
	ldr	r0, [r2]
	ands	r3, r0
	ldr	r0, .L87+60
	str	r3, [r0]
	ldr	r2, [r2]
	movs	r3, #3
	eors	r2, r1
	movs	r1, #2
	ands	r3, r2
	ldr	r2, .L87+56
	str	r3, [r0]
.L55:
	ldr	r3, [r2, #8]
	tst	r1, r3
	beq	.L55
	movs	r1, #128
	ldr	r3, .L87+64
	lsls	r1, r1, #4
	str	r1, [r3]
	movs	r1, #128
	ldr	r3, .L87+68
	lsls	r1, r1, #1
	str	r1, [r2, #4]
	str	r3, [r4, #20]
	ldr	r3, .L87+72
	ldr	r2, [r3, #4]
	cmp	r2, #255
	bhi	.L56
	str	r1, [r3, #4]
.L56:
	movs	r2, #128
	ldr	r3, .L87+76
	lsls	r2, r2, #4
	str	r2, [r3]
	ldr	r1, [r4, #28]
	cmp	r1, #0
	beq	.L57
	ldr	r0, [r4, #20]
	bl	__aeabi_uidiv
	adds	r0, r0, #1
	.syntax divided
@ 81 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 1
	.syntax unified 
	1: 
	subs r0, #1 
	bne 1b
@ 0 "" 2
	.thumb
	.syntax unified
.L57:
	movs	r3, #224
	ldr	r2, .L87+72
	ldr	r1, [r2]
	ands	r3, r1
	ldr	r1, .L87+80
	str	r3, [r1]
	movs	r1, #128
	ldr	r3, .L87+84
	lsls	r1, r1, #4
	str	r1, [r3]
	movs	r1, #128
	ldr	r3, .L87+4
	lsls	r1, r1, #1
	str	r1, [r2, #4]
	str	r3, [r4, #28]
	ldr	r3, .L87+88
	ldr	r2, [r3, #4]
	cmp	r2, #255
	bhi	.L58
	str	r1, [r3, #4]
.L58:
	movs	r2, #128
	ldr	r3, .L87+92
	lsls	r2, r2, #4
	str	r2, [r3]
	ldr	r1, [r4, #32]
	cmp	r1, #0
	beq	.L59
	ldr	r0, [r4, #20]
	bl	__aeabi_uidiv
	adds	r0, r0, #1
	.syntax divided
@ 81 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 1
	.syntax unified 
	1: 
	subs r0, #1 
	bne 1b
@ 0 "" 2
	.thumb
	.syntax unified
.L59:
	movs	r3, #224
	ldr	r2, .L87+88
	ldr	r1, [r2]
	ands	r3, r1
	ldr	r1, .L87+96
	str	r3, [r1]
	movs	r1, #128
	ldr	r3, .L87+100
	lsls	r1, r1, #4
	str	r1, [r3]
	movs	r3, #128
	lsls	r3, r3, #1
	str	r3, [r2, #4]
	movs	r2, #128
	ldr	r3, .L87+4
	lsls	r2, r2, #11
	str	r3, [r4, #32]
	ldr	r3, .L87+104
	ldr	r1, [r3, #4]
	cmp	r1, r2
	bcs	.L60
	str	r2, [r3, #4]
.L60:
	movs	r2, #128
	ldr	r3, .L87+108
	lsls	r2, r2, #4
	str	r2, [r3]
	ldr	r1, [r4, #36]
	cmp	r1, #0
	beq	.L61
	ldr	r0, [r4, #20]
	bl	__aeabi_uidiv
	adds	r0, r0, #1
	.syntax divided
@ 81 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 1
	.syntax unified 
	1: 
	subs r0, #1 
	bne 1b
@ 0 "" 2
	.thumb
	.syntax unified
.L61:
	movs	r3, #224
	ldr	r2, .L87+104
	ldr	r1, [r2]
	ands	r3, r1
	ldr	r1, .L87+112
	str	r3, [r1]
	movs	r1, #128
	ldr	r3, .L87+116
	lsls	r1, r1, #4
	str	r1, [r3]
	movs	r3, #128
	lsls	r3, r3, #11
	str	r3, [r2, #4]
	ldr	r3, .L87+8
	str	r3, [r4, #36]
	ldr	r3, .L87+120
	ldr	r2, [r3, #4]
	cmp	r2, #255
	bhi	.L62
	movs	r2, #128
	lsls	r2, r2, #1
	str	r2, [r3, #4]
.L62:
	movs	r2, #128
	ldr	r3, .L87+124
	lsls	r2, r2, #4
	str	r2, [r3]
	ldr	r1, [r4, #24]
	cmp	r1, #0
	beq	.L63
	ldr	r0, [r4, #20]
	bl	__aeabi_uidiv
	adds	r0, r0, #1
	.syntax divided
@ 81 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 1
	.syntax unified 
	1: 
	subs r0, #1 
	bne 1b
@ 0 "" 2
	.thumb
	.syntax unified
.L63:
	movs	r3, #224
	ldr	r2, .L87+120
	ldr	r1, [r2]
	ands	r3, r1
	ldr	r1, .L87+128
	str	r3, [r1]
	movs	r1, #128
	ldr	r3, .L87+132
	lsls	r1, r1, #4
	str	r1, [r3]
	movs	r3, #128
	lsls	r3, r3, #1
	str	r3, [r2, #4]
	ldr	r3, .L87+68
	str	r3, [r4, #24]
	b	.L45
.L88:
	.align	2
.L87:
	.word	configured_freq
	.word	48000000
	.word	46875
	.word	1073774592
	.word	1073786940
	.word	1073786928
	.word	1500000000
	.word	1073905664
	.word	1200000000
	.word	1073922048
	.word	1073774640
	.word	1073778736
	.word	1073782832
	.word	12000000
	.word	1073774652
	.word	1073778748
	.word	1073782844
	.word	125000000
	.word	1073774676
	.word	1073786964
	.word	1073778772
	.word	1073782868
	.word	1073774688
	.word	1073786976
	.word	1073778784
	.word	1073782880
	.word	1073774700
	.word	1073786988
	.word	1073778796
	.word	1073782892
	.word	1073774664
	.word	1073786952
	.word	1073778760
	.word	1073782856
	.size	clocks_init, .-clocks_init
	.section	.text.clock_get_hz,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	clock_get_hz
	.syntax unified
	.code	16
	.thumb_func
	.type	clock_get_hz, %function
clock_get_hz:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L90
	lsls	r0, r0, #2
	ldr	r0, [r0, r3]
	@ sp needed
	bx	lr
.L91:
	.align	2
.L90:
	.word	configured_freq
	.size	clock_get_hz, .-clock_get_hz
	.section	.text.clock_set_reported_hz,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	clock_set_reported_hz
	.syntax unified
	.code	16
	.thumb_func
	.type	clock_set_reported_hz, %function
clock_set_reported_hz:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L93
	lsls	r0, r0, #2
	str	r1, [r3, r0]
	@ sp needed
	bx	lr
.L94:
	.align	2
.L93:
	.word	configured_freq
	.size	clock_set_reported_hz, .-clock_set_reported_hz
	.section	.text.frequency_count_khz,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	frequency_count_khz
	.syntax unified
	.code	16
	.thumb_func
	.type	frequency_count_khz, %function
frequency_count_khz:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #128
	push	{r4, r5, r6, lr}
	movs	r6, r0
	ldr	r4, .L101
	lsls	r2, r2, #1
.L96:
	ldr	r3, [r4, #24]
	movs	r5, r3
	ands	r5, r2
	tst	r3, r2
	bne	.L96
	movs	r1, #250
	ldr	r3, .L101+4
	lsls	r1, r1, #2
	ldr	r0, [r3, #16]
	bl	__aeabi_uidiv
	movs	r3, #10
	movs	r1, #16
	str	r0, [r4]
	ldr	r2, .L101
	str	r3, [r4, #16]
	subs	r3, r3, #11
	str	r5, [r4, #4]
	str	r3, [r4, #8]
	str	r6, [r4, #20]
.L97:
	ldr	r3, [r2, #24]
	tst	r1, r3
	beq	.L97
	@ sp needed
	ldr	r0, [r2, #28]
	lsrs	r0, r0, #5
	pop	{r4, r5, r6, pc}
.L102:
	.align	2
.L101:
	.word	1073774720
	.word	configured_freq
	.size	frequency_count_khz, .-frequency_count_khz
	.section	.text.clocks_enable_resus,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	clocks_enable_resus
	.syntax unified
	.code	16
	.thumb_func
	.type	clocks_enable_resus, %function
clocks_enable_resus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L104
	push	{r4, lr}
	ldr	r1, .L104+4
	str	r0, [r3]
	movs	r0, #17
	@ sp needed
	bl	irq_set_exclusive_handler
	movs	r3, #188
	movs	r2, #1
	ldr	r4, .L104+8
	movs	r1, #1
	str	r2, [r4, r3]
	movs	r0, #17
	bl	irq_set_enabled
	movs	r3, #131
	lsls	r3, r3, #1
	str	r3, [r4, #120]
	pop	{r4, pc}
.L105:
	.align	2
.L104:
	.word	_resus_callback
	.word	clocks_irq_handler
	.word	1073774592
	.size	clocks_enable_resus, .-clocks_enable_resus
	.section	.text.clock_gpio_init_int_frac,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	clock_gpio_init_int_frac
	.syntax unified
	.code	16
	.thumb_func
	.type	clock_gpio_init_int_frac, %function
clock_gpio_init_int_frac:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	cmp	r0, #21
	beq	.L108
	cmp	r0, #23
	beq	.L109
	cmp	r0, #24
	beq	.L110
	movs	r4, r0
	subs	r4, r4, #25
	rsbs	r5, r4, #0
	adcs	r4, r4, r5
	movs	r5, #3
	rsbs	r4, r4, #0
	ands	r5, r4
.L107:
	lsls	r4, r1, #5
	movs	r1, #128
	@ sp needed
	lsls	r1, r1, #4
	orrs	r1, r4
	lsls	r4, r5, #1
	adds	r4, r4, r5
	ldr	r5, .L112
	lsls	r4, r4, #2
	mov	ip, r5
	lsls	r2, r2, #8
	add	r4, r4, ip
	orrs	r2, r3
	str	r1, [r4]
	movs	r1, #8
	str	r2, [r4, #4]
	bl	gpio_set_function
	pop	{r4, r5, r6, pc}
.L109:
	movs	r5, #1
	b	.L107
.L108:
	movs	r5, #0
	b	.L107
.L110:
	movs	r5, #2
	b	.L107
.L113:
	.align	2
.L112:
	.word	1073774592
	.size	clock_gpio_init_int_frac, .-clock_gpio_init_int_frac
	.section	.text.clock_configure_gpin,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	clock_configure_gpin
	.syntax unified
	.code	16
	.thumb_func
	.type	clock_configure_gpin, %function
clock_configure_gpin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r8
	mov	lr, r10
	mov	r7, r9
	movs	r5, r1
	mov	r8, r3
	ldr	r3, .L135
	push	{r6, r7, lr}
	ldrb	r3, [r3, r0]
	movs	r6, r0
	movs	r1, #8
	movs	r0, r5
	movs	r7, r2
	mov	r10, r3
	bl	gpio_set_function
	cmp	r7, r8
	bcc	.L123
	lsrs	r3, r7, #24
	mov	r9, r3
	lsls	r7, r7, #8
	mov	r2, r8
	movs	r3, #0
	movs	r0, r7
	mov	r1, r9
	bl	__aeabi_uldivmod
	ldr	r3, .L135+4
	lsls	r4, r6, #1
	mov	ip, r3
	adds	r4, r4, r6
	lsls	r4, r4, #2
	add	r4, r4, ip
	ldr	r3, [r4, #4]
	mov	r8, r0
	cmp	r3, r0
	bcs	.L116
	str	r0, [r4, #4]
.L116:
	subs	r5, r5, #22
	rsbs	r3, r5, #0
	adcs	r5, r5, r3
	subs	r3, r6, #4
	add	r5, r5, r10
	cmp	r3, #1
	bls	.L133
	movs	r3, #192
	movs	r2, #128
	lsls	r3, r3, #6
	orrs	r3, r4
	lsls	r2, r2, #4
	str	r2, [r3]
	ldr	r3, .L135+8
	lsls	r6, r6, #2
	ldr	r1, [r3, r6]
	mov	r10, r3
	cmp	r1, #0
	bne	.L134
.L120:
	ldr	r3, [r4]
	lsls	r5, r5, #5
	eors	r5, r3
	movs	r3, #128
	movs	r2, #224
	lsls	r3, r3, #5
	ands	r2, r5
	orrs	r3, r4
	str	r2, [r3]
.L122:
	movs	r3, #128
	movs	r2, #128
	lsls	r3, r3, #6
	orrs	r3, r4
	lsls	r2, r2, #4
	str	r2, [r3]
	mov	r3, r8
	mov	r2, r8
	str	r3, [r4, #4]
	movs	r0, r7
	movs	r3, #0
	mov	r1, r9
	bl	__aeabi_uldivmod
	mov	r3, r10
	str	r0, [r3, r6]
	movs	r0, #1
.L132:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L134:
	ldr	r0, [r3, #20]
	bl	__aeabi_uidiv
	adds	r0, r0, #1
	.syntax divided
@ 81 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 1
	.syntax unified 
	1: 
	subs r0, #1 
	bne 1b
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L120
.L123:
	movs	r0, #0
	b	.L132
.L133:
	movs	r3, #192
	movs	r2, #3
	lsls	r3, r3, #6
	orrs	r3, r4
	str	r2, [r3]
	subs	r2, r2, #2
.L118:
	ldr	r3, [r4, #8]
	tst	r2, r3
	beq	.L118
	lsls	r3, r5, #5
	movs	r5, #224
	ldr	r1, [r4]
	eors	r3, r1
	ands	r5, r3
	movs	r3, #128
	lsls	r3, r3, #5
	orrs	r3, r4
	str	r5, [r3]
	ldr	r1, [r4]
	eors	r1, r2
	movs	r2, #3
	ands	r2, r1
	str	r2, [r3]
	movs	r2, #2
.L121:
	ldr	r3, [r4, #8]
	tst	r2, r3
	beq	.L121
	ldr	r3, .L135+8
	lsls	r6, r6, #2
	mov	r10, r3
	b	.L122
.L136:
	.align	2
.L135:
	.word	gpin0_src
	.word	1073774592
	.word	configured_freq
	.size	clock_configure_gpin, .-clock_configure_gpin
	.section	.rodata.gpin0_src,"a"
	.align	2
	.type	gpin0_src, %object
	.size	gpin0_src, 10
gpin0_src:
	.ascii	"\001\001\001\001\001\004\005\004\004\004"
	.section	.bss._resus_callback,"aw",%nobits
	.align	2
	.type	_resus_callback, %object
	.size	_resus_callback, 4
_resus_callback:
	.space	4
	.section	.bss.configured_freq,"aw",%nobits
	.align	3
	.type	configured_freq, %object
	.size	configured_freq, 40
configured_freq:
	.space	40
	.ident	"GCC: (Arch Repository) 13.1.0"
