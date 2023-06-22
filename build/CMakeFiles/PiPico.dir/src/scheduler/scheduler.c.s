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
	.file	"scheduler.c"
	.text
	.section	.rodata.Scheduler_IdleTask.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"idle!\000"
	.section	.text.Scheduler_IdleTask,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	Scheduler_IdleTask, %function
Scheduler_IdleTask:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L4
.L2:
	movs	r0, r4
	bl	puts
	b	.L2
.L5:
	.align	2
.L4:
	.word	.LC0
	.size	Scheduler_IdleTask, .-Scheduler_IdleTask
	.section	.rodata.Scheduler_Start.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"Starting tick...\000"
	.align	2
.LC4:
	.ascii	"Running first task...\000"
	.align	2
.LC7:
	.ascii	"Starting first task %s\012\000"
	.align	2
.LC9:
	.ascii	"Stuck in Scheduler_Start\000"
	.section	.text.Scheduler_Start,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	Scheduler_Start
	.syntax unified
	.code	16
	.thumb_func
	.type	Scheduler_Start, %function
Scheduler_Start:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	ldr	r0, .L18
	push	{lr}
	bl	puts
	bl	Scheduler_InitTick
	ldr	r0, .L18+4
	bl	puts
	.syntax divided
@ 96 "/home/mathias/Documents/C/PiPico/src/scheduler/scheduler.c" 1
	 cpsie i
@ 0 "" 2
@ 209 "/home/mathias/Documents/C/PiPico/src/scheduler/scheduler.c" 1
	 push {r0}
  ldr r0, =__internal_stackPtr__
 mov sp, r0
 pop  {r0}
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L18+8
	mov	ip, r3
	ldr	r0, [r3, #8]
	ldr	r3, [r3]
	lsls	r3, r3, #2
	ldr	r4, [r3, r0]
	mov	r3, ip
	ldr	r6, [r3, #4]
	cmp	r6, #0
	beq	.L7
	movs	r3, #0
	movs	r7, #0
	mov	r8, r3
.L9:
	lsls	r2, r3, #2
	ldr	r2, [r0, r2]
	ldr	r1, [r2, #8]
	cmp	r1, #0
	bne	.L8
	ldr	r2, [r2, #4]
	ldrb	r2, [r2, #24]
	cmp	r2, r7
	bcc	.L8
	adds	r2, r2, #1
	uxtb	r7, r2
	movs	r2, #1
	movs	r5, r3
	mov	r8, r2
.L8:
	adds	r3, r3, #1
	cmp	r3, r6
	bne	.L9
	mov	r3, r8
	cmp	r3, #0
	beq	.L7
	mov	r3, ip
	str	r5, [r3]
	lsls	r5, r5, #2
	ldr	r4, [r5, r0]
.L7:
	.syntax divided
@ 216 "/home/mathias/Documents/C/PiPico/src/scheduler/scheduler.c" 1
	 cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r0, .L18+12
	ldr	r1, [r4, #4]
	bl	printf
	.syntax divided
@ 218 "/home/mathias/Documents/C/PiPico/src/scheduler/scheduler.c" 1
	 cpsie i
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r0, [r4]
	bl	Scheduler_SwitchTask
	ldr	r4, .L18+16
.L10:
	movs	r0, r4
	bl	puts
	b	.L10
.L19:
	.align	2
.L18:
	.word	.LC2
	.word	.LC4
	.word	__task_table__
	.word	.LC7
	.word	.LC9
	.size	Scheduler_Start, .-Scheduler_Start
	.section	.rodata.Scheduler_CreateTask.str1.4,"aMS",%progbits,1
	.align	2
.LC15:
	.ascii	"Failed to allocate %s\012\000"
	.section	.text.Scheduler_CreateTask,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	Scheduler_CreateTask
	.syntax unified
	.code	16
	.thumb_func
	.type	Scheduler_CreateTask, %function
Scheduler_CreateTask:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r6, r9
	mov	r7, r10
	mov	r5, r8
	push	{r5, r6, r7, lr}
	movs	r7, r3
	ldr	r3, .L34
	mov	r9, r0
	mov	fp, r3
	movs	r0, #32
	ldr	r3, [r3]
	movs	r6, r1
	movs	r5, r2
	blx	r3
	subs	r4, r0, #0
	beq	.L21
	movs	r2, #20
	mov	r1, r9
	bl	strncpy
	mov	r3, fp
	movs	r0, r6
	ldr	r3, [r3]
	str	r7, [r4, #20]
	blx	r3
	strb	r5, [r4, #24]
	str	r0, [r4, #28]
	cmp	r0, #0
	beq	.L33
	movs	r3, #76
	ldr	r5, .L34+4
	ldr	r1, [r5, #4]
	ldr	r0, [r5, #8]
	adds	r1, r1, #1
	muls	r1, r3
	ldr	r3, .L34+8
	mov	r10, r3
	ldr	r3, [r3]
	blx	r3
	mov	r8, r0
	cmp	r0, #0
	beq	.L33
	mov	r3, fp
	str	r0, [r5, #8]
	ldr	r3, [r3]
	movs	r0, #76
	ldr	r7, [r5, #4]
	blx	r3
	ldr	r3, [r5, #4]
	lsls	r7, r7, #2
	mov	fp, r3
	mov	r2, fp
	add	r7, r7, r8
	ldr	r3, [r5, #8]
	str	r0, [r7]
	lsls	r2, r2, #2
	ldr	r7, [r2, r3]
	cmp	r7, #0
	beq	.L25
	movs	r0, r7
	movs	r2, #64
	movs	r1, #0
	str	r4, [r7, #4]
	adds	r0, r0, #12
	bl	memset
	mov	r3, fp
	movs	r1, r4
	ldr	r0, [r4, #28]
	subs	r6, r6, #4
	adds	r0, r0, r6
	adds	r3, r3, #1
	movs	r2, #4
	adds	r1, r1, #20
	str	r0, [r7]
	str	r3, [r5, #4]
	bl	memcpy
	ldr	r0, [r7]
	movs	r2, #4
	ldr	r1, [sp, #40]
	subs	r0, r0, #4
	bl	memcpy
	ldr	r3, [r7]
	subs	r3, r3, #64
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #8]
.L20:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L33:
	ldr	r5, .L34+12
.L23:
	movs	r0, r4
	ldr	r3, [r5]
	blx	r3
	mov	r1, r9
	ldr	r0, .L34+16
	bl	printf
.L21:
	movs	r4, #0
	b	.L20
.L25:
	mov	r1, fp
	movs	r3, #76
	muls	r1, r3
	mov	r3, r10
	mov	r0, r8
	ldr	r3, [r3]
	blx	r3
	str	r0, [r5, #8]
	ldr	r5, .L34+12
	ldr	r0, [r4, #28]
	ldr	r3, [r5]
	blx	r3
	b	.L23
.L35:
	.align	2
.L34:
	.word	extMalloc
	.word	__task_table__
	.word	extRealloc
	.word	extFree
	.word	.LC15
	.size	Scheduler_CreateTask, .-Scheduler_CreateTask
	.section	.rodata.Scheduler_Initialize.str1.4,"aMS",%progbits,1
	.align	2
.LC24:
	.ascii	"Idle Task\000"
	.section	.text.Scheduler_Initialize,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	Scheduler_Initialize
	.syntax unified
	.code	16
	.thumb_func
	.type	Scheduler_Initialize, %function
Scheduler_Initialize:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	ldr	r0, .L37
	push	{r4, r5, lr}
	str	r3, [r0]
	ldr	r0, .L37+4
	movs	r5, #128
	str	r2, [r0]
	ldr	r2, .L37+8
	movs	r4, #0
	str	r1, [r2]
	movs	r0, #0
	movs	r1, #0
	ldr	r2, .L37+12
	lsls	r5, r5, #5
	sub	sp, sp, #12
	str	r0, [r2]
	str	r1, [r2, #4]
	str	r4, [r2, #8]
	movs	r0, r5
	blx	r3
	ldr	r2, .L37+16
	ldr	r3, .L37+20
	mov	ip, r2
	str	r0, [r3]
	ldr	r3, .L37+24
	add	r0, r0, ip
	str	r0, [r3]
	movs	r2, #0
	movs	r1, r5
	ldr	r3, .L37+28
	str	r4, [sp]
	ldr	r0, .L37+32
	bl	Scheduler_CreateTask
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L38:
	.align	2
.L37:
	.word	extMalloc
	.word	extFree
	.word	extRealloc
	.word	__task_table__
	.word	4092
	.word	__internal_stack__
	.word	__internal_stackPtr__
	.word	Scheduler_IdleTask
	.word	.LC24
	.size	Scheduler_Initialize, .-Scheduler_Initialize
	.section	.rodata.Scheduler_ContextSwitch.str1.4,"aMS",%progbits,1
	.align	2
.LC27:
	.ascii	"%s: %d\012\000"
	.section	.text.Scheduler_ContextSwitch,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	Scheduler_ContextSwitch
	.syntax unified
	.code	16
	.thumb_func
	.type	Scheduler_ContextSwitch, %function
Scheduler_ContextSwitch:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.syntax divided
@ 228 "/home/mathias/Documents/C/PiPico/src/scheduler/scheduler.c" 1
	 cpsid i
@ 0 "" 2
@ 229 "/home/mathias/Documents/C/PiPico/src/scheduler/scheduler.c" 1
	push   {lr}
push   {r0-r7}
mov    r0, r8
mov    r1, r9
mov    r2, r10
mov    r3, r11
mov    r4, r12
push   {r0-r4}
mrs    r0, apsr
mrs    r1, primask
mrs    r2, control
push   {r0-r2}

@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r6, .L55
	ldr	r3, [r6]
	ldr	r2, [r6, #8]
	lsls	r3, r3, #2
	ldr	r0, [r3, r2]
	bl	Scheduler_SaveStackPointer
	.syntax divided
@ 231 "/home/mathias/Documents/C/PiPico/src/scheduler/scheduler.c" 1
	 ldr r0, =__internal_stackPtr__
 mov sp, r0

@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, [r6, #4]
	cmp	r3, #0
	beq	.L40
	ldr	r3, .L55+4
	movs	r5, #0
	mov	r8, r3
.L44:
	ldr	r3, [r6, #8]
	lsls	r2, r5, #2
	ldr	r4, [r2, r3]
	mov	r0, r8
	ldr	r2, [r4, #8]
	ldr	r1, [r4, #4]
	bl	printf
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L41
	ldr	r2, [r6, #4]
	subs	r3, r3, #1
	adds	r5, r5, #1
	str	r3, [r4, #8]
	cmp	r2, r5
	bhi	.L44
.L43:
	ldr	r3, [r6]
	ldr	r4, [r6, #8]
	lsls	r3, r3, #2
	ldr	r3, [r3, r4]
	mov	ip, r3
	cmp	r2, #0
	beq	.L45
	movs	r3, #0
	movs	r5, #0
	mov	r8, r3
.L47:
	lsls	r1, r3, #2
	ldr	r1, [r4, r1]
	ldr	r0, [r1, #8]
	cmp	r0, #0
	bne	.L46
	ldr	r1, [r1, #4]
	ldrb	r1, [r1, #24]
	cmp	r1, r5
	bcc	.L46
	adds	r1, r1, #1
	uxtb	r5, r1
	movs	r1, #1
	movs	r7, r3
	mov	r8, r1
.L46:
	adds	r3, r3, #1
	cmp	r3, r2
	bne	.L47
	mov	r3, r8
	cmp	r3, #0
	beq	.L45
	str	r7, [r6]
	lsls	r7, r7, #2
	ldr	r3, [r7, r4]
	mov	ip, r3
.L45:
	.syntax divided
@ 237 "/home/mathias/Documents/C/PiPico/src/scheduler/scheduler.c" 1
	 cpsie i
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r3, ip
	ldr	r0, [r3]
	bl	Scheduler_SwitchTask
.L41:
	ldr	r2, [r6, #4]
	adds	r5, r5, #1
	cmp	r5, r2
	bcc	.L44
	b	.L43
.L40:
	ldr	r3, [r6]
	ldr	r2, [r6, #8]
	lsls	r3, r3, #2
	ldr	r3, [r3, r2]
	mov	ip, r3
	b	.L45
.L56:
	.align	2
.L55:
	.word	__task_table__
	.word	.LC27
	.size	Scheduler_ContextSwitch, .-Scheduler_ContextSwitch
	.section	.text.Scheduler_Sleep,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	Scheduler_Sleep
	.syntax unified
	.code	16
	.thumb_func
	.type	Scheduler_Sleep, %function
Scheduler_Sleep:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L58
	push	{r4, lr}
	ldr	r3, [r2]
	ldr	r2, [r2, #8]
	lsls	r3, r3, #2
	ldr	r3, [r3, r2]
	@ sp needed
	str	r0, [r3, #8]
	bl	Scheduler_ContextSwitch
	pop	{r4, pc}
.L59:
	.align	2
.L58:
	.word	__task_table__
	.size	Scheduler_Sleep, .-Scheduler_Sleep
	.section	.text.Scheduler_UpdateTicks,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	Scheduler_UpdateTicks
	.syntax unified
	.code	16
	.thumb_func
	.type	Scheduler_UpdateTicks, %function
Scheduler_UpdateTicks:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r6, .L68
	ldr	r3, [r6, #4]
	cmp	r3, #0
	beq	.L60
	movs	r5, #0
	ldr	r7, .L68+4
.L64:
	ldr	r3, [r6, #8]
	lsls	r2, r5, #2
	ldr	r4, [r2, r3]
	movs	r0, r7
	ldr	r2, [r4, #8]
	ldr	r1, [r4, #4]
	bl	printf
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L62
	subs	r3, r3, #1
	str	r3, [r4, #8]
	ldr	r3, [r6, #4]
	adds	r5, r5, #1
	cmp	r3, r5
	bhi	.L64
.L60:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L62:
	ldr	r3, [r6, #4]
	adds	r5, r5, #1
	cmp	r3, r5
	bhi	.L64
	b	.L60
.L69:
	.align	2
.L68:
	.word	__task_table__
	.word	.LC27
	.size	Scheduler_UpdateTicks, .-Scheduler_UpdateTicks
	.section	.rodata.print.str1.4,"aMS",%progbits,1
	.align	2
.LC32:
	.ascii	"tick\000"
	.section	.text.print,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	print
	.syntax unified
	.code	16
	.thumb_func
	.type	print, %function
print:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L71
	bl	puts
	@ sp needed
	pop	{r4, pc}
.L72:
	.align	2
.L71:
	.word	.LC32
	.size	print, .-print
	.section	.bss.__internal_stackPtr__,"aw",%nobits
	.align	2
	.type	__internal_stackPtr__, %object
	.size	__internal_stackPtr__, 4
__internal_stackPtr__:
	.space	4
	.section	.bss.__internal_stack__,"aw",%nobits
	.align	2
	.type	__internal_stack__, %object
	.size	__internal_stack__, 4
__internal_stack__:
	.space	4
	.section	.bss.__task_table__,"aw",%nobits
	.align	3
	.type	__task_table__, %object
	.size	__task_table__, 12
__task_table__:
	.space	12
	.section	.bss.extRealloc,"aw",%nobits
	.align	2
	.type	extRealloc, %object
	.size	extRealloc, 4
extRealloc:
	.space	4
	.section	.bss.extFree,"aw",%nobits
	.align	2
	.type	extFree, %object
	.size	extFree, 4
extFree:
	.space	4
	.section	.bss.extMalloc,"aw",%nobits
	.align	2
	.type	extMalloc, %object
	.size	extMalloc, 4
extMalloc:
	.space	4
	.ident	"GCC: (Arch Repository) 13.1.0"
