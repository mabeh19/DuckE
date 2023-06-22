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
	.file	"timer.c"
	.text
	.section	.text.hardware_alarm_irq_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	hardware_alarm_irq_handler, %function
hardware_alarm_irq_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.syntax divided
@ 407 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 1
	mrs r2, ipsr
@ 0 "" 2
	.thumb
	.syntax unified
	mov	lr, r10
	mov	r7, r9
	mov	r6, r8
	movs	r0, r2
	push	{r6, r7, lr}
	subs	r0, r0, #16
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r8, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r4, .L10
.L2:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L2
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #1
	movs	r1, r3
	lsls	r1, r1, r0
	ldr	r5, .L10+4
	movs	r7, r3
	str	r1, [r5, #52]
	mov	r10, r5
	ldr	r5, .L10+8
	str	r1, [r5]
	ldr	r5, .L10+12
	ldrb	r6, [r5]
	mov	ip, r5
	movs	r5, r6
	lsrs	r5, r5, r0
	ands	r7, r5
	tst	r3, r5
	beq	.L3
	mov	r3, r10
	ldr	r7, [r3, #36]
	ldr	r3, .L10+16
	lsls	r5, r0, #2
	ldr	r3, [r5, r3]
	cmp	r7, r3
	bcc	.L4
	mov	r2, ip
	ldr	r3, .L10+20
	bics	r6, r1
	ldr	r3, [r5, r3]
	strb	r6, [r2]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	str	r2, [r4]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r8
@ 0 "" 2
	.thumb
	.syntax unified
	cmp	r3, #0
	beq	.L1
	blx	r3
	b	.L1
.L3:
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r7, [r4]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r8
@ 0 "" 2
	.thumb
	.syntax unified
.L1:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L4:
	ldr	r3, .L10+24
	lsls	r2, r2, #2
	mov	ip, r3
	add	r2, r2, ip
	ldr	r3, [r2]
	str	r3, [r2]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #0
	str	r3, [r4]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r8
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L1
.L11:
	.align	2
.L10:
	.word	-805306072
	.word	1074085888
	.word	1074098236
	.word	timer_callbacks_pending
	.word	target_hi
	.word	alarm_callbacks
	.word	1074085840
	.size	hardware_alarm_irq_handler, .-hardware_alarm_irq_handler
	.section	.rodata.hardware_alarm_claim.str1.4,"aMS",%progbits,1
	.align	2
.LC3:
	.ascii	"Hardware alarm %d already claimed\000"
	.section	.text.hardware_alarm_claim,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hardware_alarm_claim
	.syntax unified
	.code	16
	.thumb_func
	.type	hardware_alarm_claim, %function
hardware_alarm_claim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L13
	movs	r1, r0
	@ sp needed
	movs	r0, r3
	ldr	r2, .L13+4
	bl	hw_claim_or_assert
	pop	{r4, pc}
.L14:
	.align	2
.L13:
	.word	claimed
	.word	.LC3
	.size	hardware_alarm_claim, .-hardware_alarm_claim
	.section	.text.hardware_alarm_unclaim,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hardware_alarm_unclaim
	.syntax unified
	.code	16
	.thumb_func
	.type	hardware_alarm_unclaim, %function
hardware_alarm_unclaim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L16
	movs	r1, r0
	@ sp needed
	movs	r0, r3
	bl	hw_claim_clear
	pop	{r4, pc}
.L17:
	.align	2
.L16:
	.word	claimed
	.size	hardware_alarm_unclaim, .-hardware_alarm_unclaim
	.section	.text.hardware_alarm_is_claimed,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hardware_alarm_is_claimed
	.syntax unified
	.code	16
	.thumb_func
	.type	hardware_alarm_is_claimed, %function
hardware_alarm_is_claimed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L19
	movs	r1, r0
	@ sp needed
	movs	r0, r3
	bl	hw_is_claimed
	pop	{r4, pc}
.L20:
	.align	2
.L19:
	.word	claimed
	.size	hardware_alarm_is_claimed, .-hardware_alarm_is_claimed
	.section	.rodata.hardware_alarm_claim_unused.str1.4,"aMS",%progbits,1
	.align	2
.LC9:
	.ascii	"No timers available\000"
	.section	.text.hardware_alarm_claim_unused,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hardware_alarm_claim_unused
	.syntax unified
	.code	16
	.thumb_func
	.type	hardware_alarm_claim_unused, %function
hardware_alarm_claim_unused:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L22
	ldr	r4, .L22+4
	sub	sp, sp, #8
	movs	r1, r0
	str	r3, [sp]
	movs	r2, #0
	movs	r3, #3
	movs	r0, r4
	bl	hw_claim_unused_from_range
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L23:
	.align	2
.L22:
	.word	.LC9
	.word	claimed
	.size	hardware_alarm_claim_unused, .-hardware_alarm_claim_unused
	.section	.text.time_us_64,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	time_us_64
	.syntax unified
	.code	16
	.thumb_func
	.type	time_us_64, %function
time_us_64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L27
	ldr	r1, [r3, #36]
.L25:
	movs	r2, r1
	ldr	r0, [r3, #40]
	ldr	r1, [r3, #36]
	cmp	r2, r1
	bne	.L25
	@ sp needed
	bx	lr
.L28:
	.align	2
.L27:
	.word	1074085888
	.size	time_us_64, .-time_us_64
	.section	.text.busy_wait_us_32,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	busy_wait_us_32
	.syntax unified
	.code	16
	.thumb_func
	.type	busy_wait_us_32, %function
busy_wait_us_32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	cmp	r0, #0
	blt	.L30
	ldr	r2, .L48
	ldr	r1, [r2, #40]
.L31:
	ldr	r3, [r2, #40]
	subs	r3, r3, r1
	cmp	r3, r0
	bcc	.L31
.L29:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L30:
	movs	r4, r0
	movs	r5, #0
	ldr	r2, .L48
	ldr	r3, [r2, #36]
.L33:
	movs	r1, r3
	ldr	r6, [r2, #40]
	ldr	r3, [r2, #36]
	cmp	r3, r1
	bne	.L33
	movs	r0, r6
	movs	r1, r3
	adds	r4, r4, r0
	adcs	r5, r5, r1
	cmp	r3, r5
	bls	.L47
.L43:
	ldr	r3, .L48
	ldr	r3, [r3, #36]
	movs	r4, r3
	adds	r2, r3, #1
	beq	.L37
	movs	r3, #1
	movs	r4, #1
	rsbs	r4, r4, #0
	asrs	r5, r4, #31
	rsbs	r3, r3, #0
.L36:
	ldr	r1, .L48
.L39:
	ldr	r2, [r1, #36]
	cmp	r2, r3
	bcc	.L39
.L38:
	cmp	r2, r3
	bne	.L29
.L37:
	ldr	r2, .L48
	b	.L40
.L41:
	ldr	r1, [r2, #36]
	cmp	r1, r3
	bne	.L29
.L40:
	ldr	r1, [r2, #40]
	cmp	r4, r1
	bhi	.L41
	b	.L29
.L47:
	cmp	r3, r5
	bne	.L34
	cmp	r6, r4
	bhi	.L43
.L34:
	ldr	r2, .L48
	movs	r3, r5
	ldr	r2, [r2, #36]
	cmp	r5, r2
	bhi	.L36
	b	.L38
.L49:
	.align	2
.L48:
	.word	1074085888
	.size	busy_wait_us_32, .-busy_wait_us_32
	.section	.text.busy_wait_us,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	busy_wait_us
	.syntax unified
	.code	16
	.thumb_func
	.type	busy_wait_us, %function
busy_wait_us:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r5, r1
	ldr	r2, .L66
	ldr	r3, [r2, #36]
.L51:
	movs	r1, r3
	ldr	r6, [r2, #40]
	ldr	r3, [r2, #36]
	cmp	r3, r1
	bne	.L51
	movs	r0, r6
	movs	r1, r3
	adds	r4, r4, r0
	adcs	r5, r5, r1
	cmp	r3, r5
	bhi	.L62
	beq	.L65
.L52:
	ldr	r3, .L66
	movs	r2, r5
	ldr	r3, [r3, #36]
	cmp	r5, r3
	bls	.L56
.L54:
	ldr	r1, .L66
.L57:
	ldr	r3, [r1, #36]
	cmp	r3, r2
	bcc	.L57
.L56:
	cmp	r3, r2
	bne	.L50
.L55:
	ldr	r2, .L66
	b	.L59
.L60:
	ldr	r1, [r2, #36]
	cmp	r1, r3
	bne	.L50
.L59:
	ldr	r1, [r2, #40]
	cmp	r1, r4
	bcc	.L60
.L50:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L65:
	cmp	r6, r4
	bls	.L52
.L62:
	ldr	r3, .L66
	ldr	r3, [r3, #36]
	movs	r4, r3
	adds	r2, r3, #1
	beq	.L55
	movs	r2, #1
	movs	r4, #1
	rsbs	r4, r4, #0
	asrs	r5, r4, #31
	rsbs	r2, r2, #0
	b	.L54
.L67:
	.align	2
.L66:
	.word	1074085888
	.size	busy_wait_us, .-busy_wait_us
	.global	__aeabi_lmul
	.section	.text.busy_wait_ms,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	busy_wait_ms
	.syntax unified
	.code	16
	.thumb_func
	.type	busy_wait_ms, %function
busy_wait_ms:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L87
	push	{r4, r5, r6, lr}
	cmp	r0, r3
	bhi	.L69
	lsls	r2, r0, #5
	subs	r2, r2, r0
	ldr	r1, .L87+4
	lsls	r2, r2, #2
	adds	r2, r2, r0
	ldr	r0, [r1, #40]
	lsls	r2, r2, #3
.L70:
	ldr	r3, [r1, #40]
	subs	r3, r3, r0
	cmp	r2, r3
	bhi	.L70
.L68:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L69:
	movs	r2, #250
	movs	r3, #0
	lsls	r2, r2, #2
	movs	r1, #0
	bl	__aeabi_lmul
	movs	r4, r0
	movs	r5, r1
	ldr	r2, .L87+4
	ldr	r3, [r2, #36]
.L72:
	movs	r1, r3
	ldr	r6, [r2, #40]
	ldr	r3, [r2, #36]
	cmp	r3, r1
	bne	.L72
	movs	r0, r6
	movs	r1, r3
	adds	r4, r4, r0
	adcs	r5, r5, r1
	cmp	r3, r5
	bls	.L86
.L82:
	ldr	r3, .L87+4
	ldr	r3, [r3, #36]
	movs	r4, r3
	adds	r2, r3, #1
	beq	.L76
	movs	r3, #1
	movs	r4, #1
	rsbs	r4, r4, #0
	asrs	r5, r4, #31
	rsbs	r3, r3, #0
.L75:
	ldr	r1, .L87+4
.L78:
	ldr	r2, [r1, #36]
	cmp	r2, r3
	bcc	.L78
.L77:
	cmp	r2, r3
	bne	.L68
.L76:
	ldr	r2, .L87+4
	b	.L79
.L80:
	ldr	r1, [r2, #36]
	cmp	r1, r3
	bne	.L68
.L79:
	ldr	r1, [r2, #40]
	cmp	r1, r4
	bcc	.L80
	b	.L68
.L86:
	cmp	r3, r5
	bne	.L73
	cmp	r6, r4
	bhi	.L82
.L73:
	ldr	r2, .L87+4
	movs	r3, r5
	ldr	r2, [r2, #36]
	cmp	r5, r2
	bhi	.L75
	b	.L77
.L88:
	.align	2
.L87:
	.word	2147483
	.word	1074085888
	.size	busy_wait_ms, .-busy_wait_ms
	.section	.text.busy_wait_until,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	busy_wait_until
	.syntax unified
	.code	16
	.thumb_func
	.type	busy_wait_until, %function
busy_wait_until:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L97
.L96:
	ldr	r3, [r2, #36]
	cmp	r1, r3
	bhi	.L96
	bne	.L89
	ldr	r3, .L97
	b	.L93
.L94:
	ldr	r2, [r3, #36]
	cmp	r1, r2
	bne	.L89
.L93:
	ldr	r2, [r3, #40]
	cmp	r2, r0
	bcc	.L94
.L89:
	@ sp needed
	bx	lr
.L98:
	.align	2
.L97:
	.word	1074085888
	.size	busy_wait_until, .-busy_wait_until
	.section	.text.hardware_alarm_set_callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hardware_alarm_set_callback
	.syntax unified
	.code	16
	.thumb_func
	.type	hardware_alarm_set_callback, %function
hardware_alarm_set_callback:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r5, r1
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r6, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r2, .L106
.L100:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L100
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	cmp	r5, #0
	beq	.L101
	movs	r0, r4
	bl	irq_get_vtable_handler
	ldr	r1, .L106+4
	cmp	r1, r0
	beq	.L102
	movs	r0, r4
	bl	irq_set_exclusive_handler
	movs	r1, #1
	movs	r0, r4
	bl	irq_set_enabled
	movs	r3, #1
	lsls	r3, r3, r4
	ldr	r2, .L106+8
	str	r3, [r2]
.L102:
	ldr	r3, .L106+12
	lsls	r4, r4, #2
	str	r5, [r4, r3]
.L103:
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	ldr	r3, .L106
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r6
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, r5, r6, pc}
.L101:
	movs	r1, #1
	lsls	r1, r1, r4
	ldr	r3, .L106+12
	lsls	r2, r4, #2
	str	r5, [r2, r3]
	ldr	r3, .L106+16
	movs	r0, r4
	ldrb	r2, [r3]
	bics	r2, r1
	ldr	r1, .L106+4
	strb	r2, [r3]
	bl	irq_remove_handler
	movs	r1, #0
	movs	r0, r4
	bl	irq_set_enabled
	b	.L103
.L107:
	.align	2
.L106:
	.word	-805306072
	.word	hardware_alarm_irq_handler
	.word	1074094136
	.word	alarm_callbacks
	.word	timer_callbacks_pending
	.size	hardware_alarm_set_callback, .-hardware_alarm_set_callback
	.section	.text.hardware_alarm_set_target,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hardware_alarm_set_target
	.syntax unified
	.code	16
	.thumb_func
	.type	hardware_alarm_set_target, %function
hardware_alarm_set_target:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	lr, r10
	mov	r6, r8
	push	{r6, r7, lr}
	movs	r7, r0
	ldr	r4, .L129
	ldr	r1, [r4, #36]
.L109:
	movs	r5, r1
	ldr	r6, [r4, #40]
	ldr	r1, [r4, #36]
	cmp	r1, r5
	bne	.L109
	cmp	r3, r1
	bhi	.L121
	beq	.L128
.L118:
	movs	r0, #1
.L110:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L128:
	cmp	r2, r6
	bls	.L118
.L121:
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r10, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r0, .L129+4
.L112:
	ldr	r1, [r0]
	cmp	r1, #0
	beq	.L112
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r5, #1
	lsls	r5, r5, r7
	ldr	r1, .L129+8
	ldr	r4, .L129
	mov	r8, r1
	ldrb	r1, [r1]
	mov	r9, r1
	orrs	r1, r5
	uxtb	r1, r1
	mov	ip, r1
	mov	r1, r8
	mov	r0, ip
	strb	r0, [r1]
	adds	r1, r7, #4
	lsls	r1, r1, #2
	str	r5, [r4, #52]
	str	r2, [r1, r4]
	ldr	r1, .L129+12
	lsls	r0, r7, #2
	str	r3, [r0, r1]
	ldr	r1, [r4, #32]
	movs	r0, #0
	tst	r1, r5
	beq	.L113
	ldr	r1, [r4, #36]
.L114:
	movs	r0, r1
	ldr	r6, [r4, #40]
	ldr	r1, [r4, #36]
	cmp	r1, r0
	bne	.L114
	cmp	r3, r1
	bhi	.L120
	bne	.L122
	cmp	r2, r6
	bhi	.L120
.L122:
	cmp	ip, r9
	beq	.L117
	ldr	r3, .L129
	movs	r2, #31
	str	r5, [r3, #32]
	str	r5, [r3, #52]
	movs	r3, #1
	ands	r2, r7
	lsls	r3, r3, r2
	ldr	r2, .L129+16
	str	r3, [r2]
	mov	r3, r8
	mov	r2, r9
	strb	r2, [r3]
.L117:
	movs	r0, #1
.L113:
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	ldr	r3, .L129+4
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r10
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L110
.L120:
	movs	r0, #0
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	ldr	r3, .L129+4
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r10
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L110
.L130:
	.align	2
.L129:
	.word	1074085888
	.word	-805306072
	.word	timer_callbacks_pending
	.word	target_hi
	.word	-536812928
	.size	hardware_alarm_set_target, .-hardware_alarm_set_target
	.section	.text.hardware_alarm_cancel,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hardware_alarm_cancel
	.syntax unified
	.code	16
	.thumb_func
	.type	hardware_alarm_cancel, %function
hardware_alarm_cancel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs ip, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r1, .L135
.L132:
	ldr	r3, [r1]
	cmp	r3, #0
	beq	.L132
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #1
	lsls	r3, r3, r0
	ldr	r2, .L135+4
	ldr	r0, .L135+8
	str	r3, [r2, #32]
	ldrb	r2, [r0]
	bics	r2, r3
	strb	r2, [r0]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #0
	str	r3, [r1]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,ip
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	bx	lr
.L136:
	.align	2
.L135:
	.word	-805306072
	.word	1074085888
	.word	timer_callbacks_pending
	.size	hardware_alarm_cancel, .-hardware_alarm_cancel
	.section	.text.hardware_alarm_force_irq,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hardware_alarm_force_irq
	.syntax unified
	.code	16
	.thumb_func
	.type	hardware_alarm_force_irq, %function
hardware_alarm_force_irq:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs ip, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r1, .L141
.L138:
	ldr	r3, [r1]
	cmp	r3, #0
	beq	.L138
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #1
	lsls	r3, r3, r0
	ldr	r0, .L141+4
	ldrb	r2, [r0]
	orrs	r2, r3
	strb	r2, [r0]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	str	r2, [r1]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,ip
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r2, .L141+8
	@ sp needed
	str	r3, [r2]
	bx	lr
.L142:
	.align	2
.L141:
	.word	-805306072
	.word	timer_callbacks_pending
	.word	1074094140
	.size	hardware_alarm_force_irq, .-hardware_alarm_force_irq
	.section	.bss.claimed,"aw",%nobits
	.type	claimed, %object
	.size	claimed, 1
claimed:
	.space	1
	.section	.bss.timer_callbacks_pending,"aw",%nobits
	.type	timer_callbacks_pending, %object
	.size	timer_callbacks_pending, 1
timer_callbacks_pending:
	.space	1
	.section	.bss.target_hi,"aw",%nobits
	.align	2
	.type	target_hi, %object
	.size	target_hi, 16
target_hi:
	.space	16
	.section	.bss.alarm_callbacks,"aw",%nobits
	.align	2
	.type	alarm_callbacks, %object
	.size	alarm_callbacks, 16
alarm_callbacks:
	.space	16
	.ident	"GCC: (Arch Repository) 13.1.0"
