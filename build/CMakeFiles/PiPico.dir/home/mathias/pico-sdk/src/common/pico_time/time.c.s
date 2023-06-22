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
	.file	"time.c"
	.text
	.section	.text.timer_pool_entry_comparator,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	timer_pool_entry_comparator
	.syntax unified
	.code	16
	.thumb_func
	.type	timer_pool_entry_comparator, %function
timer_pool_entry_comparator:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #8]
	ldr	r0, .L6
	push	{r4, lr}
	mov	ip, r0
	add	r1, r1, ip
	add	r2, r2, ip
	lsls	r2, r2, #4
	lsls	r1, r1, #4
	adds	r1, r3, r1
	adds	r3, r3, r2
	ldr	r4, [r3, #4]
	ldr	r2, [r1, #4]
	movs	r0, #1
	cmp	r4, r2
	bhi	.L2
	beq	.L5
.L3:
	movs	r0, #0
.L2:
	@ sp needed
	uxtb	r0, r0
	pop	{r4, pc}
.L5:
	ldr	r2, [r3]
	ldr	r3, [r1]
	cmp	r2, r3
	bhi	.L2
	b	.L3
.L7:
	.align	2
.L6:
	.word	268435455
	.size	timer_pool_entry_comparator, .-timer_pool_entry_comparator
	.section	.text.repeating_timer_callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	repeating_timer_callback, %function
repeating_timer_callback:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r0, r1
	ldr	r3, [r1, #16]
	movs	r4, r1
	blx	r3
	cmp	r0, #0
	beq	.L9
	ldr	r0, [r4]
	ldr	r1, [r4, #4]
.L8:
	@ sp needed
	pop	{r4, pc}
.L9:
	str	r0, [r4, #12]
	movs	r1, #0
	movs	r0, #0
	b	.L8
	.size	repeating_timer_callback, .-repeating_timer_callback
	.section	.text.sleep_until_callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	sleep_until_callback, %function
sleep_until_callback:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L15
	ldr	r1, [r3]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r0, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L12:
	ldr	r2, [r1]
	cmp	r2, #0
	beq	.L12
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
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
	msr PRIMASK,r0
@ 0 "" 2
@ 118 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #0
	@ sp needed
	movs	r1, #0
	bx	lr
.L16:
	.align	2
.L15:
	.word	sleep_notifier
	.size	sleep_until_callback, .-sleep_until_callback
	.section	.rodata.alarm_pool_dump_key.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"%lld (hi %02x)\000"
	.section	.text.alarm_pool_dump_key,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_dump_key, %function
alarm_pool_dump_key:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L18
	push	{r4, r5, r6, lr}
	adds	r2, r0, r3
	ldr	r3, [r1, #8]
	lsls	r2, r2, #4
	adds	r3, r3, r2
	ldr	r4, [r3]
	ldr	r5, [r3, #4]
	ldr	r3, [r1, #12]
	ldr	r6, .L18+4
	adds	r3, r3, r0
	subs	r3, r3, #1
	ldrb	r3, [r3]
	sub	sp, sp, #8
	str	r3, [sp]
	movs	r2, r4
	movs	r3, r5
	movs	r0, r6
	bl	printf
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L19:
	.align	2
.L18:
	.word	268435455
	.word	.LC1
	.size	alarm_pool_dump_key, .-alarm_pool_dump_key
	.section	.text.add_alarm_under_lock.isra.0,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	add_alarm_under_lock.isra.0, %function
add_alarm_under_lock.isra.0:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r5, r8
	mov	r6, r9
	mov	lr, fp
	push	{r5, r6, r7, lr}
	mov	r8, r3
	add	r3, sp, #48
	ldrb	r4, [r3]
	add	r3, sp, #52
	ldrb	r3, [r3]
	movs	r7, r0
	mov	r9, r2
	mov	r10, r3
	ldr	r5, [r0]
	cmp	r4, #0
	bne	.L43
	ldrb	r4, [r5, #14]
	cmp	r4, #0
	beq	.L20
	lsls	r6, r4, #1
	ldr	r1, [r5]
	adds	r6, r6, r4
	subs	r6, r6, #3
	adds	r1, r1, r6
	ldrb	r3, [r1, #1]
	strb	r3, [r5, #14]
	cmp	r3, #0
	bne	.L25
	strb	r3, [r5, #15]
.L25:
	movs	r3, #0
	strb	r3, [r1, #2]
	strb	r3, [r1, #1]
	strb	r3, [r1]
.L22:
	ldr	r3, .L45
	adds	r2, r4, r3
	ldr	r3, [r7, #8]
	lsls	r2, r2, #4
	adds	r3, r3, r2
	mov	r2, r9
	str	r2, [r3]
	mov	r2, r8
	str	r2, [r3, #4]
	ldr	r2, [sp, #40]
	str	r2, [r3, #8]
	ldr	r2, [sp, #44]
	str	r2, [r3, #12]
	movs	r3, #0
	strb	r3, [r1, #2]
	strb	r3, [r1, #1]
	strb	r3, [r1]
	ldrb	r3, [r5, #13]
	mov	fp, r3
	cmp	r3, #0
	beq	.L42
	movs	r2, r4
	ldr	r3, [r5, #4]
	mov	r1, fp
	ldr	r0, [r5, #8]
	blx	r3
	mov	r3, fp
	lsls	r3, r3, #1
	add	r3, r3, fp
	ldr	r2, [r5]
	subs	r3, r3, #3
	cmp	r0, #0
	beq	.L28
	mov	r0, fp
	adds	r6, r2, r6
	strb	r0, [r6, #2]
	adds	r1, r2, r3
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L29
	strb	r3, [r6, #1]
.L29:
	mov	r3, fp
	strb	r4, [r1]
	strb	r3, [r5, #13]
	cmp	r4, fp
	beq	.L27
.L20:
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L28:
	adds	r3, r2, r3
	strb	r4, [r3, #2]
	adds	r1, r2, r6
	ldrb	r2, [r2, r6]
	cmp	r2, #0
	bne	.L30
	mov	r3, fp
	strb	r3, [r1]
.L42:
	strb	r4, [r5, #13]
.L27:
	mov	r2, r9
	mov	r3, r8
	ldrb	r0, [r7, #20]
	bl	hardware_alarm_set_target
	subs	r5, r0, #0
	bne	.L44
.L32:
	ldr	r3, [sp, #56]
	cmp	r3, #0
	beq	.L20
	strb	r5, [r3]
	b	.L20
.L43:
	lsls	r6, r4, #1
	ldr	r1, [r5]
	adds	r6, r6, r4
	subs	r6, r6, #3
	adds	r1, r1, r6
	b	.L22
.L44:
	mov	r3, r10
	cmp	r3, #0
	bne	.L32
	movs	r1, r4
	ldr	r0, [r7]
	bl	ph_remove_and_free_node
	b	.L32
.L30:
	strb	r2, [r3, #1]
	mov	r3, fp
	strb	r3, [r1]
	strb	r4, [r5, #13]
	b	.L27
.L46:
	.align	2
.L45:
	.word	268435455
	.size	add_alarm_under_lock.isra.0, .-add_alarm_under_lock.isra.0
	.section	.text.alarm_pool_alarm_callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_alarm_callback, %function
alarm_pool_alarm_callback:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	movs	r3, #0
	push	{r5, r6, r7, lr}
	sub	sp, sp, #44
	str	r3, [sp, #32]
	ldr	r3, .L91
	lsls	r2, r0, #2
	ldr	r4, [r2, r3]
	movs	r3, #0
	mov	fp, r3
	str	r0, [sp, #36]
.L67:
	bl	time_us_64
	movs	r2, r0
	movs	r3, r1
	ldr	r0, [r4, #4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r10, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r6, r10
.L48:
	ldr	r1, [r0]
	cmp	r1, #0
	beq	.L48
	mov	r10, r6
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r1, [r4]
	ldrb	r7, [r1, #13]
	mov	ip, r1
	cmp	r7, #0
	beq	.L68
	ldr	r5, [r4, #8]
	ldr	r1, .L91+4
	mov	r9, r5
	adds	r1, r7, r1
	lsls	r1, r1, #4
	add	r9, r9, r1
	mov	r1, r9
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	movs	r5, r0
	movs	r6, r1
	subs	r5, r5, r2
	sbcs	r6, r6, r3
	cmp	r6, #0
	ble	.L87
.L50:
	movs	r2, r0
	movs	r3, r1
	ldr	r0, [sp, #36]
	bl	hardware_alarm_set_target
	movs	r3, #0
	movs	r2, #0
	mov	r9, r3
	movs	r3, #0
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	movs	r3, #0
	mov	r8, r3
.L49:
	ldr	r3, [r4, #4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r2, fp
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r10
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r3, r8
	cmp	r3, #0
	bne	.L88
	cmp	r0, #0
	bne	.L67
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L68:
	movs	r3, #0
	movs	r2, #0
	mov	r9, r3
	movs	r3, #0
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	movs	r3, #0
	movs	r0, #0
	mov	r8, r3
	b	.L49
.L88:
	ldr	r3, [sp, #32]
	mov	r1, r9
	lsls	r0, r3, #8
	orrs	r0, r7
	blx	r8
	ldr	r2, [r4, #4]
	movs	r5, r0
	movs	r6, r1
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r10, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L53:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L53
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	cmp	r6, #0
	blt	.L89
	movs	r3, r5
	orrs	r3, r6
	beq	.L56
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L90
.L56:
	ldr	r3, [r4]
	ldrb	r1, [r3, #15]
	cmp	r1, #0
	beq	.L63
	ldr	r2, [r3]
	lsls	r0, r1, #1
	adds	r1, r0, r1
	adds	r2, r2, r1
	subs	r2, r2, #3
	strb	r7, [r2, #1]
.L63:
	ldrb	r2, [r3, #14]
	cmp	r2, #0
	bne	.L64
	strb	r7, [r3, #14]
.L64:
	strb	r7, [r3, #15]
	ldr	r2, [r4, #12]
	subs	r7, r7, #1
	ldrb	r3, [r2, r7]
	adds	r3, r3, #1
	strb	r3, [r2, r7]
.L59:
	mov	r3, fp
	str	r3, [r4, #16]
	ldr	r3, [r4, #4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r2, fp
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r10
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L67
.L87:
	cmp	r6, #0
	bne	.L69
	cmp	r5, #0
	bne	.L50
.L69:
	movs	r1, #0
	mov	r0, ip
	bl	ph_remove_head
	mov	r3, r9
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	mov	r3, r9
	ldr	r3, [r3, #8]
	mov	r8, r3
	mov	r3, r9
	ldr	r3, [r3, #12]
	mov	r9, r3
	ldr	r3, [r4, #12]
	adds	r3, r3, r7
	subs	r3, r3, #1
	ldrb	r3, [r3]
	str	r3, [sp, #32]
	lsls	r3, r3, #8
	orrs	r3, r0
	str	r3, [r4, #16]
	movs	r0, #0
	b	.L49
.L89:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L56
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	movs	r1, #128
	subs	r2, r2, r5
	sbcs	r3, r3, r6
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L61
	movs	r2, #1
	ldr	r3, .L91+8
	rsbs	r2, r2, #0
.L61:
	movs	r1, #0
	str	r1, [sp, #16]
	adds	r1, r1, #1
	str	r1, [sp, #12]
	mov	r1, r9
	str	r1, [sp, #4]
	mov	r1, r8
	movs	r0, r4
	str	r7, [sp, #8]
	str	r1, [sp]
	bl	add_alarm_under_lock.isra.0
	b	.L59
.L90:
	bl	time_us_64
	movs	r2, r5
	movs	r3, r6
	adds	r2, r2, r0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L61
	movs	r2, #1
	ldr	r3, .L91+8
	rsbs	r2, r2, #0
	b	.L61
.L92:
	.align	2
.L91:
	.word	pools
	.word	268435455
	.word	2147483647
	.size	alarm_pool_alarm_callback, .-alarm_pool_alarm_callback
	.section	.text.alarm_pool_init_default,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	alarm_pool_init_default
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_init_default, %function
alarm_pool_init_default:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L96
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L95
.L94:
	@ sp needed
	movs	r1, #10
	ldr	r0, .L96+4
	bl	lock_init
	pop	{r4, pc}
.L95:
	movs	r3, r4
	ldr	r2, .L96+8
	movs	r1, #16
	ldr	r0, [r4]
	bl	ph_post_alloc_init
	movs	r0, #3
	bl	hardware_alarm_claim
	movs	r0, #3
	bl	hardware_alarm_cancel
	movs	r0, #3
	ldr	r1, .L96+12
	bl	hardware_alarm_set_callback
	bl	next_striped_spin_lock_num
	ldr	r3, .L96+16
	mov	ip, r3
	movs	r3, #3
	strb	r3, [r4, #20]
	movs	r3, #208
	lsls	r3, r3, #24
	ldr	r3, [r3]
	add	r0, r0, ip
	strb	r3, [r4, #21]
	ldr	r3, .L96+20
	lsls	r0, r0, #2
	str	r0, [r4, #4]
	str	r4, [r3, #12]
	b	.L94
.L97:
	.align	2
.L96:
	.word	default_alarm_pool
	.word	sleep_notifier
	.word	timer_pool_entry_comparator
	.word	alarm_pool_alarm_callback
	.word	872415296
	.word	pools
	.size	alarm_pool_init_default, .-alarm_pool_init_default
	.section	.text.alarm_pool_get_default,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	alarm_pool_get_default
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_get_default, %function
alarm_pool_get_default:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L99
	@ sp needed
	bx	lr
.L100:
	.align	2
.L99:
	.word	default_alarm_pool
	.size	alarm_pool_get_default, .-alarm_pool_get_default
	.section	.text.alarm_pool_create,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	alarm_pool_create
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_create, %function
alarm_pool_create:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r0
	@ sp needed
	movs	r0, #24
	movs	r6, r1
	bl	malloc
	ldr	r1, .L102
	movs	r4, r0
	movs	r2, r0
	movs	r0, r6
	bl	ph_create
	movs	r1, #16
	str	r0, [r4]
	movs	r0, r6
	bl	calloc
	movs	r1, #1
	str	r0, [r4, #8]
	movs	r0, r6
	bl	calloc
	str	r0, [r4, #12]
	movs	r0, r5
	bl	hardware_alarm_claim
	movs	r0, r5
	bl	hardware_alarm_cancel
	movs	r0, r5
	ldr	r1, .L102+4
	bl	hardware_alarm_set_callback
	bl	next_striped_spin_lock_num
	ldr	r3, .L102+8
	strb	r5, [r4, #20]
	mov	ip, r3
	movs	r3, #208
	lsls	r3, r3, #24
	ldr	r3, [r3]
	add	r0, r0, ip
	strb	r3, [r4, #21]
	ldr	r3, .L102+12
	lsls	r5, r5, #2
	lsls	r0, r0, #2
	str	r0, [r4, #4]
	str	r4, [r5, r3]
	movs	r0, r4
	pop	{r4, r5, r6, pc}
.L103:
	.align	2
.L102:
	.word	timer_pool_entry_comparator
	.word	alarm_pool_alarm_callback
	.word	872415296
	.word	pools
	.size	alarm_pool_create, .-alarm_pool_create
	.section	.text.alarm_pool_create_with_unused_hardware_alarm,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	alarm_pool_create_with_unused_hardware_alarm
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_create_with_unused_hardware_alarm, %function
alarm_pool_create_with_unused_hardware_alarm:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r0
	@ sp needed
	movs	r0, #24
	bl	malloc
	ldr	r1, .L105
	movs	r4, r0
	movs	r2, r0
	movs	r0, r5
	bl	ph_create
	movs	r1, #16
	str	r0, [r4]
	movs	r0, r5
	bl	calloc
	movs	r1, #1
	str	r0, [r4, #8]
	movs	r0, r5
	bl	calloc
	str	r0, [r4, #12]
	movs	r0, #1
	bl	hardware_alarm_claim_unused
	movs	r5, r0
	bl	hardware_alarm_cancel
	movs	r0, r5
	ldr	r1, .L105+4
	bl	hardware_alarm_set_callback
	bl	next_striped_spin_lock_num
	ldr	r3, .L105+8
	strb	r5, [r4, #20]
	mov	ip, r3
	movs	r3, #208
	lsls	r3, r3, #24
	ldr	r3, [r3]
	add	r0, r0, ip
	strb	r3, [r4, #21]
	ldr	r3, .L105+12
	lsls	r5, r5, #2
	lsls	r0, r0, #2
	str	r0, [r4, #4]
	str	r4, [r5, r3]
	movs	r0, r4
	pop	{r4, r5, r6, pc}
.L106:
	.align	2
.L105:
	.word	timer_pool_entry_comparator
	.word	alarm_pool_alarm_callback
	.word	872415296
	.word	pools
	.size	alarm_pool_create_with_unused_hardware_alarm, .-alarm_pool_create_with_unused_hardware_alarm
	.section	.text.alarm_pool_destroy,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	alarm_pool_destroy
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_destroy, %function
alarm_pool_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L109
	push	{r4, lr}
	movs	r4, r0
	cmp	r0, r3
	beq	.L107
	movs	r1, #0
	ldrb	r2, [r0, #20]
	ldr	r3, .L109+4
	lsls	r2, r2, #2
	ldr	r0, [r0]
	str	r1, [r2, r3]
	bl	ph_destroy
	movs	r1, #0
	ldrb	r0, [r4, #20]
	bl	hardware_alarm_set_callback
	ldrb	r0, [r4, #20]
	bl	hardware_alarm_unclaim
	ldr	r0, [r4, #12]
	bl	free
	ldr	r0, [r4, #8]
	bl	free
	movs	r0, r4
	bl	free
.L107:
	@ sp needed
	pop	{r4, pc}
.L110:
	.align	2
.L109:
	.word	default_alarm_pool
	.word	pools
	.size	alarm_pool_destroy, .-alarm_pool_destroy
	.section	.text.alarm_pool_add_alarm_at,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	alarm_pool_add_alarm_at
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_add_alarm_at, %function
alarm_pool_add_alarm_at:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	mov	lr, fp
	push	{r5, r6, r7, lr}
	sub	sp, sp, #20
	str	r3, [sp, #4]
	add	r3, sp, #64
	ldrb	r3, [r3]
	movs	r6, r0
	str	r3, [sp, #12]
	movs	r3, #0
	mov	r10, r3
	mov	r8, r3
	str	r2, [sp]
.L112:
	ldr	r2, [r6, #4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs fp, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L113:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L113
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r5, [r6]
	ldrb	r4, [r5, #14]
	cmp	r4, #0
	bne	.LCB866
	b	.L114	@long jump
.LCB866:
	lsls	r7, r4, #1
	ldr	r3, [r5]
	adds	r7, r7, r4
	subs	r7, r7, #3
	adds	r3, r3, r7
	ldrb	r2, [r3, #1]
	strb	r2, [r5, #14]
	cmp	r2, #0
	bne	.L115
	strb	r2, [r5, #15]
.L115:
	ldr	r2, .L149
	adds	r1, r4, r2
	ldr	r2, [r6, #8]
	lsls	r1, r1, #4
	adds	r2, r2, r1
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	str	r0, [r2]
	str	r1, [r2, #4]
	ldr	r1, [sp, #56]
	str	r1, [r2, #8]
	ldr	r1, [sp, #60]
	str	r1, [r2, #12]
	mov	r2, r8
	strb	r2, [r3, #2]
	strb	r2, [r3, #1]
	strb	r2, [r3]
	ldrb	r3, [r5, #13]
	mov	r9, r3
	cmp	r3, #0
	beq	.L147
	movs	r2, r4
	ldr	r3, [r5, #4]
	mov	r1, r9
	ldr	r0, [r5, #8]
	blx	r3
	mov	r3, r9
	lsls	r3, r3, #1
	add	r3, r3, r9
	ldr	r2, [r5]
	subs	r3, r3, #3
	cmp	r0, #0
	beq	.L117
	mov	r0, r9
	adds	r7, r2, r7
	strb	r0, [r7, #2]
	adds	r1, r2, r3
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L118
	strb	r3, [r7, #1]
.L118:
	mov	r3, r9
	strb	r4, [r1]
	strb	r3, [r5, #13]
	cmp	r4, r9
	beq	.L120
.L121:
	ldr	r3, [r6, #12]
	adds	r3, r3, r4
	subs	r3, r3, #1
	ldrb	r0, [r3]
	ldr	r3, [r6, #4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r2, r8
	str	r2, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,fp
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r3, r10
	cmp	r3, #0
	bne	.L148
	lsls	r0, r0, #8
	orrs	r0, r4
.L111:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L148:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L125
	ldr	r3, [sp, #56]
	movs	r0, #0
	ldr	r1, [sp, #60]
	blx	r3
	movs	r3, r0
	orrs	r3, r1
	beq	.L125
	movs	r4, r0
	subs	r5, r1, #0
	bge	.L127
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	subs	r2, r2, r4
	sbcs	r3, r3, r5
	str	r2, [sp]
	str	r3, [sp, #4]
	movs	r2, #128
	lsls	r2, r2, #24
	cmp	r3, r2
	bcc	.L131
.L145:
	movs	r3, #1
	ldr	r4, .L149+4
	rsbs	r3, r3, #0
	str	r3, [sp]
	str	r4, [sp, #4]
.L131:
	ldr	r3, [sp, #12]
	mov	r10, r3
	b	.L112
.L114:
	ldr	r3, [r6, #4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r4, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,fp
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #1
	rsbs	r0, r0, #0
	b	.L111
.L127:
	bl	time_us_64
	movs	r2, #128
	adds	r0, r0, r4
	adcs	r1, r1, r5
	lsls	r2, r2, #24
	str	r0, [sp]
	str	r1, [sp, #4]
	cmp	r1, r2
	bcc	.L131
	b	.L145
.L117:
	adds	r3, r2, r3
	strb	r4, [r3, #2]
	adds	r1, r2, r7
	ldrb	r2, [r2, r7]
	cmp	r2, #0
	beq	.L146
	strb	r2, [r3, #1]
.L146:
	mov	r3, r9
	strb	r3, [r1]
.L147:
	strb	r4, [r5, #13]
.L120:
	ldrb	r0, [r6, #20]
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	bl	hardware_alarm_set_target
	mov	r10, r0
	cmp	r0, #0
	beq	.L121
	movs	r1, r4
	ldr	r0, [r6]
	bl	ph_remove_and_free_node
	b	.L121
.L125:
	movs	r0, #0
	b	.L111
.L150:
	.align	2
.L149:
	.word	268435455
	.word	2147483647
	.size	alarm_pool_add_alarm_at, .-alarm_pool_add_alarm_at
	.section	.text.alarm_pool_add_alarm_at_force_in_context,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	alarm_pool_add_alarm_at_force_in_context
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_add_alarm_at_force_in_context, %function
alarm_pool_add_alarm_at_force_in_context:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	lr, fp
	mov	r5, r8
	mov	r10, r2
	push	{r5, r6, r7, lr}
	movs	r4, r0
	mov	r9, r3
	ldr	r2, [r0, #4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r7, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L152:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L152
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r6, [r4]
	ldrb	r5, [r6, #14]
	cmp	r5, #0
	beq	.L153
	lsls	r3, r5, #1
	adds	r3, r3, r5
	subs	r3, r3, #3
	mov	r8, r3
	ldr	r1, [r6]
	add	r1, r1, r8
	ldrb	r3, [r1, #1]
	strb	r3, [r6, #14]
	cmp	r3, #0
	bne	.L154
	strb	r3, [r6, #15]
.L154:
	ldr	r3, .L175
	adds	r2, r5, r3
	ldr	r3, [r4, #8]
	lsls	r2, r2, #4
	adds	r3, r3, r2
	mov	r2, r10
	str	r2, [r3]
	mov	r2, r9
	str	r2, [r3, #4]
	ldr	r2, [sp, #40]
	str	r2, [r3, #8]
	ldr	r2, [sp, #44]
	str	r2, [r3, #12]
	movs	r3, #0
	strb	r3, [r1, #2]
	strb	r3, [r1, #1]
	strb	r3, [r1]
	ldrb	r3, [r6, #13]
	mov	fp, r3
	cmp	r3, #0
	beq	.L173
	movs	r2, r5
	ldr	r3, [r6, #4]
	mov	r1, fp
	ldr	r0, [r6, #8]
	blx	r3
	mov	r3, fp
	lsls	r3, r3, #1
	add	r3, r3, fp
	ldr	r2, [r6]
	subs	r3, r3, #3
	cmp	r0, #0
	beq	.L156
	adds	r1, r2, r3
	mov	r0, r8
	mov	ip, r1
	mov	r1, fp
	adds	r0, r2, r0
	strb	r1, [r0, #2]
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L157
	strb	r3, [r0, #1]
.L157:
	mov	r3, ip
	strb	r5, [r3]
	mov	r3, fp
	movs	r0, #0
	strb	r3, [r6, #13]
	cmp	r5, fp
	bne	.L160
	b	.L159
.L153:
	ldr	r3, [r4, #4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r5, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r7
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #1
	rsbs	r0, r0, #0
.L151:
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L156:
	mov	r1, r8
	mov	r0, r8
	adds	r3, r2, r3
	strb	r5, [r3, #2]
	adds	r1, r2, r1
	ldrb	r2, [r2, r0]
	cmp	r2, #0
	beq	.L172
	strb	r2, [r3, #1]
.L172:
	mov	r3, fp
	strb	r3, [r1]
.L173:
	strb	r5, [r6, #13]
.L159:
	mov	r2, r10
	mov	r3, r9
	ldrb	r0, [r4, #20]
	bl	hardware_alarm_set_target
.L160:
	ldr	r3, [r4, #12]
	adds	r3, r3, r5
	subs	r3, r3, #1
	ldrb	r6, [r3]
	ldr	r3, [r4, #4]
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
	msr PRIMASK,r7
@ 0 "" 2
	.thumb
	.syntax unified
	cmp	r0, #0
	bne	.L174
.L162:
	lsls	r0, r6, #8
	orrs	r0, r5
	b	.L151
.L174:
	ldrb	r0, [r4, #20]
	bl	hardware_alarm_force_irq
	b	.L162
.L176:
	.align	2
.L175:
	.word	268435455
	.size	alarm_pool_add_alarm_at_force_in_context, .-alarm_pool_add_alarm_at_force_in_context
	.section	.text.alarm_pool_cancel_alarm,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	alarm_pool_cancel_alarm
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_cancel_alarm, %function
alarm_pool_cancel_alarm:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r3, r1
	movs	r4, r0
	ldr	r1, [r0, #4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r5, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L178:
	ldr	r2, [r1]
	cmp	r2, #0
	beq	.L178
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #255
	ldr	r0, [r4]
	uxtb	r1, r3
	ldrb	r6, [r0, #13]
	ands	r2, r3
	cmp	r6, r1
	beq	.L179
	ldr	r6, [r0]
	lsls	r7, r2, #1
	adds	r7, r7, r2
	adds	r6, r6, r7
	subs	r6, r6, #3
	ldrb	r6, [r6, #2]
	cmp	r6, #0
	beq	.L185
.L179:
	ldr	r6, [r4, #12]
	lsrs	r3, r3, #8
	adds	r2, r6, r2
	subs	r2, r2, #1
	ldrb	r2, [r2]
	uxtb	r3, r3
	cmp	r2, r3
	beq	.L186
.L181:
	movs	r0, #0
.L182:
	ldr	r3, [r4, #4]
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
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L185:
	ldr	r2, [r4, #16]
	cmp	r2, r3
	bne	.L181
	str	r6, [r4, #16]
	b	.L181
.L186:
	bl	ph_remove_and_free_node
	b	.L182
	.size	alarm_pool_cancel_alarm, .-alarm_pool_cancel_alarm
	.section	.text.alarm_pool_hardware_alarm_num,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	alarm_pool_hardware_alarm_num
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_hardware_alarm_num, %function
alarm_pool_hardware_alarm_num:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #20]
	@ sp needed
	bx	lr
	.size	alarm_pool_hardware_alarm_num, .-alarm_pool_hardware_alarm_num
	.section	.text.alarm_pool_core_num,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	alarm_pool_core_num
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_core_num, %function
alarm_pool_core_num:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #21]
	@ sp needed
	bx	lr
	.size	alarm_pool_core_num, .-alarm_pool_core_num
	.section	.text.alarm_pool_add_repeating_timer_us,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	alarm_pool_add_repeating_timer_us
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_add_repeating_timer_us, %function
alarm_pool_add_repeating_timer_us:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	lr, fp
	mov	r5, r8
	movs	r1, r2
	push	{r5, r6, r7, lr}
	sub	sp, sp, #20
	movs	r6, r0
	mov	ip, r3
	ldr	r7, [sp, #64]
	orrs	r1, r3
	bne	.LCB1346
	b	.L214	@long jump
.LCB1346:
	mov	r1, ip
	asrs	r3, r3, #31
	str	r3, [sp, #4]
	str	r3, [sp]
	eors	r3, r2
	movs	r4, r3
	ldr	r3, [sp, #4]
	eors	r3, r1
	movs	r5, r3
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	subs	r4, r4, r0
	sbcs	r5, r5, r1
.L190:
	mov	r3, ip
	ldr	r1, [sp, #56]
	str	r3, [r7, #4]
	ldr	r3, [sp, #60]
	str	r6, [r7, #8]
	str	r3, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7]
	bl	time_us_64
	movs	r3, #128
	adds	r0, r0, r4
	adcs	r1, r1, r5
	lsls	r3, r3, #24
	str	r0, [sp]
	str	r1, [sp, #4]
	cmp	r1, r3
	bcc	.L192
	movs	r3, #1
	ldr	r4, .L229
	rsbs	r3, r3, #0
	str	r3, [sp]
	str	r4, [sp, #4]
.L192:
	movs	r3, #0
	mov	r8, r3
	ldr	r3, .L229+4
	str	r7, [sp, #64]
	str	r3, [sp, #12]
	movs	r3, #0
	mov	r9, r3
	ldr	r3, [sp, #64]
	movs	r7, r6
	mov	r6, r8
	mov	r8, r3
.L194:
	ldr	r2, [r7, #4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs fp, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L195:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L195
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r5, [r7]
	ldrb	r4, [r5, #14]
	cmp	r4, #0
	bne	.LCB1410
	b	.L196	@long jump
.LCB1410:
	lsls	r3, r4, #1
	adds	r3, r3, r4
	subs	r3, r3, #3
	movs	r2, r3
	mov	ip, r2
	str	r3, [sp, #8]
	ldr	r3, [r5]
	add	r3, r3, ip
	ldrb	r2, [r3, #1]
	strb	r2, [r5, #14]
	cmp	r2, #0
	bne	.L197
	strb	r2, [r5, #15]
.L197:
	ldr	r2, .L229+8
	adds	r1, r4, r2
	ldr	r2, [r7, #8]
	lsls	r1, r1, #4
	adds	r2, r2, r1
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	str	r0, [r2]
	str	r1, [r2, #4]
	ldr	r1, [sp, #12]
	str	r1, [r2, #8]
	mov	r1, r8
	str	r1, [r2, #12]
	mov	r2, r9
	strb	r2, [r3, #2]
	strb	r2, [r3, #1]
	strb	r2, [r3]
	ldrb	r3, [r5, #13]
	mov	r10, r3
	cmp	r3, #0
	bne	.LCB1444
	b	.L228	@long jump
.LCB1444:
	movs	r2, r4
	ldr	r3, [r5, #4]
	mov	r1, r10
	ldr	r0, [r5, #8]
	blx	r3
	mov	r3, r10
	lsls	r3, r3, #1
	add	r3, r3, r10
	ldr	r2, [r5]
	subs	r3, r3, #3
	cmp	r0, #0
	beq	.L199
	adds	r1, r2, r3
	mov	ip, r1
	mov	r1, r10
	ldr	r0, [sp, #8]
	adds	r0, r2, r0
	strb	r1, [r0, #2]
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L200
	strb	r3, [r0, #1]
.L200:
	mov	r3, ip
	strb	r4, [r3]
	mov	r3, r10
	strb	r3, [r5, #13]
	movs	r5, r6
	cmp	r4, r10
	beq	.L202
.L203:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	adds	r3, r3, r4
	subs	r3, r3, #1
	ldrb	r3, [r3]
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
	msr PRIMASK,fp
@ 0 "" 2
	.thumb
	.syntax unified
	cmp	r5, #0
	bne	.L205
	mov	r7, r8
	lsls	r3, r3, #8
	orrs	r3, r4
	adds	r5, r5, #1
.L204:
	movs	r0, r5
	str	r3, [r7, #12]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L205:
	mov	r3, r8
	mov	r0, r8
	ldr	r3, [r3, #16]
	blx	r3
	subs	r6, r0, #0
	beq	.L216
	mov	r3, r8
	ldmia	r3, {r2, r3}
	movs	r0, r2
	orrs	r0, r3
	beq	.L217
	movs	r4, r2
	subs	r5, r3, #0
	bge	.L207
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	subs	r2, r2, r4
	sbcs	r3, r3, r5
	str	r2, [sp]
	str	r3, [sp, #4]
	movs	r2, #128
	lsls	r2, r2, #24
	cmp	r3, r2
	bcs	.LCB1537
	b	.L194	@long jump
.LCB1537:
.L226:
	movs	r3, #1
	ldr	r4, .L229
	rsbs	r3, r3, #0
	str	r3, [sp]
	str	r4, [sp, #4]
	b	.L194
.L196:
	movs	r6, r7
	mov	r7, r8
	ldr	r3, [r6, #4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r4, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,fp
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r3, #1
	movs	r5, #0
	rsbs	r3, r3, #0
	b	.L204
.L216:
	mov	r7, r8
	movs	r3, #0
	b	.L204
.L207:
	bl	time_us_64
	movs	r2, #128
	adds	r0, r0, r4
	adcs	r1, r1, r5
	lsls	r2, r2, #24
	str	r0, [sp]
	str	r1, [sp, #4]
	cmp	r1, r2
	bcs	.LCB1573
	b	.L194	@long jump
.LCB1573:
	b	.L226
.L199:
	ldr	r0, [sp, #8]
	adds	r3, r2, r3
	strb	r4, [r3, #2]
	adds	r1, r2, r0
	ldrb	r2, [r2, r0]
	cmp	r2, #0
	beq	.L227
	strb	r2, [r3, #1]
.L227:
	mov	r3, r10
	strb	r3, [r1]
.L228:
	strb	r4, [r5, #13]
.L202:
	ldrb	r0, [r7, #20]
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	bl	hardware_alarm_set_target
	subs	r5, r0, #0
	beq	.L203
	movs	r1, r4
	ldr	r0, [r7]
	bl	ph_remove_and_free_node
	b	.L203
.L214:
	movs	r3, #0
	movs	r4, #1
	movs	r5, #0
	movs	r2, #1
	mov	ip, r3
	b	.L190
.L217:
	mov	r7, r8
	movs	r5, r6
	movs	r3, #0
	b	.L204
.L230:
	.align	2
.L229:
	.word	2147483647
	.word	repeating_timer_callback
	.word	268435455
	.size	alarm_pool_add_repeating_timer_us, .-alarm_pool_add_repeating_timer_us
	.section	.text.cancel_repeating_timer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	cancel_repeating_timer
	.syntax unified
	.code	16
	.thumb_func
	.type	cancel_repeating_timer, %function
cancel_repeating_timer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	ldr	r3, [r0, #12]
	movs	r4, r0
	push	{lr}
	movs	r0, #0
	cmp	r3, #0
	bne	.L242
.L232:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L242:
	ldr	r5, [r4, #8]
	ldr	r1, [r5, #4]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r6, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L233:
	ldr	r2, [r1]
	cmp	r2, #0
	beq	.L233
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r2, #255
	ldr	r0, [r5]
	uxtb	r1, r3
	ldrb	r7, [r0, #13]
	ands	r2, r3
	cmp	r7, r1
	beq	.L234
	ldr	r7, [r0]
	mov	r8, r7
	lsls	r7, r2, #1
	mov	ip, r7
	mov	r7, r8
	add	ip, ip, r2
	add	r7, r7, ip
	subs	r7, r7, #3
	ldrb	r7, [r7, #2]
	cmp	r7, #0
	beq	.L243
.L234:
	ldr	r7, [r5, #12]
	lsrs	r3, r3, #8
	adds	r2, r7, r2
	subs	r2, r2, #1
	ldrb	r2, [r2]
	uxtb	r3, r3
	cmp	r2, r3
	beq	.L244
.L236:
	movs	r0, #0
.L237:
	ldr	r2, [r5, #4]
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
	msr PRIMASK,r6
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r4, #12]
	b	.L232
.L243:
	ldr	r2, [r5, #16]
	cmp	r3, r2
	bne	.L236
	str	r7, [r5, #16]
	b	.L236
.L244:
	bl	ph_remove_and_free_node
	b	.L237
	.size	cancel_repeating_timer, .-cancel_repeating_timer
	.section	.text.alarm_pool_dump,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	alarm_pool_dump
	.syntax unified
	.code	16
	.thumb_func
	.type	alarm_pool_dump, %function
alarm_pool_dump:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r2, [r0, #4]
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
.L246:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L246
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r1, .L249
	movs	r2, r4
	ldr	r0, [r4]
	bl	ph_dump
	ldr	r3, [r4, #4]
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
	@ sp needed
	pop	{r4, r5, r6, pc}
.L250:
	.align	2
.L249:
	.word	alarm_pool_dump_key
	.size	alarm_pool_dump, .-alarm_pool_dump
	.section	.text.sleep_until,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sleep_until
	.syntax unified
	.code	16
	.thumb_func
	.type	sleep_until, %function
sleep_until:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r4, r0
	movs	r5, r1
	movs	r6, #6
	rsbs	r6, r6, #0
	asrs	r7, r6, #31
	mov	lr, r8
	adds	r6, r6, r4
	adcs	r7, r7, r5
	push	{lr}
	sub	sp, sp, #16
	cmp	r7, r1
	bhi	.L261
	beq	.L265
.L252:
	bl	time_us_64
	movs	r2, r6
	movs	r3, r7
	subs	r2, r2, r0
	sbcs	r3, r3, r1
	cmp	r3, #0
	bgt	.L254
.L267:
	cmp	r3, #0
	beq	.L266
.L256:
	movs	r0, r4
	movs	r1, r5
	bl	busy_wait_until
	add	sp, sp, #16
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L265:
	cmp	r6, r0
	bls	.L252
.L261:
	movs	r6, #0
	movs	r7, #0
	bl	time_us_64
	movs	r2, r6
	movs	r3, r7
	subs	r2, r2, r0
	sbcs	r3, r3, r1
	cmp	r3, #0
	ble	.L267
.L254:
	movs	r3, #0
	str	r3, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, .L268
	movs	r2, r6
	str	r3, [sp]
	ldr	r0, .L268+4
	movs	r3, r7
	bl	alarm_pool_add_alarm_at
	cmp	r0, #0
	blt	.L256
	movs	r3, #0
	mov	r8, r3
	mov	ip, r7
	ldr	r2, .L268+8
	ldr	r7, .L268+12
.L257:
	ldr	r3, [r7, #36]
	cmp	ip, r3
	bhi	.L260
	ldr	r1, [r7, #40]
	cmp	r6, r1
	bls	.L256
	cmp	ip, r3
	bne	.L256
.L260:
	ldr	r1, [r2]
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r0, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L258:
	ldr	r3, [r1]
	cmp	r3, #0
	beq	.L258
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, [r2]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r1, r8
	str	r1, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r0
@ 0 "" 2
@ 128 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L257
.L266:
	cmp	r2, #0
	beq	.L256
	b	.L254
.L269:
	.align	2
.L268:
	.word	sleep_until_callback
	.word	default_alarm_pool
	.word	sleep_notifier
	.word	1074085888
	.size	sleep_until, .-sleep_until
	.section	.text.sleep_us,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sleep_us
	.syntax unified
	.code	16
	.thumb_func
	.type	sleep_us, %function
sleep_us:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r5, r1
	bl	time_us_64
	movs	r3, #128
	adds	r0, r0, r4
	adcs	r1, r1, r5
	lsls	r3, r3, #24
	cmp	r1, r3
	bcc	.L271
	movs	r0, #1
	ldr	r1, .L273
	rsbs	r0, r0, #0
.L271:
	bl	sleep_until
	@ sp needed
	pop	{r4, r5, r6, pc}
.L274:
	.align	2
.L273:
	.word	2147483647
	.size	sleep_us, .-sleep_us
	.global	__aeabi_lmul
	.section	.text.sleep_ms,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sleep_ms
	.syntax unified
	.code	16
	.thumb_func
	.type	sleep_ms, %function
sleep_ms:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r6, r0
	bl	time_us_64
	movs	r2, #250
	movs	r4, r0
	movs	r5, r1
	movs	r3, #0
	movs	r0, r6
	movs	r1, #0
	lsls	r2, r2, #2
	bl	__aeabi_lmul
	movs	r3, #128
	adds	r0, r0, r4
	adcs	r1, r1, r5
	lsls	r3, r3, #24
	cmp	r1, r3
	bcc	.L276
	movs	r0, #1
	ldr	r1, .L278
	rsbs	r0, r0, #0
.L276:
	bl	sleep_until
	@ sp needed
	pop	{r4, r5, r6, pc}
.L279:
	.align	2
.L278:
	.word	2147483647
	.size	sleep_ms, .-sleep_ms
	.section	.text.best_effort_wfe_or_timeout,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	best_effort_wfe_or_timeout
	.syntax unified
	.code	16
	.thumb_func
	.type	best_effort_wfe_or_timeout, %function
best_effort_wfe_or_timeout:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.syntax divided
@ 407 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 1
	mrs r3, ipsr
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r5, r0
	movs	r4, r1
	sub	sp, sp, #16
	cmp	r3, #0
	beq	.L281
.L296:
	ldr	r2, .L299
	movs	r0, #0
	ldr	r3, [r2, #36]
	cmp	r3, r4
	bcc	.L283
	ldr	r2, [r2, #40]
	adds	r0, r0, #1
	cmp	r2, r5
	bcc	.L298
.L283:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L298:
	subs	r3, r3, r4
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	uxtb	r0, r3
	b	.L283
.L281:
	ldr	r6, .L299+4
	str	r3, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, .L299+8
	movs	r2, r0
	str	r3, [sp]
	movs	r0, r6
	movs	r3, r1
	bl	alarm_pool_add_alarm_at
	subs	r1, r0, #0
	ble	.L296
	.syntax divided
@ 128 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, r6
	bl	alarm_pool_cancel_alarm
	b	.L296
.L300:
	.align	2
.L299:
	.word	1074085888
	.word	default_alarm_pool
	.word	sleep_until_callback
	.size	best_effort_wfe_or_timeout, .-best_effort_wfe_or_timeout
	.section	.bss.pools,"aw",%nobits
	.align	2
	.type	pools, %object
	.size	pools, 16
pools:
	.space	16
	.section	.data.default_alarm_pool,"aw"
	.align	2
	.type	default_alarm_pool, %object
	.size	default_alarm_pool, 24
default_alarm_pool:
	.word	default_alarm_pool_heap
	.space	4
	.word	default_alarm_pool_entries
	.word	default_alarm_pool_entry_ids_high
	.space	8
	.section	.bss.sleep_notifier,"aw",%nobits
	.align	2
	.type	sleep_notifier, %object
	.size	sleep_notifier, 4
sleep_notifier:
	.space	4
	.section	.bss.default_alarm_pool_entry_ids_high,"aw",%nobits
	.align	2
	.type	default_alarm_pool_entry_ids_high, %object
	.size	default_alarm_pool_entry_ids_high, 16
default_alarm_pool_entry_ids_high:
	.space	16
	.section	.bss.default_alarm_pool_entries,"aw",%nobits
	.align	3
	.type	default_alarm_pool_entries, %object
	.size	default_alarm_pool_entries, 256
default_alarm_pool_entries:
	.space	256
	.section	.data.default_alarm_pool_heap,"aw"
	.align	2
	.type	default_alarm_pool_heap, %object
	.size	default_alarm_pool_heap, 16
default_alarm_pool_heap:
	.word	default_alarm_pool_heap_nodes
	.space	8
	.byte	16
	.space	3
	.section	.bss.default_alarm_pool_heap_nodes,"aw",%nobits
	.align	2
	.type	default_alarm_pool_heap_nodes, %object
	.size	default_alarm_pool_heap_nodes, 48
default_alarm_pool_heap_nodes:
	.space	48
	.global	at_the_end_of_time
	.section	.rodata.at_the_end_of_time,"a"
	.align	3
	.type	at_the_end_of_time, %object
	.size	at_the_end_of_time, 8
at_the_end_of_time:
	.word	-1
	.word	2147483647
	.global	nil_time
	.section	.rodata.nil_time,"a"
	.align	3
	.type	nil_time, %object
	.size	nil_time, 8
nil_time:
	.space	8
	.ident	"GCC: (Arch Repository) 13.1.0"
