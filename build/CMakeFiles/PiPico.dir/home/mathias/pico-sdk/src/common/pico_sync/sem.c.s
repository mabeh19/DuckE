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
	.file	"sem.c"
	.text
	.section	.text.sem_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sem_init
	.syntax unified
	.code	16
	.thumb_func
	.type	sem_init, %function
sem_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r6, r1
	movs	r5, r2
	bl	next_striped_spin_lock_num
	movs	r1, r0
	movs	r0, r4
	bl	lock_init
	strh	r6, [r4, #4]
	strh	r5, [r4, #6]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	sem_init, .-sem_init
	.section	.time_critical.sem_available,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sem_available
	.syntax unified
	.code	16
	.thumb_func
	.type	sem_available, %function
sem_available:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r0, #4]
	@ sp needed
	sxth	r0, r0
	bx	lr
	.size	sem_available, .-sem_available
	.section	.time_critical.sem_acquire_blocking,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sem_acquire_blocking
	.syntax unified
	.code	16
	.thumb_func
	.type	sem_acquire_blocking, %function
sem_acquire_blocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, #0
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
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	ble	.L6
	subs	r3, r3, #1
	strh	r3, [r0, #4]
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
	pop	{r4, pc}
	.size	sem_acquire_blocking, .-sem_acquire_blocking
	.global	__aeabi_lmul
	.section	.time_critical.sem_acquire_timeout_ms,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sem_acquire_timeout_ms
	.syntax unified
	.code	16
	.thumb_func
	.type	sem_acquire_timeout_ms, %function
sem_acquire_timeout_ms:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
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
	bcc	.L12
	movs	r6, #1
	ldr	r7, .L23
	rsbs	r6, r6, #0
.L12:
	movs	r5, #0
	b	.L17
.L15:
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
	bne	.L22
.L17:
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
.L14:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L14
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #4
	ldrsh	r3, [r4, r2]
	cmp	r3, #0
	ble	.L15
	subs	r3, r3, #1
	strh	r3, [r4, #4]
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
.L16:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L22:
	movs	r0, #0
	b	.L16
.L24:
	.align	2
.L23:
	.word	2147483647
	.size	sem_acquire_timeout_ms, .-sem_acquire_timeout_ms
	.section	.time_critical.sem_acquire_timeout_us,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sem_acquire_timeout_us
	.syntax unified
	.code	16
	.thumb_func
	.type	sem_acquire_timeout_us, %function
sem_acquire_timeout_us:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r5, r1
	movs	r4, r0
	movs	r6, r5
	bl	time_us_64
	movs	r7, #0
	movs	r3, #128
	adds	r6, r6, r0
	adcs	r7, r7, r1
	lsls	r3, r3, #24
	cmp	r7, r3
	bcc	.L26
	movs	r6, #1
	ldr	r7, .L37
	rsbs	r6, r6, #0
.L26:
	movs	r5, #0
	b	.L31
.L29:
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
	bne	.L36
.L31:
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
.L28:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L28
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #4
	ldrsh	r3, [r4, r2]
	cmp	r3, #0
	ble	.L29
	subs	r3, r3, #1
	strh	r3, [r4, #4]
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
.L30:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L36:
	movs	r0, #0
	b	.L30
.L38:
	.align	2
.L37:
	.word	2147483647
	.size	sem_acquire_timeout_us, .-sem_acquire_timeout_us
	.section	.time_critical.sem_acquire_block_until,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sem_acquire_block_until
	.syntax unified
	.code	16
	.thumb_func
	.type	sem_acquire_block_until, %function
sem_acquire_block_until:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r8
	mov	lr, r9
	push	{r7, lr}
	movs	r7, r3
	movs	r3, #0
	movs	r4, r0
	mov	r8, r2
	mov	r9, r3
	b	.L43
.L41:
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r2, r9
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,ip
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r0, r8
	movs	r1, r7
	bl	best_effort_wfe_or_timeout
	cmp	r0, #0
	bne	.L48
.L43:
	ldr	r6, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs ip, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L40:
	ldr	r5, [r6]
	cmp	r5, #0
	beq	.L40
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #4
	ldrsh	r5, [r4, r3]
	cmp	r5, #0
	ble	.L41
	subs	r5, r5, #1
	strh	r5, [r4, #4]
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
	msr PRIMASK,ip
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #1
.L42:
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L48:
	movs	r0, #0
	b	.L42
	.size	sem_acquire_block_until, .-sem_acquire_block_until
	.section	.time_critical.sem_try_acquire,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sem_try_acquire
	.syntax unified
	.code	16
	.thumb_func
	.type	sem_try_acquire, %function
sem_try_acquire:
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
.L50:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L50
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bgt	.L55
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
	movs	r0, #0
.L52:
	@ sp needed
	bx	lr
.L55:
	subs	r3, r3, #1
	strh	r3, [r0, #4]
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
	movs	r0, #1
	b	.L52
	.size	sem_try_acquire, .-sem_try_acquire
	.section	.time_critical.sem_release,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sem_release
	.syntax unified
	.code	16
	.thumb_func
	.type	sem_release, %function
sem_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
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
.L57:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L57
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	movs	r4, #6
	ldrsh	r2, [r0, r4]
	cmp	r2, r3
	ble	.L58
	adds	r3, r3, #1
	strh	r3, [r0, #4]
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
	movs	r0, #1
.L59:
	@ sp needed
	pop	{r4, pc}
.L58:
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
	movs	r0, #0
	b	.L59
	.size	sem_release, .-sem_release
	.section	.time_critical.sem_reset,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sem_reset
	.syntax unified
	.code	16
	.thumb_func
	.type	sem_reset, %function
sem_reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs ip, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L63:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L63
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r1, [r0, #4]
	cmp	r3, r1
	bge	.L64
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
	msr PRIMASK,ip
@ 0 "" 2
@ 118 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
.L62:
	@ sp needed
	bx	lr
.L64:
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
	msr PRIMASK,ip
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L62
	.size	sem_reset, .-sem_reset
	.ident	"GCC: (Arch Repository) 13.1.0"
