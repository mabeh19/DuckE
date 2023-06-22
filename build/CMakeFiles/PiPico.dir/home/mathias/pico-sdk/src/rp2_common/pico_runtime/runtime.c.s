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
	.file	"runtime.c"
	.text
	.section	.text.runtime_install_stack_guard,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	runtime_install_stack_guard
	.syntax unified
	.code	16
	.thumb_func
	.type	runtime_install_stack_guard, %function
runtime_install_stack_guard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L7
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L2
	.syntax divided
@ 269 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 1
	bkpt #0
@ 0 "" 2
	.thumb
	.syntax unified
.L2:
	@ sp needed
	movs	r2, #5
	adds	r0, r0, #31
	movs	r1, r0
	ldr	r3, .L7
	lsls	r0, r0, #24
	str	r2, [r3, #4]
	adds	r2, r2, #250
	bics	r1, r2
	movs	r2, r1
	movs	r1, #16
	lsrs	r0, r0, #29
	orrs	r2, r1
	adds	r1, r1, #240
	lsls	r1, r1, r0
	str	r2, [r3, #12]
	ldr	r2, .L7+4
	eors	r2, r1
	str	r2, [r3, #16]
	bx	lr
.L8:
	.align	2
.L7:
	.word	-536810096
	.word	268500751
	.size	runtime_install_stack_guard, .-runtime_install_stack_guard
	.section	.text.runtime_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	runtime_init
	.syntax unified
	.code	16
	.thumb_func
	.type	runtime_init, %function
runtime_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L24
	ldr	r2, .L24+4
	push	{r4, r5, r6, lr}
	str	r2, [r3]
	ldr	r2, .L24+8
	ldr	r3, .L24+12
	ldr	r1, .L24+16
	str	r2, [r3]
.L10:
	movs	r4, r2
	ldr	r3, [r1, #8]
	bics	r4, r3
	bne	.L10
	ldr	r5, .L24+20
	ldr	r6, .L24+24
	cmp	r5, r6
	bcs	.L11
	subs	r6, r6, #1
	subs	r6, r6, r5
	lsrs	r6, r6, #2
.L12:
	ldmia	r5!, {r3}
	blx	r3
	movs	r3, r4
	adds	r4, r4, #1
	cmp	r3, r6
	bne	.L12
.L11:
	bl	clocks_init
	ldr	r2, .L24+28
	ldr	r3, .L24+12
	str	r2, [r3]
	ldr	r2, .L24+16
.L13:
	ldr	r3, [r2, #8]
	mvns	r3, r3
	lsls	r3, r3, #7
	lsrs	r5, r3, #7
	cmp	r3, #0
	bne	.L13
	movs	r2, #64
	ldr	r3, .L24+32
	ldr	r4, .L24+36
	ldr	r6, .L24+40
	str	r2, [r3, #120]
	str	r2, [r3, #116]
	str	r2, [r3, #112]
	str	r2, [r3, #108]
	cmp	r4, r6
	bcs	.L14
.L17:
	ldr	r3, [r4]
	movs	r0, r4
	cmp	r3, #0
	beq	.L15
	adds	r4, r4, #8
	bl	recursive_mutex_init
	cmp	r4, r6
	bcc	.L17
.L14:
	ldr	r4, .L24+44
	ldr	r6, .L24+48
	movs	r2, #192
	ldr	r1, [r6, #8]
	movs	r0, r4
	bl	memcpy
	str	r4, [r6, #8]
	bl	spin_locks_reset
	bl	irq_init_priorities
	bl	alarm_pool_init_default
	ldr	r4, .L24+52
	ldr	r6, .L24+56
	cmp	r4, r6
	bcs	.L9
	subs	r6, r6, #1
	subs	r6, r6, r4
	lsrs	r6, r6, #2
.L19:
	ldmia	r4!, {r3}
	blx	r3
	movs	r3, r5
	adds	r5, r5, #1
	cmp	r6, r3
	bne	.L19
.L9:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L15:
	adds	r4, r4, #8
	bl	mutex_init
	cmp	r4, r6
	bcc	.L17
	b	.L14
.L25:
	.align	2
.L24:
	.word	1073799168
	.word	-17052225
	.word	3964926
	.word	1073803264
	.word	1073790976
	.word	__preinit_array_start
	.word	__preinit_array_end
	.word	33554431
	.word	1073868800
	.word	__mutex_array_start
	.word	__mutex_array_end
	.word	ram_vector_table
	.word	-536810240
	.word	__init_array_start
	.word	__init_array_end
	.size	runtime_init, .-runtime_init
	.section	.text._exit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_exit
	.syntax unified
	.code	16
	.thumb_func
	.type	_exit, %function
_exit:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L27:
	.syntax divided
@ 269 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 1
	bkpt #0
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L27
	.size	_exit, .-_exit
	.section	.text._sbrk,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_sbrk
	.syntax unified
	.code	16
	.thumb_func
	.type	_sbrk, %function
_sbrk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L34
	movs	r3, r0
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.L32
	ldr	r1, .L34+4
	adds	r3, r0, r3
	cmp	r3, r1
	bhi	.L31
.L33:
	str	r3, [r2]
.L28:
	@ sp needed
	bx	lr
.L32:
	ldr	r0, .L34+8
	ldr	r1, .L34+4
	adds	r3, r0, r3
	str	r0, [r2]
	cmp	r3, r1
	bls	.L33
.L31:
	movs	r0, #1
	rsbs	r0, r0, #0
	b	.L28
.L35:
	.align	2
.L34:
	.word	heap_end.0
	.word	__StackLimit
	.word	end
	.size	_sbrk, .-_sbrk
	.global	__aeabi_ldivmod
	.section	.text._gettimeofday,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_gettimeofday
	.syntax unified
	.code	16
	.thumb_func
	.type	_gettimeofday, %function
_gettimeofday:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r4, r0, #0
	beq	.L37
	bl	time_us_64
	ldr	r3, .L41
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	subs	r0, r0, r2
	sbcs	r1, r1, r3
	movs	r3, #0
	ldr	r2, .L41+4
	bl	__aeabi_ldivmod
	str	r0, [r4]
	str	r1, [r4, #4]
	str	r2, [r4, #8]
.L37:
	movs	r0, #0
	@ sp needed
	pop	{r4, pc}
.L42:
	.align	2
.L41:
	.word	epoch_time_us_since_boot
	.word	1000000
	.size	_gettimeofday, .-_gettimeofday
	.section	.text.settimeofday,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	settimeofday
	.syntax unified
	.code	16
	.thumb_func
	.type	settimeofday, %function
settimeofday:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	cmp	r0, #0
	beq	.L44
	ldr	r6, [r0]
	ldr	r7, [r0, #4]
	lsrs	r3, r6, #27
	lsls	r5, r7, #5
	orrs	r5, r3
	lsls	r4, r6, #5
	subs	r4, r4, r6
	sbcs	r5, r5, r7
	lsrs	r1, r4, #23
	lsls	r3, r5, #9
	orrs	r3, r1
	lsls	r2, r4, #9
	adds	r2, r2, r6
	adcs	r3, r3, r7
	movs	r4, r2
	movs	r5, r3
	lsrs	r1, r2, #26
	lsls	r3, r3, #6
	orrs	r3, r1
	lsls	r2, r4, #6
	subs	r2, r2, r4
	sbcs	r3, r3, r5
	movs	r4, r2
	movs	r5, r3
	ldr	r1, [r0, #8]
	adds	r4, r4, r6
	adcs	r5, r5, r7
	movs	r2, r1
	asrs	r3, r1, #31
	adds	r4, r4, r2
	adcs	r5, r5, r3
	bl	time_us_64
	subs	r0, r0, r4
	sbcs	r1, r1, r5
	ldr	r3, .L48
	str	r0, [r3]
	str	r1, [r3, #4]
.L44:
	@ sp needed
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L49:
	.align	2
.L48:
	.word	epoch_time_us_since_boot
	.size	settimeofday, .-settimeofday
	.global	__aeabi_uldivmod
	.section	.text._times,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_times
	.syntax unified
	.code	16
	.thumb_func
	.type	_times, %function
_times:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	@ sp needed
	bl	time_us_64
	movs	r3, #0
	ldr	r2, .L51
	bl	__aeabi_uldivmod
	movs	r3, #0
	str	r0, [r4]
	str	r3, [r4, #4]
	movs	r0, #0
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	pop	{r4, pc}
.L52:
	.align	2
.L51:
	.word	10000
	.size	_times, .-_times
	.section	.text._getpid,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_getpid
	.syntax unified
	.code	16
	.thumb_func
	.type	_getpid, %function
_getpid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	@ sp needed
	bx	lr
	.size	_getpid, .-_getpid
	.section	.text._kill,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_kill
	.syntax unified
	.code	16
	.thumb_func
	.type	_kill, %function
_kill:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1
	@ sp needed
	rsbs	r0, r0, #0
	bx	lr
	.size	_kill, .-_kill
	.section	.text.exit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	exit
	.syntax unified
	.code	16
	.thumb_func
	.type	exit, %function
exit:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_exit
	.size	exit, .-exit
	.section	.rodata.__assert_func.str1.4,"aMS",%progbits,1
	.align	2
.LC14:
	.ascii	", function: \000"
	.align	2
.LC16:
	.ascii	"\000"
	.align	2
.LC18:
	.ascii	"assertion \"%s\" failed: file \"%s\", line %d%s%s\012"
	.ascii	"\000"
	.section	.text.__assert_func,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__assert_func
	.syntax unified
	.code	16
	.thumb_func
	.type	__assert_func, %function
__assert_func:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	movs	r5, r1
	sub	sp, sp, #12
	movs	r1, r3
	cmp	r2, #0
	beq	.L58
	ldr	r3, .L59
.L57:
	ldr	r4, .L59+4
	str	r2, [sp, #4]
	str	r3, [sp]
	movs	r2, r0
	movs	r3, r5
	movs	r0, r4
	bl	weak_raw_printf
	movs	r0, #1
	bl	_exit
.L58:
	ldr	r3, .L59+8
	movs	r2, r3
	b	.L57
.L60:
	.align	2
.L59:
	.word	.LC14
	.word	.LC18
	.word	.LC16
	.size	__assert_func, .-__assert_func
	.section	.rodata.panic.str1.4,"aMS",%progbits,1
	.align	2
.LC20:
	.ascii	"\012*** PANIC ***\012\000"
	.align	2
.LC22:
	.ascii	"\012\000"
	.section	.text.panic,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	panic
	.syntax unified
	.code	16
	.thumb_func
	.type	panic, %function
panic:
	@ Volatile: function does not return.
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r0, r1, r2, r3}
	push	{lr}
	ldr	r0, .L66
	sub	sp, sp, #12
	bl	puts
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L62
	add	r1, sp, #20
	movs	r0, r3
	str	r1, [sp, #4]
	bl	weak_raw_vprintf
	ldr	r0, .L66+4
	bl	puts
.L62:
	movs	r0, #1
	bl	_exit
.L67:
	.align	2
.L66:
	.word	.LC20
	.word	.LC22
	.size	panic, .-panic
	.section	.rodata.panic_unsupported.str1.4,"aMS",%progbits,1
	.align	2
.LC24:
	.ascii	"not supported\000"
	.section	.text.panic_unsupported,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	panic_unsupported
	.syntax unified
	.code	16
	.thumb_func
	.type	panic_unsupported, %function
panic_unsupported:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L69
	bl	panic
.L70:
	.align	2
.L69:
	.word	.LC24
	.size	panic_unsupported, .-panic_unsupported
	.section	.rodata.hard_assertion_failure.str1.4,"aMS",%progbits,1
	.align	2
.LC26:
	.ascii	"Hard assert\000"
	.section	.text.hard_assertion_failure,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	hard_assertion_failure
	.syntax unified
	.code	16
	.thumb_func
	.type	hard_assertion_failure, %function
hard_assertion_failure:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L72
	bl	panic
.L73:
	.align	2
.L72:
	.word	.LC26
	.size	hard_assertion_failure, .-hard_assertion_failure
	.section	.bss.heap_end.0,"aw",%nobits
	.align	2
	.type	heap_end.0, %object
	.size	heap_end.0, 4
heap_end.0:
	.space	4
	.section	.bss.epoch_time_us_since_boot,"aw",%nobits
	.align	3
	.type	epoch_time_us_since_boot, %object
	.size	epoch_time_us_since_boot, 8
epoch_time_us_since_boot:
	.space	8
	.global	ram_vector_table
	.section	.ram_vector_table,"aw"
	.align	2
	.type	ram_vector_table, %object
	.size	ram_vector_table, 192
ram_vector_table:
	.space	192
	.ident	"GCC: (Arch Repository) 13.1.0"
