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
	.file	"exception.c"
	.text
	.section	.text.exception_get_vtable_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	exception_get_vtable_handler
	.syntax unified
	.code	16
	.thumb_func
	.type	exception_get_vtable_handler, %function
exception_get_vtable_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	adds	r0, r0, #16
	ldr	r3, [r3, #8]
	lsls	r0, r0, #2
	ldr	r0, [r0, r3]
	@ sp needed
	bx	lr
.L4:
	.align	2
.L3:
	.word	-536810240
	.size	exception_get_vtable_handler, .-exception_get_vtable_handler
	.section	.text.exception_set_exclusive_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	exception_set_exclusive_handler
	.syntax unified
	.code	16
	.thumb_func
	.type	exception_set_exclusive_handler, %function
exception_set_exclusive_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r5, r1
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r7, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L9
	adds	r0, r0, #16
	ldr	r3, [r3, #8]
	lsls	r4, r0, #2
	ldr	r6, [r3, r4]
	cmp	r1, r6
	beq	.L6
	ldr	r3, .L9+4
	cmp	r6, r3
	bcs	.L8
.L7:
	bl	hard_assertion_failure
.L6:
	ldr	r3, .L9
	ldr	r3, [r3, #8]
	str	r5, [r3, r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r7
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, r6
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L8:
	ldr	r3, .L9+8
	cmp	r6, r3
	bcc	.L6
	b	.L7
.L10:
	.align	2
.L9:
	.word	-536810240
	.word	__default_isrs_start
	.word	__default_isrs_end
	.size	exception_set_exclusive_handler, .-exception_set_exclusive_handler
	.section	.text.exception_restore_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	exception_restore_handler
	.syntax unified
	.code	16
	.thumb_func
	.type	exception_restore_handler, %function
exception_restore_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L14
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r5, r1
	cmp	r1, r3
	bcc	.L12
	ldr	r3, .L14+4
	cmp	r1, r3
	bcs	.L12
.L13:
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r3, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r2, .L14+8
	adds	r4, r4, #16
	ldr	r2, [r2, #8]
	lsls	r4, r4, #2
	str	r5, [r4, r2]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r3
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, r5, r6, pc}
.L12:
	bl	hard_assertion_failure
	b	.L13
.L15:
	.align	2
.L14:
	.word	__default_isrs_start
	.word	__default_isrs_end
	.word	-536810240
	.size	exception_restore_handler, .-exception_restore_handler
	.ident	"GCC: (Arch Repository) 13.1.0"
