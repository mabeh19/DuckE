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
	.file	"claim.c"
	.text
	.section	.text.hw_claim_lock,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hw_claim_lock
	.syntax unified
	.code	16
	.thumb_func
	.type	hw_claim_lock, %function
hw_claim_lock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r0, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r2, .L6
.L2:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L2
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	bx	lr
.L7:
	.align	2
.L6:
	.word	-805306068
	.size	hw_claim_lock, .-hw_claim_lock
	.section	.text.hw_claim_unlock,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hw_claim_unlock
	.syntax unified
	.code	16
	.thumb_func
	.type	hw_claim_unlock, %function
hw_claim_unlock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	ldr	r3, .L9
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r0
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	bx	lr
.L10:
	.align	2
.L9:
	.word	-805306068
	.size	hw_claim_unlock, .-hw_claim_unlock
	.section	.text.hw_is_claimed,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hw_is_claimed
	.syntax unified
	.code	16
	.thumb_func
	.type	hw_is_claimed, %function
hw_is_claimed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r3, r1, #3
	ldrb	r2, [r0, r3]
	movs	r3, #7
	@ sp needed
	movs	r0, #1
	ands	r3, r1
	lsls	r0, r0, r3
	ands	r0, r2
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	uxtb	r0, r0
	bx	lr
	.size	hw_is_claimed, .-hw_is_claimed
	.section	.text.hw_claim_or_assert,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hw_claim_or_assert
	.syntax unified
	.code	16
	.thumb_func
	.type	hw_claim_or_assert, %function
hw_claim_or_assert:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs ip, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r5, .L18
.L13:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L13
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r4, #7
	lsrs	r3, r1, #3
	adds	r6, r0, r3
	ldrb	r0, [r0, r3]
	movs	r3, #1
	ands	r4, r1
	lsls	r3, r3, r4
	movs	r4, r3
	ands	r4, r0
	tst	r3, r0
	bne	.L17
	orrs	r0, r3
	strb	r0, [r6]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r4, [r5]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,ip
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, r5, r6, pc}
.L17:
	movs	r0, r2
	bl	panic
.L19:
	.align	2
.L18:
	.word	-805306068
	.size	hw_claim_or_assert, .-hw_claim_or_assert
	.section	.text.hw_claim_unused_from_range,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hw_claim_unused_from_range
	.syntax unified
	.code	16
	.thumb_func
	.type	hw_claim_unused_from_range, %function
hw_claim_unused_from_range:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r8
	mov	lr, r9
	mov	r8, r1
	push	{r7, lr}
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs ip, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r5, .L39
.L21:
	ldr	r4, [r5]
	cmp	r4, #0
	beq	.L21
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	cmp	r2, r3
	bhi	.L38
	lsrs	r4, r2, #3
	movs	r7, #7
	ldrb	r5, [r0, r4]
	adds	r6, r0, r4
	movs	r4, #1
	ands	r7, r2
	lsls	r4, r4, r7
	tst	r4, r5
	beq	.L24
	movs	r1, #7
	movs	r7, #1
	mov	r9, r1
	b	.L25
.L27:
	lsrs	r4, r2, #3
	ldrb	r5, [r0, r4]
	adds	r6, r0, r4
	mov	r4, r9
	movs	r1, r7
	ands	r4, r2
	lsls	r1, r1, r4
	movs	r4, r1
	tst	r1, r5
	beq	.L24
.L25:
	adds	r2, r2, #1
	cmp	r3, r2
	bcs	.L27
	movs	r0, #1
	rsbs	r0, r0, #0
.L26:
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	ldr	r3, .L39
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,ip
@ 0 "" 2
	.thumb
	.syntax unified
	cmp	r0, #0
	blt	.L23
.L20:
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L24:
	orrs	r5, r4
	movs	r0, r2
	strb	r5, [r6]
	b	.L26
.L38:
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #0
	str	r3, [r5]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,ip
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #1
	rsbs	r0, r0, #0
.L23:
	mov	r3, r8
	cmp	r3, #0
	beq	.L20
	ldr	r0, [sp, #32]
	bl	panic
.L40:
	.align	2
.L39:
	.word	-805306068
	.size	hw_claim_unused_from_range, .-hw_claim_unused_from_range
	.section	.text.hw_claim_clear,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hw_claim_clear
	.syntax unified
	.code	16
	.thumb_func
	.type	hw_claim_clear, %function
hw_claim_clear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs ip, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r4, .L45
.L42:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L42
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #7
	movs	r2, #1
	ands	r3, r1
	lsls	r2, r2, r3
	lsrs	r5, r1, #3
	ldrb	r3, [r0, r5]
	bics	r3, r2
	strb	r3, [r0, r5]
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
	msr PRIMASK,ip
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, r5, pc}
.L46:
	.align	2
.L45:
	.word	-805306068
	.size	hw_claim_clear, .-hw_claim_clear
	.ident	"GCC: (Arch Repository) 13.1.0"
