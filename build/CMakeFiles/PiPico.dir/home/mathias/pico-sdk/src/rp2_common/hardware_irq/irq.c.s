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
	.file	"irq.c"
	.text
	.section	.text.irq_set_enabled,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_set_enabled
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_set_enabled, %function
irq_set_enabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	lsls	r3, r3, r0
	cmp	r1, #0
	beq	.L2
	ldr	r2, .L5
	str	r3, [r2]
	ldr	r2, .L5+4
	str	r3, [r2]
.L1:
	@ sp needed
	bx	lr
.L2:
	ldr	r2, .L5+8
	str	r3, [r2]
	b	.L1
.L6:
	.align	2
.L5:
	.word	-536812928
	.word	-536813312
	.word	-536813184
	.size	irq_set_enabled, .-irq_set_enabled
	.section	.text.irq_is_enabled,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_is_enabled
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_is_enabled, %function
irq_is_enabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #1
	@ sp needed
	lsls	r2, r2, r0
	ldr	r3, .L8
	ldr	r3, [r3]
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	uxtb	r0, r3
	bx	lr
.L9:
	.align	2
.L8:
	.word	-536813312
	.size	irq_is_enabled, .-irq_is_enabled
	.section	.text.irq_set_mask_enabled,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_set_mask_enabled
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_set_mask_enabled, %function
irq_set_mask_enabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	beq	.L11
	ldr	r3, .L13
	str	r0, [r3]
	ldr	r3, .L13+4
	str	r0, [r3]
.L10:
	@ sp needed
	bx	lr
.L11:
	ldr	r3, .L13+8
	str	r0, [r3]
	b	.L10
.L14:
	.align	2
.L13:
	.word	-536812928
	.word	-536813312
	.word	-536813184
	.size	irq_set_mask_enabled, .-irq_set_mask_enabled
	.section	.text.irq_set_pending,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_set_pending
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_set_pending, %function
irq_set_pending:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	@ sp needed
	lsls	r3, r3, r0
	ldr	r2, .L16
	str	r3, [r2]
	bx	lr
.L17:
	.align	2
.L16:
	.word	-536813056
	.size	irq_set_pending, .-irq_set_pending
	.section	.text.irq_has_shared_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_has_shared_handler
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_has_shared_handler, %function
irq_has_shared_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L21
	adds	r0, r0, #16
	ldr	r3, [r3, #8]
	lsls	r0, r0, #2
	ldr	r3, [r0, r3]
	cmp	r3, #0
	beq	.L20
	ldr	r2, .L21+4
	movs	r0, #0
	subs	r3, r3, r2
	movs	r2, #47
	cmp	r2, r3
	adcs	r0, r0, r0
	uxtb	r0, r0
.L19:
	@ sp needed
	bx	lr
.L20:
	movs	r0, #0
	b	.L19
.L22:
	.align	2
.L21:
	.word	-536810240
	.word	irq_handler_chain_slots
	.size	irq_has_shared_handler, .-irq_has_shared_handler
	.section	.text.irq_get_vtable_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_get_vtable_handler
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_get_vtable_handler, %function
irq_get_vtable_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L24
	adds	r0, r0, #16
	ldr	r3, [r3, #8]
	lsls	r0, r0, #2
	ldr	r0, [r0, r3]
	@ sp needed
	bx	lr
.L25:
	.align	2
.L24:
	.word	-536810240
	.size	irq_get_vtable_handler, .-irq_get_vtable_handler
	.section	.text.irq_set_exclusive_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_set_exclusive_handler
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_set_exclusive_handler, %function
irq_set_exclusive_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
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
	ldr	r2, .L31
.L27:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L27
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L31+4
	adds	r0, r0, #16
	ldr	r3, [r3, #8]
	lsls	r4, r0, #2
	ldr	r3, [r3, r4]
	ldr	r2, .L31+8
	cmp	r3, r2
	beq	.L28
	cmp	r5, r3
	beq	.L28
	bl	hard_assertion_failure
.L28:
	ldr	r3, .L31+4
	ldr	r3, [r3, #8]
	str	r5, [r3, r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	ldr	r3, .L31
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r6
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, r5, r6, pc}
.L32:
	.align	2
.L31:
	.word	-805306076
	.word	-536810240
	.word	__unhandled_user_irq
	.size	irq_set_exclusive_handler, .-irq_set_exclusive_handler
	.section	.text.irq_get_exclusive_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_get_exclusive_handler
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_get_exclusive_handler, %function
irq_get_exclusive_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L40
.L34:
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L34
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r2, .L40+4
	adds	r0, r0, #16
	ldr	r2, [r2, #8]
	lsls	r0, r0, #2
	ldr	r0, [r0, r2]
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
	ldr	r3, .L40+8
	cmp	r0, r3
	beq	.L36
	movs	r3, #47
	ldr	r2, .L40+12
	subs	r2, r0, r2
	cmp	r3, r2
	sbcs	r3, r3, r3
	ands	r0, r3
.L33:
	@ sp needed
	bx	lr
.L36:
	movs	r0, #0
	b	.L33
.L41:
	.align	2
.L40:
	.word	-805306076
	.word	-536810240
	.word	__unhandled_user_irq
	.word	irq_handler_chain_slots
	.size	irq_get_exclusive_handler, .-irq_get_exclusive_handler
	.section	.text.irq_add_shared_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_add_shared_handler
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_add_shared_handler, %function
irq_add_shared_handler:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	lr, fp
	mov	r5, r8
	push	{r5, r6, r7, lr}
	sub	sp, sp, #20
	movs	r6, r0
	str	r1, [sp]
	movs	r7, r2
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs fp, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r2, .L62
.L43:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L43
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r5, #0
	ldr	r3, .L62+4
	ldrsb	r5, [r3, r5]
	mov	r10, r3
	cmp	r5, #0
	bge	.LCB312
	b	.L58	@long jump
.LCB312:
.L44:
	lsls	r3, r5, #1
	ldr	r4, .L62+8
	str	r3, [sp, #4]
	adds	r3, r3, r5
	lsls	r3, r3, #2
	mov	r8, r3
	mov	r9, r4
	add	r9, r9, r8
	mov	r3, r9
	mov	r2, r10
	ldrb	r3, [r3, #6]
	adds	r6, r6, #16
	strb	r3, [r2]
	ldr	r3, .L62+12
	lsls	r6, r6, #2
	ldr	r3, [r3, #8]
	ldr	r1, [r3, r6]
	subs	r3, r1, r4
	cmp	r3, #47
	bls	.L45
	ldr	r3, .L62+16
	cmp	r1, r3
	beq	.LCB336
	b	.L59	@long jump
.LCB336:
.L46:
	ldr	r3, [sp, #4]
	mov	r2, r8
	mov	ip, r3
	ldr	r3, .L62+20
	add	r5, r5, ip
	lsls	r5, r5, #2
	strh	r3, [r4, r5]
	ldr	r3, .L62+24
	adds	r2, r2, #2
	adds	r2, r4, r2
	subs	r3, r3, #4
	subs	r3, r3, r2
	lsls	r3, r3, #20
	ldr	r2, .L62+28
	lsrs	r3, r3, #21
	adds	r5, r4, r5
	orrs	r3, r2
	strh	r3, [r5, #2]
	ldr	r3, .L62+32
	movs	r1, #1
	strh	r3, [r5, #4]
	movs	r3, #255
	strb	r3, [r5, #6]
	ldr	r3, [sp]
	strb	r7, [r5, #7]
	str	r3, [r5, #8]
	mov	r3, r9
	orrs	r3, r1
	movs	r1, r3
.L47:
	ldr	r3, .L62+12
	ldr	r3, [r3, #8]
	str	r1, [r3, r6]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	ldr	r3, .L62
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,fp
@ 0 "" 2
	.thumb
	.syntax unified
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L45:
	movs	r0, #1
	movs	r2, r1
	bics	r2, r0
	ldrb	r3, [r2, #7]
	mov	ip, r1
	cmp	r3, r7
	bhi	.L50
	mov	r5, r8
	movs	r3, r2
	ldr	r1, .L62+36
	.syntax divided
@ 189 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 1
	.syntax unified
subs r3, r4
adcs r3, r3
muls r1, r3
lsrs r1, 20

@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L62+20
	strh	r3, [r4, r5]
	ldr	r3, .L62+24
	adds	r5, r5, #2
	adds	r5, r4, r5
	subs	r3, r3, #4
	subs	r3, r3, r5
	lsls	r3, r3, #20
	ldr	r5, .L62+28
	lsrs	r3, r3, #21
	orrs	r3, r5
	mov	r10, r5
	mov	r5, r9
	strh	r3, [r5, #2]
	movs	r5, #4
	mov	ip, r5
	mov	r5, r10
	add	r8, r8, ip
	subs	r3, r2, #4
	add	r4, r4, r8
	subs	r3, r3, r4
	lsls	r3, r3, #20
	lsrs	r3, r3, #21
	orrs	r5, r3
	mov	r3, r9
	strb	r1, [r3, #6]
	ldr	r1, [sp]
	strh	r5, [r3, #4]
	str	r1, [r3, #8]
	mov	r1, r9
	strb	r7, [r3, #7]
	ldr	r3, .L62+40
	orrs	r1, r0
	str	r3, [r2]
	b	.L47
.L61:
	lsls	r0, r3, #1
	adds	r0, r0, r3
	lsls	r0, r0, #2
	adds	r0, r4, r0
	ldrb	r1, [r0, #7]
	cmp	r1, r7
	bls	.L60
	movs	r2, r0
.L50:
	movs	r3, #6
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	bge	.L61
	str	r3, [sp, #8]
	ldr	r3, .L62+44
	mov	r1, ip
	str	r3, [sp, #12]
	adds	r3, r2, #4
	mov	r10, r3
.L49:
	movs	r3, #4
	rsbs	r3, r3, #0
	mov	ip, r3
	add	r9, r9, ip
	mov	r0, r10
	mov	r3, r9
	subs	r3, r3, r0
	lsls	r3, r3, #20
	lsrs	r3, r3, #21
	mov	ip, r3
	ldr	r3, .L62+28
	strb	r5, [r2, #6]
	mov	r8, r3
	mov	r3, ip
	mov	r0, r8
	orrs	r3, r0
	strh	r3, [r2, #4]
	ldr	r3, [sp, #4]
	adds	r2, r3, r5
	lsls	r2, r2, #2
	ldr	r3, [sp, #12]
	adds	r4, r4, r2
	strh	r3, [r4, #4]
	ldr	r3, [sp, #8]
	ldr	r2, .L62+40
	strb	r3, [r4, #6]
	ldr	r3, [sp]
	str	r2, [r4]
	strb	r7, [r4, #7]
	str	r3, [r4, #8]
	b	.L47
.L58:
	bl	hard_assertion_failure
	movs	r5, #0
	mov	r3, r10
	ldrsb	r5, [r3, r5]
	b	.L44
.L60:
	ldrh	r0, [r2, #4]
	str	r3, [sp, #8]
	lsls	r0, r0, #21
	adds	r3, r2, #4
	mov	r10, r3
	asrs	r3, r0, #20
	mov	r1, ip
	mov	ip, r3
	mov	r0, r8
	add	ip, ip, r10
	mov	r3, ip
	adds	r0, r0, #4
	adds	r0, r4, r0
	subs	r0, r3, r0
	movs	r3, #224
	lsls	r0, r0, #20
	lsrs	r0, r0, #21
	lsls	r3, r3, #8
	orrs	r0, r3
	str	r0, [sp, #12]
	b	.L49
.L59:
	bl	hard_assertion_failure
	b	.L46
.L63:
	.align	2
.L62:
	.word	-805306076
	.word	irq_hander_chain_free_slot_head
	.word	irq_handler_chain_slots
	.word	-536810240
	.word	__unhandled_user_irq
	.word	-24320
	.word	irq_handler_chain_first_slot
	.word	-8192
	.word	-17151
	.word	43690
	.word	1199589377
	.word	48385
	.size	irq_add_shared_handler, .-irq_add_shared_handler
	.section	.text.irq_remove_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_remove_handler
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_remove_handler, %function
irq_remove_handler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7, lr}
	movs	r4, r1
	sub	sp, sp, #12
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r8, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r2, .L101
.L65:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L65
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L101+4
	ldr	r1, .L101+8
	ldr	r2, [r3, #8]
	movs	r3, r0
	adds	r3, r3, #16
	lsls	r7, r3, #2
	ldr	r5, [r2, r7]
	cmp	r5, r1
	beq	.L66
	cmp	r5, r4
	beq	.L82
	ldr	r6, .L101+12
	subs	r2, r5, r6
	cmp	r2, #47
	bhi	.L66
	movs	r2, #1
	mov	r10, r2
	lsls	r2, r2, r0
	mov	r9, r2
	mov	r0, r9
	ldr	r2, .L101+16
	ldr	r2, [r2]
	ands	r0, r2
	str	r0, [sp, #4]
	mov	r0, r9
	ldr	r2, .L101+20
	str	r0, [r2]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
@ 407 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 1
	mrs r2, ipsr
@ 0 "" 2
	.thumb
	.syntax unified
	mov	fp, r2
	cmp	r2, #0
	beq	.L96
	cmp	r3, r2
	beq	.L95
	bl	hard_assertion_failure
.L95:
	movs	r2, r5
	mov	r3, r10
	bics	r2, r3
	ldr	r0, [r2, #8]
	cmp	r4, r0
	bne	.L74
	b	.L97
.L99:
	lsls	r3, r1, #1
	adds	r3, r3, r1
	lsls	r3, r3, #2
	adds	r3, r6, r3
	ldr	r0, [r3, #8]
	cmp	r0, r4
	beq	.L98
	movs	r2, r3
.L74:
	movs	r1, #6
	ldrsb	r1, [r2, r1]
	cmp	r1, #0
	bge	.L99
	cmp	r4, r0
	beq	.L100
.L77:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L79
	mov	r2, r9
	ldr	r3, .L101+24
	str	r2, [r3]
	ldr	r3, .L101+16
	str	r2, [r3]
.L66:
	ldr	r3, .L101+4
	ldr	r3, [r3, #8]
	str	r5, [r3, r7]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	ldr	r3, .L101
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r8
@ 0 "" 2
	.thumb
	.syntax unified
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L82:
	movs	r5, r1
	b	.L66
.L96:
	movs	r2, r5
	mov	r3, r10
	bics	r2, r3
	ldr	r0, [r2, #8]
	cmp	r4, r0
	bne	.L74
	movs	r0, #6
	ldrsb	r0, [r2, r0]
	movs	r3, r2
	cmp	r0, #0
	bge	.L69
	movs	r5, r1
	b	.L70
.L79:
	mov	r2, r9
	ldr	r3, .L101+20
	str	r2, [r3]
	b	.L66
.L98:
	movs	r0, #6
	ldrsb	r0, [r3, r0]
	cmp	r0, #0
	blt	.L81
.L69:
	lsls	r2, r0, #1
	adds	r1, r2, r0
	lsls	r1, r1, #2
	adds	r4, r6, r1
	mov	r10, r1
	ldr	r1, [r4, #8]
	str	r1, [r3, #8]
	ldrb	r1, [r4, #7]
	strb	r1, [r3, #7]
	movs	r1, #6
	ldrsb	r1, [r4, r1]
	strb	r1, [r3, #6]
	cmp	r1, #0
	blt	.L87
	ldrh	r4, [r4, #4]
	subs	r1, r6, r3
	lsls	r4, r4, #21
	asrs	r4, r4, #20
	add	r4, r4, r10
	adds	r1, r1, r4
	movs	r4, #224
	lsls	r1, r1, #20
	lsrs	r1, r1, #21
	lsls	r4, r4, #8
	orrs	r1, r4
.L76:
	strh	r1, [r3, #4]
	adds	r3, r2, r0
	ldr	r2, .L101+28
	lsls	r3, r3, #2
	ldrb	r1, [r2]
	adds	r3, r6, r3
	strb	r1, [r3, #6]
	strb	r0, [r2]
	b	.L77
.L100:
	movs	r3, r2
.L81:
	mov	r1, fp
	cmp	r1, #0
	bne	.L72
	adds	r1, r1, #255
	strb	r1, [r2, #6]
	ldr	r1, .L101+32
	strh	r1, [r2, #4]
.L70:
	ldr	r1, .L101+28
	ldrb	r2, [r1]
	strb	r2, [r3, #6]
	ldr	r2, .L101+36
	.syntax divided
@ 189 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 1
	.syntax unified
subs r3, r6
adcs r3, r3
muls r2, r3
lsrs r2, 20

@ 0 "" 2
	.thumb
	.syntax unified
	strb	r2, [r1]
	b	.L77
.L87:
	ldr	r1, .L101+40
	b	.L76
.L97:
	movs	r0, #6
	ldrsb	r0, [r2, r0]
	movs	r3, r2
	cmp	r0, #0
	bge	.L69
.L72:
	ldr	r2, .L101+44
	ldr	r1, .L101+48
	subs	r2, r2, r3
	subs	r2, r2, #8
	lsls	r0, r2, #9
	lsrs	r0, r0, #21
	orrs	r1, r0
	strh	r1, [r3, #4]
	ldr	r1, .L101+52
	lsrs	r2, r2, #1
	orrs	r2, r1
	strh	r2, [r3, #6]
	b	.L77
.L102:
	.align	2
.L101:
	.word	-805306076
	.word	-536810240
	.word	__unhandled_user_irq
	.word	irq_handler_chain_slots
	.word	-536813312
	.word	-536813184
	.word	-536812928
	.word	irq_hander_chain_free_slot_head
	.word	-17151
	.word	43690
	.word	48385
	.word	irq_handler_chain_remove_tail
	.word	-4096
	.word	-2048
	.size	irq_remove_handler, .-irq_remove_handler
	.section	.text.irq_set_priority,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_set_priority
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_set_priority, %function
irq_set_priority:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #3
	push	{r4, lr}
	movs	r4, r0
	@ sp needed
	ldr	r2, .L104
	ands	r0, r3
	mov	ip, r2
	lsls	r0, r0, #3
	bics	r4, r3
	adds	r3, r3, #252
	lsls	r3, r3, r0
	add	r4, r4, ip
	ldr	r2, [r4]
	lsls	r1, r1, r0
	bics	r2, r3
	movs	r3, r2
	orrs	r3, r1
	str	r3, [r4]
	pop	{r4, pc}
.L105:
	.align	2
.L104:
	.word	-536812544
	.size	irq_set_priority, .-irq_set_priority
	.section	.text.irq_get_priority,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_get_priority
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_get_priority, %function
irq_get_priority:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L107
	movs	r3, #3
	@ sp needed
	movs	r2, r0
	mov	ip, r1
	bics	r2, r3
	add	r2, r2, ip
	ldr	r2, [r2]
	ands	r3, r0
	lsls	r3, r3, #3
	lsrs	r2, r2, r3
	movs	r0, #255
	ands	r0, r2
	bx	lr
.L108:
	.align	2
.L107:
	.word	-536812544
	.size	irq_get_priority, .-irq_get_priority
	.section	.text.irq_add_tail_to_free_list,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_add_tail_to_free_list
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_add_tail_to_free_list, %function
irq_add_tail_to_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.syntax divided
@ 407 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 1
	mrs r1, ipsr
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r4, #1
	orrs	r4, r0
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs ip, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r2, .L120
.L110:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L110
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L120+4
	movs	r5, r0
	ldr	r2, .L120+8
	.syntax divided
@ 189 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 1
	.syntax unified
subs r5, r3
adcs r5, r5
muls r2, r5
lsrs r2, 20

@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r5, .L120+12
	lsls	r1, r1, #2
	ldr	r6, [r5, #8]
	sxtb	r2, r2
	ldr	r6, [r6, r1]
	cmp	r6, r4
	beq	.L119
	movs	r1, #6
	ldrsb	r1, [r3, r1]
	cmp	r1, r2
	beq	.L114
	movs	r1, #18
	ldrsb	r1, [r3, r1]
	cmp	r1, r2
	beq	.L115
	movs	r1, #30
	ldrsb	r1, [r3, r1]
	cmp	r1, r2
	beq	.L116
	movs	r1, #42
	ldrsb	r1, [r3, r1]
	movs	r4, #3
	cmp	r1, r2
	beq	.L113
.L112:
	ldr	r3, .L120+16
	ldrb	r1, [r3]
	strb	r2, [r3]
	strb	r1, [r0, #6]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #0
	ldr	r3, .L120
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,ip
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, r5, r6, pc}
.L119:
	ldr	r3, [r5, #8]
	ldr	r4, .L120+20
	str	r4, [r3, r1]
	b	.L112
.L114:
	movs	r4, #0
.L113:
	lsls	r1, r4, #1
	adds	r1, r1, r4
	lsls	r1, r1, #2
	adds	r3, r3, r1
	movs	r1, #255
	strb	r1, [r3, #6]
	ldr	r1, .L120+24
	strh	r1, [r3, #4]
	b	.L112
.L115:
	movs	r4, #1
	b	.L113
.L116:
	movs	r4, #2
	b	.L113
.L121:
	.align	2
.L120:
	.word	-805306076
	.word	irq_handler_chain_slots
	.word	43690
	.word	-536810240
	.word	irq_hander_chain_free_slot_head
	.word	__unhandled_user_irq
	.word	-17151
	.size	irq_add_tail_to_free_list, .-irq_add_tail_to_free_list
	.section	.text.irq_init_priorities,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	irq_init_priorities
	.syntax unified
	.code	16
	.thumb_func
	.type	irq_init_priorities, %function
irq_init_priorities:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L123
	ldr	r2, .L123+4
	@ sp needed
	str	r3, [r2]
	ldr	r2, .L123+8
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r3, [r2, #24]
	bx	lr
.L124:
	.align	2
.L123:
	.word	-2139062144
	.word	-536812544
	.word	-536812540
	.size	irq_init_priorities, .-irq_init_priorities
	.section	.rodata.user_irq_claim.str1.4,"aMS",%progbits,1
	.align	2
.LC16:
	.ascii	"User IRQ is already claimed\000"
	.section	.text.user_irq_claim,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	user_irq_claim
	.syntax unified
	.code	16
	.thumb_func
	.type	user_irq_claim, %function
user_irq_claim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, #31
	push	{r4, lr}
	subs	r1, r1, r0
	ldr	r2, .L126
	ldr	r0, .L126+4
	bl	hw_claim_or_assert
	@ sp needed
	pop	{r4, pc}
.L127:
	.align	2
.L126:
	.word	.LC16
	.word	user_irq_claimed
	.size	user_irq_claim, .-user_irq_claim
	.section	.text.user_irq_unclaim,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	user_irq_unclaim
	.syntax unified
	.code	16
	.thumb_func
	.type	user_irq_unclaim, %function
user_irq_unclaim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, #31
	push	{r4, lr}
	subs	r1, r1, r0
	ldr	r0, .L129
	bl	hw_claim_clear
	@ sp needed
	pop	{r4, pc}
.L130:
	.align	2
.L129:
	.word	user_irq_claimed
	.size	user_irq_unclaim, .-user_irq_unclaim
	.section	.rodata.user_irq_claim_unused.str1.4,"aMS",%progbits,1
	.align	2
.LC21:
	.ascii	"No user IRQs are available\000"
	.section	.text.user_irq_claim_unused,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	user_irq_claim_unused
	.syntax unified
	.code	16
	.thumb_func
	.type	user_irq_claim_unused, %function
user_irq_claim_unused:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L133
	ldr	r4, .L133+4
	sub	sp, sp, #8
	movs	r1, r0
	str	r3, [sp]
	movs	r2, #0
	movs	r3, #5
	movs	r0, r4
	bl	hw_claim_unused_from_range
	cmp	r0, #0
	blt	.L131
	movs	r3, #31
	subs	r0, r3, r0
.L131:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L134:
	.align	2
.L133:
	.word	.LC21
	.word	user_irq_claimed
	.size	user_irq_claim_unused, .-user_irq_claim_unused
	.section	.text.user_irq_is_claimed,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	user_irq_is_claimed
	.syntax unified
	.code	16
	.thumb_func
	.type	user_irq_is_claimed, %function
user_irq_is_claimed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, #31
	push	{r4, lr}
	subs	r1, r1, r0
	ldr	r0, .L136
	bl	hw_is_claimed
	@ sp needed
	pop	{r4, pc}
.L137:
	.align	2
.L136:
	.word	user_irq_claimed
	.size	user_irq_is_claimed, .-user_irq_is_claimed
	.section	.bss.irq_hander_chain_free_slot_head,"aw",%nobits
	.type	irq_hander_chain_free_slot_head, %object
	.size	irq_hander_chain_free_slot_head, 1
irq_hander_chain_free_slot_head:
	.space	1
	.section	.bss.user_irq_claimed,"aw",%nobits
	.type	user_irq_claimed, %object
	.size	user_irq_claimed, 1
user_irq_claimed:
	.space	1
	.ident	"GCC: (Arch Repository) 13.1.0"
