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
	.file	"sync.c"
	.text
	.section	.text.spin_locks_reset,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	spin_locks_reset
	.syntax unified
	.code	16
	.thumb_func
	.type	spin_locks_reset, %function
spin_locks_reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r1, #0
	ldr	r3, .L5
	ldr	r2, .L5+4
.L2:
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	stmia	r3!, {r1}
	cmp	r3, r2
	bne	.L2
	@ sp needed
	bx	lr
.L6:
	.align	2
.L5:
	.word	-805306112
	.word	-805305984
	.size	spin_locks_reset, .-spin_locks_reset
	.section	.text.spin_lock_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	spin_lock_init
	.syntax unified
	.code	16
	.thumb_func
	.type	spin_lock_init, %function
spin_lock_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	mov	ip, r3
	add	r0, r0, ip
	lsls	r0, r0, #2
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #0
	@ sp needed
	str	r3, [r0]
	bx	lr
.L9:
	.align	2
.L8:
	.word	872415296
	.size	spin_lock_init, .-spin_lock_init
	.section	.text.next_striped_spin_lock_num,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	next_striped_spin_lock_num
	.syntax unified
	.code	16
	.thumb_func
	.type	next_striped_spin_lock_num, %function
next_striped_spin_lock_num:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L13
	ldrb	r0, [r2]
	adds	r3, r0, #1
	uxtb	r3, r3
	cmp	r3, #23
	bls	.L11
	movs	r3, #16
.L11:
	@ sp needed
	strb	r3, [r2]
	bx	lr
.L14:
	.align	2
.L13:
	.word	striped_spin_lock_num
	.size	next_striped_spin_lock_num, .-next_striped_spin_lock_num
	.section	.rodata.spin_lock_claim.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"Spinlock %d is already claimed\000"
	.section	.text.spin_lock_claim,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	spin_lock_claim
	.syntax unified
	.code	16
	.thumb_func
	.type	spin_lock_claim, %function
spin_lock_claim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L16
	movs	r1, r0
	@ sp needed
	movs	r0, r3
	ldr	r2, .L16+4
	bl	hw_claim_or_assert
	pop	{r4, pc}
.L17:
	.align	2
.L16:
	.word	claimed
	.word	.LC1
	.size	spin_lock_claim, .-spin_lock_claim
	.section	.text.spin_lock_claim_mask,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	spin_lock_claim_mask
	.syntax unified
	.code	16
	.thumb_func
	.type	spin_lock_claim_mask, %function
spin_lock_claim_mask:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	movs	r4, r0
	push	{lr}
	cmp	r0, #0
	beq	.L18
	ldr	r3, .L29
	movs	r5, #0
	movs	r6, #1
	mov	r8, r3
	ldr	r7, .L29+4
	b	.L21
.L20:
	adds	r5, r5, #1
	lsrs	r4, r4, #1
	beq	.L18
.L21:
	tst	r6, r4
	beq	.L20
	movs	r1, r5
	mov	r2, r8
	movs	r0, r7
	bl	hw_claim_or_assert
	adds	r5, r5, #1
	lsrs	r4, r4, #1
	bne	.L21
.L18:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L30:
	.align	2
.L29:
	.word	.LC1
	.word	claimed
	.size	spin_lock_claim_mask, .-spin_lock_claim_mask
	.section	.text.spin_lock_unclaim,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	spin_lock_unclaim
	.syntax unified
	.code	16
	.thumb_func
	.type	spin_lock_unclaim, %function
spin_lock_unclaim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L32
	push	{r4, lr}
	adds	r3, r0, r3
	movs	r1, r0
	lsls	r3, r3, #2
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	@ sp needed
	ldr	r0, .L32+4
	str	r2, [r3]
	bl	hw_claim_clear
	pop	{r4, pc}
.L33:
	.align	2
.L32:
	.word	872415296
	.word	claimed
	.size	spin_lock_unclaim, .-spin_lock_unclaim
	.section	.rodata.spin_lock_claim_unused.str1.4,"aMS",%progbits,1
	.align	2
.LC8:
	.ascii	"No spinlocks are available\000"
	.section	.text.spin_lock_claim_unused,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	spin_lock_claim_unused
	.syntax unified
	.code	16
	.thumb_func
	.type	spin_lock_claim_unused, %function
spin_lock_claim_unused:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L35
	ldr	r4, .L35+4
	sub	sp, sp, #8
	movs	r1, r0
	str	r3, [sp]
	movs	r2, #24
	movs	r3, #31
	movs	r0, r4
	bl	hw_claim_unused_from_range
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L36:
	.align	2
.L35:
	.word	.LC8
	.word	claimed
	.size	spin_lock_claim_unused, .-spin_lock_claim_unused
	.section	.text.spin_lock_is_claimed,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	spin_lock_is_claimed
	.syntax unified
	.code	16
	.thumb_func
	.type	spin_lock_is_claimed, %function
spin_lock_is_claimed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L38
	movs	r1, r0
	@ sp needed
	movs	r0, r3
	bl	hw_is_claimed
	pop	{r4, pc}
.L39:
	.align	2
.L38:
	.word	claimed
	.size	spin_lock_is_claimed, .-spin_lock_is_claimed
	.section	.bss.claimed,"aw",%nobits
	.align	2
	.type	claimed, %object
	.size	claimed, 4
claimed:
	.space	4
	.section	.data.striped_spin_lock_num,"aw"
	.type	striped_spin_lock_num, %object
	.size	striped_spin_lock_num, 1
striped_spin_lock_num:
	.byte	16
	.ident	"GCC: (Arch Repository) 13.1.0"
