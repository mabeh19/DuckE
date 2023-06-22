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
	.file	"queue.c"
	.text
	.section	.text.queue_init_with_spinlock,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	queue_init_with_spinlock
	.syntax unified
	.code	16
	.thumb_func
	.type	queue_init_with_spinlock, %function
queue_init_with_spinlock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r6, r2
	@ sp needed
	movs	r5, r1
	movs	r1, r3
	movs	r4, r0
	bl	lock_init
	movs	r1, r5
	adds	r0, r6, #1
	bl	calloc
	movs	r3, #0
	strh	r6, [r4, #14]
	strh	r5, [r4, #12]
	str	r0, [r4, #4]
	str	r3, [r4, #8]
	pop	{r4, r5, r6, pc}
	.size	queue_init_with_spinlock, .-queue_init_with_spinlock
	.section	.text.queue_free,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	queue_free
	.syntax unified
	.code	16
	.thumb_func
	.type	queue_free, %function
queue_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, [r0, #4]
	bl	free
	@ sp needed
	pop	{r4, pc}
	.size	queue_free, .-queue_free
	.section	.text.queue_try_add,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	queue_try_add
	.syntax unified
	.code	16
	.thumb_func
	.type	queue_try_add, %function
queue_try_add:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r2, [r0]
	movs	r4, r0
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r5, PRIMASK
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
	ldrh	r0, [r4, #8]
	ldrh	r3, [r4, #10]
	ldrh	r2, [r4, #14]
	subs	r3, r0, r3
	bpl	.L7
	adds	r6, r2, #1
	adds	r3, r3, r6
.L7:
	cmp	r3, r2
	bne	.L14
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
	msr PRIMASK,r5
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #0
.L10:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L14:
	ldrh	r2, [r4, #12]
	ldr	r3, [r4, #4]
	muls	r0, r2
	adds	r0, r3, r0
	bl	memcpy
	movs	r2, #0
	movs	r0, r2
	ldrh	r3, [r4, #8]
	ldrh	r1, [r4, #14]
	adds	r3, r3, #1
	uxth	r3, r3
	cmp	r1, r3
	adcs	r0, r0, r2
	rsbs	r1, r0, #0
	ands	r3, r1
	strh	r3, [r4, #8]
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r5
@ 0 "" 2
@ 118 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #1
	b	.L10
	.size	queue_try_add, .-queue_try_add
	.section	.text.queue_try_remove,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	queue_try_remove
	.syntax unified
	.code	16
	.thumb_func
	.type	queue_try_remove, %function
queue_try_remove:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r0, r1
	ldr	r2, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r6, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L16:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L16
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldrh	r5, [r4, #10]
	ldrh	r3, [r4, #8]
	subs	r3, r3, r5
	bpl	.L17
	ldrh	r2, [r4, #14]
	adds	r2, r2, #1
	adds	r3, r3, r2
.L17:
	cmp	r3, #0
	bne	.L24
	ldr	r2, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r6
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #0
.L20:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L24:
	ldrh	r2, [r4, #12]
	ldr	r1, [r4, #4]
	muls	r5, r2
	adds	r1, r1, r5
	bl	memcpy
	movs	r2, #0
	movs	r0, r2
	ldrh	r3, [r4, #10]
	ldrh	r1, [r4, #14]
	adds	r3, r3, #1
	uxth	r3, r3
	cmp	r1, r3
	adcs	r0, r0, r2
	rsbs	r1, r0, #0
	ands	r3, r1
	strh	r3, [r4, #10]
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r6
@ 0 "" 2
@ 118 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #1
	b	.L20
	.size	queue_try_remove, .-queue_try_remove
	.section	.text.queue_try_peek,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	queue_try_peek
	.syntax unified
	.code	16
	.thumb_func
	.type	queue_try_peek, %function
queue_try_peek:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r0, r1
	ldr	r2, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r6, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L26:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L26
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldrh	r5, [r4, #10]
	ldrh	r3, [r4, #8]
	subs	r3, r3, r5
	bpl	.L27
	ldrh	r2, [r4, #14]
	adds	r2, r2, #1
	adds	r3, r3, r2
.L27:
	cmp	r3, #0
	bne	.L32
	ldr	r2, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r2]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r6
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #0
.L29:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L32:
	ldrh	r2, [r4, #12]
	ldr	r1, [r4, #4]
	muls	r5, r2
	adds	r1, r1, r5
	bl	memcpy
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
	msr PRIMASK,r6
@ 0 "" 2
@ 118 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #1
	b	.L29
	.size	queue_try_peek, .-queue_try_peek
	.section	.text.queue_add_blocking,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	queue_add_blocking
	.syntax unified
	.code	16
	.thumb_func
	.type	queue_add_blocking, %function
queue_add_blocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	movs	r7, #0
	b	.L39
.L44:
	ldrh	r2, [r4, #14]
	cmp	r3, r2
	bne	.L36
.L37:
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
	msr PRIMASK,r5
@ 0 "" 2
@ 128 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
.L39:
	ldr	r2, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r5, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L34:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L34
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldrh	r0, [r4, #8]
	ldrh	r3, [r4, #10]
	subs	r3, r0, r3
	bpl	.L44
	ldrh	r6, [r4, #14]
	adds	r2, r6, #1
	adds	r3, r2, r3
	cmp	r6, r3
	beq	.L37
.L36:
	ldrh	r2, [r4, #12]
	ldr	r3, [r4, #4]
	muls	r0, r2
	adds	r0, r3, r0
	bl	memcpy
	movs	r2, #0
	movs	r0, r2
	ldrh	r3, [r4, #8]
	ldrh	r1, [r4, #14]
	adds	r3, r3, #1
	uxth	r3, r3
	cmp	r1, r3
	adcs	r0, r0, r2
	rsbs	r1, r0, #0
	ands	r3, r1
	strh	r3, [r4, #8]
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r5
@ 0 "" 2
@ 118 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
	.size	queue_add_blocking, .-queue_add_blocking
	.section	.text.queue_remove_blocking,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	queue_remove_blocking
	.syntax unified
	.code	16
	.thumb_func
	.type	queue_remove_blocking, %function
queue_remove_blocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r0, r1
	movs	r1, #0
	b	.L51
.L47:
	cmp	r3, #0
	bne	.L48
.L49:
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r1, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r5
@ 0 "" 2
@ 128 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
.L51:
	ldr	r2, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r5, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L46:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L46
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldrh	r6, [r4, #10]
	ldrh	r3, [r4, #8]
	subs	r3, r3, r6
	bpl	.L47
	ldrh	r2, [r4, #14]
	adds	r2, r2, #1
	adds	r3, r2, r3
	cmp	r3, #0
	beq	.L49
.L48:
	ldrh	r2, [r4, #12]
	ldr	r1, [r4, #4]
	muls	r6, r2
	adds	r1, r1, r6
	bl	memcpy
	movs	r2, #0
	movs	r0, r2
	ldrh	r3, [r4, #10]
	ldrh	r1, [r4, #14]
	adds	r3, r3, #1
	uxth	r3, r3
	cmp	r1, r3
	adcs	r0, r0, r2
	rsbs	r1, r0, #0
	ands	r3, r1
	strh	r3, [r4, #10]
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r5
@ 0 "" 2
@ 118 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	queue_remove_blocking, .-queue_remove_blocking
	.section	.text.queue_peek_blocking,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	queue_peek_blocking
	.syntax unified
	.code	16
	.thumb_func
	.type	queue_peek_blocking, %function
queue_peek_blocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r0, r1
	movs	r1, #0
	b	.L64
.L61:
	cmp	r3, #0
	bne	.L62
.L63:
	ldr	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r1, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r5
@ 0 "" 2
@ 128 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
.L64:
	ldr	r2, [r4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r5, PRIMASK
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
	ldrh	r6, [r4, #10]
	ldrh	r3, [r4, #8]
	subs	r3, r3, r6
	bpl	.L61
	ldrh	r2, [r4, #14]
	adds	r2, r2, #1
	adds	r3, r2, r3
	cmp	r3, #0
	beq	.L63
.L62:
	ldrh	r2, [r4, #12]
	ldr	r1, [r4, #4]
	muls	r6, r2
	adds	r1, r1, r6
	bl	memcpy
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
	msr PRIMASK,r5
@ 0 "" 2
@ 118 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	queue_peek_blocking, .-queue_peek_blocking
	.ident	"GCC: (Arch Repository) 13.1.0"
