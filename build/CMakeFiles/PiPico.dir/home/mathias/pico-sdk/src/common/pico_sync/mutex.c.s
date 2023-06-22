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
	.file	"mutex.c"
	.text
	.section	.text.mutex_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	mutex_init
	.syntax unified
	.code	16
	.thumb_func
	.type	mutex_init, %function
mutex_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	bl	next_striped_spin_lock_num
	movs	r1, r0
	movs	r0, r4
	bl	lock_init
	movs	r3, #255
	strb	r3, [r4, #4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, pc}
	.size	mutex_init, .-mutex_init
	.section	.text.recursive_mutex_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	recursive_mutex_init
	.syntax unified
	.code	16
	.thumb_func
	.type	recursive_mutex_init, %function
recursive_mutex_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	bl	next_striped_spin_lock_num
	movs	r1, r0
	movs	r0, r4
	bl	lock_init
	movs	r3, #255
	strh	r3, [r4, #4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, pc}
	.size	recursive_mutex_init, .-recursive_mutex_init
	.section	.time_critical.mutex_enter_blocking,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	mutex_enter_blocking
	.syntax unified
	.code	16
	.thumb_func
	.type	mutex_enter_blocking, %function
mutex_enter_blocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #208
	push	{r4, r5, lr}
	movs	r5, #0
	lsls	r3, r3, #24
	movs	r4, #0
	ldrsb	r5, [r3, r5]
	b	.L7
.L6:
	ldr	r3, [r0]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r4, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
@ 128 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
.L7:
	ldr	r2, [r0]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L5:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L5
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldrb	r3, [r0, #4]
	cmp	r3, #127
	bls	.L6
	strb	r5, [r0, #4]
	ldr	r3, [r0]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, r5, pc}
	.size	mutex_enter_blocking, .-mutex_enter_blocking
	.section	.time_critical.recursive_mutex_enter_blocking,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	recursive_mutex_enter_blocking
	.syntax unified
	.code	16
	.thumb_func
	.type	recursive_mutex_enter_blocking, %function
recursive_mutex_enter_blocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #208
	push	{r4, r5, lr}
	movs	r4, #0
	lsls	r3, r3, #24
	movs	r5, #0
	ldrsb	r4, [r3, r4]
	b	.L15
.L19:
	cmp	r3, #0
	blt	.L13
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r5, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
@ 128 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
.L15:
	ldr	r2, [r0]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L12:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L12
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #4
	ldrsb	r3, [r0, r3]
	ldr	r2, [r0]
	cmp	r3, r4
	bne	.L19
.L13:
	ldrb	r3, [r0, #5]
	strb	r4, [r0, #4]
	adds	r3, r3, #1
	strb	r3, [r0, #5]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #0
	str	r3, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, r5, pc}
	.size	recursive_mutex_enter_blocking, .-recursive_mutex_enter_blocking
	.section	.time_critical.mutex_try_enter,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	mutex_try_enter
	.syntax unified
	.code	16
	.thumb_func
	.type	mutex_try_enter, %function
mutex_try_enter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, r0
	ldr	r0, [r0]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs ip, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L22:
	ldr	r2, [r0]
	cmp	r2, #0
	beq	.L22
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #4
	ldrsb	r2, [r3, r2]
	cmp	r2, #0
	blt	.L29
	cmp	r1, #0
	beq	.L26
	str	r2, [r1]
.L26:
	movs	r0, #0
	b	.L24
.L29:
	movs	r2, #208
	movs	r0, #1
	lsls	r2, r2, #24
	ldr	r2, [r2]
	strb	r2, [r3, #4]
.L24:
	ldr	r3, [r3]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,ip
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	bx	lr
	.size	mutex_try_enter, .-mutex_try_enter
	.section	.time_critical.mutex_try_enter_block_until,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	mutex_try_enter_block_until
	.syntax unified
	.code	16
	.thumb_func
	.type	mutex_try_enter_block_until, %function
mutex_try_enter_block_until:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	movs	r5, r2
	push	{lr}
	movs	r4, r0
	movs	r6, r3
	ldr	r2, [r0]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L31:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L31
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #4
	ldrsb	r3, [r4, r3]
	cmp	r3, #0
	blt	.L46
	ldr	r2, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #0
	str	r0, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #208
	lsls	r2, r2, #24
	ldrb	r2, [r2]
	sxtb	r2, r2
	mov	r8, r2
	cmp	r2, r3
	bne	.L47
.L34:
	movs	r0, #0
.L37:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L47:
	movs	r7, #0
	b	.L38
.L36:
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r7, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, r5
	movs	r1, r6
	bl	best_effort_wfe_or_timeout
	cmp	r0, #0
	bne	.L34
.L38:
	ldr	r2, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L35:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L35
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldrb	r3, [r4, #4]
	cmp	r3, #127
	bls	.L36
	mov	r3, r8
	b	.L45
.L46:
	movs	r3, #208
	lsls	r3, r3, #24
	ldr	r3, [r3]
.L45:
	strb	r3, [r4, #4]
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #1
	b	.L37
	.size	mutex_try_enter_block_until, .-mutex_try_enter_block_until
	.section	.time_critical.recursive_mutex_try_enter,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	recursive_mutex_try_enter
	.syntax unified
	.code	16
	.thumb_func
	.type	recursive_mutex_try_enter, %function
recursive_mutex_try_enter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #208
	movs	r3, r0
	movs	r0, #0
	lsls	r2, r2, #24
	push	{r4, lr}
	ldrsb	r0, [r2, r0]
	ldr	r4, [r3]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs ip, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L49:
	ldr	r2, [r4]
	cmp	r2, #0
	beq	.L49
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #4
	ldrsb	r2, [r3, r2]
	cmp	r2, #0
	blt	.L50
	cmp	r2, r0
	beq	.L50
	cmp	r1, #0
	beq	.L54
	str	r2, [r1]
.L54:
	movs	r0, #0
	b	.L52
.L50:
	strb	r0, [r3, #4]
	movs	r0, #1
	ldrb	r2, [r3, #5]
	adds	r2, r2, #1
	strb	r2, [r3, #5]
.L52:
	ldr	r3, [r3]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,ip
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, pc}
	.size	recursive_mutex_try_enter, .-recursive_mutex_try_enter
	.global	__aeabi_lmul
	.section	.time_critical.mutex_enter_timeout_ms,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	mutex_enter_timeout_ms
	.syntax unified
	.code	16
	.thumb_func
	.type	mutex_enter_timeout_ms, %function
mutex_enter_timeout_ms:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	movs	r5, r1
	movs	r4, r0
	bl	time_us_64
	movs	r2, #250
	movs	r6, r0
	movs	r7, r1
	movs	r3, #0
	movs	r0, r5
	movs	r1, #0
	lsls	r2, r2, #2
	bl	__aeabi_lmul
	movs	r3, #128
	adds	r6, r6, r0
	adcs	r7, r7, r1
	lsls	r3, r3, #24
	cmp	r7, r3
	bcc	.L58
	movs	r6, #1
	ldr	r7, .L69
	rsbs	r6, r6, #0
.L58:
	movs	r3, #208
	lsls	r3, r3, #24
	ldr	r3, [r3]
	movs	r5, #0
	mov	r8, r3
	b	.L63
.L61:
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r5, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, r6
	movs	r1, r7
	bl	best_effort_wfe_or_timeout
	cmp	r0, #0
	bne	.L68
.L63:
	ldr	r2, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L60:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L60
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldrb	r3, [r4, #4]
	cmp	r3, #127
	bls	.L61
	mov	r3, r8
	strb	r3, [r4, #4]
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #1
.L62:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L68:
	movs	r0, #0
	b	.L62
.L70:
	.align	2
.L69:
	.word	2147483647
	.size	mutex_enter_timeout_ms, .-mutex_enter_timeout_ms
	.section	.time_critical.recursive_mutex_enter_timeout_ms,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	recursive_mutex_enter_timeout_ms
	.syntax unified
	.code	16
	.thumb_func
	.type	recursive_mutex_enter_timeout_ms, %function
recursive_mutex_enter_timeout_ms:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	movs	r5, r1
	movs	r4, r0
	bl	time_us_64
	movs	r2, #250
	movs	r6, r0
	movs	r7, r1
	movs	r3, #0
	movs	r0, r5
	movs	r1, #0
	lsls	r2, r2, #2
	bl	__aeabi_lmul
	movs	r3, #128
	adds	r6, r6, r0
	adcs	r7, r7, r1
	lsls	r3, r3, #24
	cmp	r7, r3
	bcc	.L72
	movs	r6, #1
	ldr	r7, .L86
	rsbs	r6, r6, #0
.L72:
	movs	r3, #208
	movs	r5, #0
	lsls	r3, r3, #24
	ldrsb	r5, [r3, r5]
	movs	r3, #0
	mov	r8, r3
	b	.L78
.L84:
	cmp	r5, r3
	beq	.L75
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r3, r8
	str	r3, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, r6
	movs	r1, r7
	bl	best_effort_wfe_or_timeout
	cmp	r0, #0
	bne	.L85
.L78:
	ldr	r2, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L74:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L74
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #4
	ldrsb	r3, [r4, r3]
	ldr	r2, [r4]
	cmp	r3, #0
	bge	.L84
.L75:
	ldrb	r3, [r4, #5]
	strb	r5, [r4, #4]
	adds	r3, r3, #1
	strb	r3, [r4, #5]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #0
	str	r3, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #1
.L77:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L85:
	movs	r0, #0
	b	.L77
.L87:
	.align	2
.L86:
	.word	2147483647
	.size	recursive_mutex_enter_timeout_ms, .-recursive_mutex_enter_timeout_ms
	.section	.time_critical.mutex_enter_timeout_us,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	mutex_enter_timeout_us
	.syntax unified
	.code	16
	.thumb_func
	.type	mutex_enter_timeout_us, %function
mutex_enter_timeout_us:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	movs	r5, r1
	push	{lr}
	movs	r4, r0
	movs	r6, r5
	bl	time_us_64
	movs	r7, #0
	movs	r3, #128
	adds	r6, r6, r0
	adcs	r7, r7, r1
	lsls	r3, r3, #24
	cmp	r7, r3
	bcc	.L89
	movs	r6, #1
	ldr	r7, .L100
	rsbs	r6, r6, #0
.L89:
	movs	r3, #208
	lsls	r3, r3, #24
	ldr	r3, [r3]
	movs	r5, #0
	mov	r8, r3
	b	.L94
.L92:
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r5, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, r6
	movs	r1, r7
	bl	best_effort_wfe_or_timeout
	cmp	r0, #0
	bne	.L99
.L94:
	ldr	r2, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L91:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L91
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldrb	r3, [r4, #4]
	cmp	r3, #127
	bls	.L92
	mov	r3, r8
	strb	r3, [r4, #4]
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #1
.L93:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L99:
	movs	r0, #0
	b	.L93
.L101:
	.align	2
.L100:
	.word	2147483647
	.size	mutex_enter_timeout_us, .-mutex_enter_timeout_us
	.section	.time_critical.recursive_mutex_enter_timeout_us,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	recursive_mutex_enter_timeout_us
	.syntax unified
	.code	16
	.thumb_func
	.type	recursive_mutex_enter_timeout_us, %function
recursive_mutex_enter_timeout_us:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	movs	r5, r1
	push	{lr}
	movs	r4, r0
	movs	r6, r5
	bl	time_us_64
	movs	r7, #0
	movs	r3, #128
	adds	r6, r6, r0
	adcs	r7, r7, r1
	lsls	r3, r3, #24
	cmp	r7, r3
	bcc	.L103
	movs	r6, #1
	ldr	r7, .L117
	rsbs	r6, r6, #0
.L103:
	movs	r3, #208
	movs	r5, #0
	lsls	r3, r3, #24
	ldrsb	r5, [r3, r5]
	movs	r3, #0
	mov	r8, r3
	b	.L109
.L115:
	cmp	r5, r3
	beq	.L106
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r3, r8
	str	r3, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, r6
	movs	r1, r7
	bl	best_effort_wfe_or_timeout
	cmp	r0, #0
	bne	.L116
.L109:
	ldr	r2, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L105:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L105
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #4
	ldrsb	r3, [r4, r3]
	ldr	r2, [r4]
	cmp	r3, #0
	bge	.L115
.L106:
	ldrb	r3, [r4, #5]
	strb	r5, [r4, #4]
	adds	r3, r3, #1
	strb	r3, [r4, #5]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #0
	str	r3, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #1
.L108:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L116:
	movs	r0, #0
	b	.L108
.L118:
	.align	2
.L117:
	.word	2147483647
	.size	recursive_mutex_enter_timeout_us, .-recursive_mutex_enter_timeout_us
	.section	.time_critical.mutex_enter_block_until,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	mutex_enter_block_until
	.syntax unified
	.code	16
	.thumb_func
	.type	mutex_enter_block_until, %function
mutex_enter_block_until:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	lr, r10
	mov	r6, r8
	push	{r6, r7, lr}
	movs	r7, r3
	movs	r3, #208
	lsls	r3, r3, #24
	ldr	r3, [r3]
	movs	r4, r0
	mov	r10, r3
	movs	r3, #0
	mov	r8, r2
	mov	r9, r3
	b	.L123
.L121:
	ldr	r2, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r1, r9
	str	r1, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r3
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r0, r8
	movs	r1, r7
	bl	best_effort_wfe_or_timeout
	cmp	r0, #0
	bne	.L128
.L123:
	ldr	r6, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r3, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L120:
	ldr	r5, [r6]
	cmp	r5, #0
	beq	.L120
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldrb	r5, [r4, #4]
	cmp	r5, #127
	bls	.L121
	mov	r2, r10
	strb	r2, [r4, #4]
	ldr	r2, [r4]
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
	movs	r0, #1
.L122:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L128:
	movs	r0, #0
	b	.L122
	.size	mutex_enter_block_until, .-mutex_enter_block_until
	.section	.time_critical.recursive_mutex_enter_block_until,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	recursive_mutex_enter_block_until
	.syntax unified
	.code	16
	.thumb_func
	.type	recursive_mutex_enter_block_until, %function
recursive_mutex_enter_block_until:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	lr, r10
	mov	r6, r8
	push	{r6, r7, lr}
	movs	r7, r3
	movs	r3, #208
	lsls	r3, r3, #24
	ldrb	r3, [r3]
	movs	r4, r0
	sxtb	r3, r3
	mov	r9, r3
	movs	r3, #0
	mov	r8, r2
	mov	r10, r3
	b	.L134
.L140:
	cmp	r5, r9
	beq	.L131
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r1, r10
	str	r1, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r3
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r0, r8
	movs	r1, r7
	bl	best_effort_wfe_or_timeout
	cmp	r0, #0
	bne	.L141
.L134:
	ldr	r6, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r3, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L130:
	ldr	r5, [r6]
	cmp	r5, #0
	beq	.L130
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r5, #4
	ldrsb	r5, [r4, r5]
	ldr	r2, [r4]
	cmp	r5, #0
	bge	.L140
.L131:
	mov	r1, r9
	strb	r1, [r4, #4]
	ldrb	r1, [r4, #5]
	adds	r1, r1, #1
	strb	r1, [r4, #5]
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
	movs	r0, #1
.L133:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L141:
	movs	r0, #0
	b	.L133
	.size	recursive_mutex_enter_block_until, .-recursive_mutex_enter_block_until
	.section	.time_critical.mutex_exit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	mutex_exit
	.syntax unified
	.code	16
	.thumb_func
	.type	mutex_exit, %function
mutex_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L143:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L143
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #255
	strb	r3, [r0, #4]
	ldr	r3, [r0]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
@ 118 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	bx	lr
	.size	mutex_exit, .-mutex_exit
	.section	.time_critical.recursive_mutex_exit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	recursive_mutex_exit
	.syntax unified
	.code	16
	.thumb_func
	.type	recursive_mutex_exit, %function
recursive_mutex_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L147:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L147
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldrb	r3, [r0, #5]
	subs	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r0, #5]
	cmp	r3, #0
	bne	.L148
	movs	r2, #255
	strb	r2, [r0, #4]
	ldr	r2, [r0]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
@ 118 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
.L146:
	@ sp needed
	bx	lr
.L148:
	ldr	r3, [r0]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L146
	.size	recursive_mutex_exit, .-recursive_mutex_exit
	.ident	"GCC: (Arch Repository) 13.1.0"
