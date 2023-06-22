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
	.file	"stdio_usb.c"
	.text
	.section	.text.stdio_usb_set_chars_available_callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	stdio_usb_set_chars_available_callback
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_usb_set_chars_available_callback, %function
stdio_usb_set_chars_available_callback:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	@ sp needed
	str	r0, [r3]
	ldr	r3, .L3+4
	str	r1, [r3]
	bx	lr
.L4:
	.align	2
.L3:
	.word	chars_available_callback
	.word	chars_available_param
	.size	stdio_usb_set_chars_available_callback, .-stdio_usb_set_chars_available_callback
	.section	.text.usb_irq,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	usb_irq, %function
usb_irq:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L6
	@ sp needed
	ldrb	r0, [r3]
	bl	irq_set_pending
	pop	{r4, pc}
.L7:
	.align	2
.L6:
	.word	low_priority_irq_num
	.size	usb_irq, .-usb_irq
	.section	.text.timer_task,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	timer_task, %function
timer_task:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L14
	push	{r4, r5, r6, lr}
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L11
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L10:
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.L10
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #0
	ldr	r2, .L14+4
	str	r1, [r3, #4]
	strb	r0, [r2]
	ldr	r3, [r3]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	str	r0, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r4, #0
	movs	r5, #0
.L9:
	@ sp needed
	ldr	r3, .L14+8
	ldrb	r0, [r3]
	bl	irq_set_pending
	movs	r1, r5
	movs	r0, r4
	pop	{r4, r5, r6, pc}
.L11:
	movs	r4, #250
	movs	r5, #0
	lsls	r4, r4, #2
	b	.L9
.L15:
	.align	2
.L14:
	.word	one_shot_timer_crit_sec
	.word	one_shot_timer_pending
	.word	low_priority_irq_num
	.size	timer_task, .-timer_task
	.section	.text.stdio_usb_in_chars,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	stdio_usb_in_chars
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_usb_in_chars, %function
stdio_usb_in_chars:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r0, #0
	movs	r6, r1
	bl	tud_cdc_n_connected
	cmp	r0, #0
	beq	.L19
	movs	r0, #0
	bl	tud_cdc_n_available
	cmp	r0, #0
	beq	.L19
	bl	time_us_64
	movs	r3, #0
	ldr	r2, .L39
	adds	r2, r2, r0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r1, r1, #24
	cmp	r3, r1
	bcs	.L37
.L20:
	ldr	r5, .L39+4
	movs	r0, r5
	bl	mutex_try_enter_block_until
	cmp	r0, #0
	beq	.L19
	movs	r0, #0
	bl	tud_cdc_n_connected
	cmp	r0, #0
	bne	.L38
.L22:
	movs	r0, #1
	movs	r1, #0
	rsbs	r0, r0, #0
	bl	tud_task_ext
.L24:
	movs	r4, #3
	rsbs	r4, r4, #0
.L23:
	movs	r0, r5
	bl	mutex_exit
.L16:
	@ sp needed
	movs	r0, r4
	pop	{r4, r5, r6, pc}
.L37:
	movs	r2, #1
	ldr	r3, .L39+8
	rsbs	r2, r2, #0
	b	.L20
.L38:
	movs	r0, #0
	bl	tud_cdc_n_available
	cmp	r0, #0
	beq	.L22
	movs	r1, r4
	movs	r2, r6
	movs	r0, #0
	bl	tud_cdc_n_read
	subs	r4, r0, #0
	bne	.L23
	b	.L24
.L19:
	movs	r4, #3
	rsbs	r4, r4, #0
	b	.L16
.L40:
	.align	2
.L39:
	.word	1000000
	.word	stdio_usb_mutex
	.word	2147483647
	.size	stdio_usb_in_chars, .-stdio_usb_in_chars
	.section	.text.stdio_usb_out_chars,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_usb_out_chars, %function
stdio_usb_out_chars:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	push	{r7, lr}
	movs	r5, r0
	movs	r4, r1
	bl	time_us_64
	movs	r3, #0
	ldr	r2, .L65
	adds	r2, r2, r0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L42
	movs	r2, #1
	ldr	r3, .L65+4
	rsbs	r2, r2, #0
.L42:
	ldr	r1, .L65+8
	movs	r0, r1
	mov	r10, r1
	bl	mutex_try_enter_block_until
	cmp	r0, #0
	bne	.L63
.L41:
	@ sp needed
	pop	{r6, r7}
	mov	fp, r7
	mov	r10, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L63:
	movs	r0, #0
	bl	tud_cdc_n_connected
	cmp	r0, #0
	beq	.L45
	movs	r6, #0
	cmp	r4, #0
	ble	.L47
	ldr	r3, .L65+12
	mov	fp, r3
	b	.L46
.L64:
	adds	r1, r5, r6
	movs	r0, #0
	bl	tud_cdc_n_write
	movs	r7, r0
	movs	r0, #1
	movs	r1, #0
	rsbs	r0, r0, #0
	bl	tud_task_ext
	movs	r0, #0
	bl	tud_cdc_n_write_flush
	bl	time_us_64
	ldr	r3, .L65+12
	adds	r6, r6, r7
	str	r0, [r3]
	str	r1, [r3, #4]
.L50:
	cmp	r4, r6
	ble	.L47
.L46:
	movs	r0, #0
	bl	tud_cdc_n_write_available
	subs	r7, r4, r6
	movs	r2, r0
	cmp	r0, r7
	ble	.L48
	movs	r2, r7
.L48:
	cmp	r2, #0
	bne	.L64
	movs	r0, #1
	movs	r1, #0
	rsbs	r0, r0, #0
	bl	tud_task_ext
	movs	r0, #0
	bl	tud_cdc_n_write_flush
	movs	r0, #0
	bl	tud_cdc_n_connected
	cmp	r0, #0
	beq	.L47
	movs	r0, #0
	bl	tud_cdc_n_write_available
	cmp	r0, #0
	bne	.L50
	bl	time_us_64
	mov	r3, fp
	movs	r7, r1
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	movs	r1, #0
	mov	ip, r0
	ldr	r0, .L65+16
	adds	r2, r2, r0
	adcs	r3, r3, r1
	cmp	r7, r3
	bhi	.L47
	bne	.L50
	cmp	ip, r2
	bls	.L50
.L47:
	mov	r0, r10
	bl	mutex_exit
	b	.L41
.L45:
	movs	r0, #0
	movs	r1, #0
	ldr	r3, .L65+12
	str	r0, [r3]
	str	r1, [r3, #4]
	mov	r0, r10
	bl	mutex_exit
	b	.L41
.L66:
	.align	2
.L65:
	.word	1000000
	.word	2147483647
	.word	stdio_usb_mutex
	.word	last_avail_time.1
	.word	500000
	.size	stdio_usb_out_chars, .-stdio_usb_out_chars
	.section	.text.low_priority_worker_irq,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	low_priority_worker_irq, %function
low_priority_worker_irq:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L79
	sub	sp, sp, #16
	movs	r1, #0
	movs	r0, r4
	bl	mutex_try_enter
	cmp	r0, #0
	bne	.L77
	ldr	r3, .L79+4
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L67
	.syntax divided
@ 210 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	mrs r1, PRIMASK
@ 0 "" 2
@ 211 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
.L71:
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.L71
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r4, #1
	ldr	r0, .L79+8
	str	r1, [r3, #4]
	ldrb	r2, [r0]
	ldr	r3, [r3]
	uxtb	r2, r2
	strb	r4, [r0]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	movs	r0, #0
	str	r0, [r3]
	.syntax divided
@ 221 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	msr PRIMASK,r1
@ 0 "" 2
	.thumb
	.syntax unified
	cmp	r2, #0
	beq	.L78
.L67:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L77:
	movs	r0, #1
	movs	r1, #0
	rsbs	r0, r0, #0
	bl	tud_task_ext
	movs	r0, r4
	bl	mutex_exit
	b	.L67
.L78:
	bl	alarm_pool_get_default
	movs	r4, r0
	bl	time_us_64
	movs	r2, #250
	movs	r3, #0
	lsls	r2, r2, #2
	adds	r2, r2, r0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L73
	movs	r2, #1
	ldr	r3, .L79+12
	rsbs	r2, r2, #0
.L73:
	movs	r1, #1
	str	r1, [sp, #8]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L79+16
	movs	r0, r4
	str	r1, [sp]
	bl	alarm_pool_add_alarm_at
	b	.L67
.L80:
	.align	2
.L79:
	.word	stdio_usb_mutex
	.word	one_shot_timer_crit_sec
	.word	one_shot_timer_pending
	.word	2147483647
	.word	timer_task
	.size	low_priority_worker_irq, .-low_priority_worker_irq
	.section	.text.tud_cdc_rx_cb,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	tud_cdc_rx_cb
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_cdc_rx_cb, %function
tud_cdc_rx_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L86
	push	{r4, lr}
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L81
	ldr	r3, .L86+4
	movs	r2, #0
	ldr	r1, [r3]
	bl	usbd_defer_func
.L81:
	@ sp needed
	pop	{r4, pc}
.L87:
	.align	2
.L86:
	.word	chars_available_callback
	.word	chars_available_param
	.size	tud_cdc_rx_cb, .-tud_cdc_rx_cb
	.section	.text.stdio_usb_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	stdio_usb_init
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_usb_init, %function
stdio_usb_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #208
	push	{r4, lr}
	lsls	r3, r3, #24
	sub	sp, sp, #16
	ldr	r4, [r3]
	bl	alarm_pool_get_default
	bl	alarm_pool_core_num
	cmp	r0, r4
	beq	.L89
.L95:
	movs	r0, #0
.L90:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L89:
	ldr	r3, .L97
	ldrb	r3, [r3]
	bl	tusb_init
	ldr	r0, .L97+4
	bl	mutex_init
	movs	r0, #1
	bl	user_irq_claim_unused
	movs	r3, #255
	ldr	r4, .L97+8
	ldr	r1, .L97+12
	strb	r0, [r4]
	ands	r0, r3
	bl	irq_set_exclusive_handler
	ldrb	r0, [r4]
	movs	r1, #1
	bl	irq_set_enabled
	movs	r0, #5
	bl	irq_has_shared_handler
	cmp	r0, #0
	bne	.L96
	bl	alarm_pool_get_default
	movs	r4, r0
	bl	time_us_64
	movs	r2, #250
	movs	r3, #0
	lsls	r2, r2, #2
	adds	r2, r2, r0
	adcs	r3, r3, r1
	movs	r1, #128
	lsls	r1, r1, #24
	cmp	r3, r1
	bcc	.L93
	movs	r2, #1
	ldr	r3, .L97+16
	rsbs	r2, r2, #0
.L93:
	movs	r1, #1
	str	r1, [sp, #8]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L97+20
	movs	r0, r4
	str	r1, [sp]
	bl	alarm_pool_add_alarm_at
	movs	r2, #8
	movs	r4, r0
	movs	r1, #0
	ldr	r0, .L97+24
	bl	memset
	cmp	r4, #0
	blt	.L95
.L92:
	ldr	r0, .L97+28
	movs	r1, #1
	bl	stdio_set_driver_enabled
	movs	r0, #1
	b	.L90
.L96:
	movs	r2, #0
	ldr	r1, .L97+32
	movs	r0, #5
	bl	irq_add_shared_handler
	bl	next_striped_spin_lock_num
	ldr	r3, .L97+24
	movs	r1, r0
	movs	r0, r3
	bl	critical_section_init_with_lock_num
	b	.L92
.L98:
	.align	2
.L97:
	.word	__bi_ptr188.2
	.word	stdio_usb_mutex
	.word	low_priority_irq_num
	.word	low_priority_worker_irq
	.word	2147483647
	.word	timer_task
	.word	one_shot_timer_crit_sec
	.word	stdio_usb
	.word	usb_irq
	.size	stdio_usb_init, .-stdio_usb_init
	.section	.text.stdio_usb_connected,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	stdio_usb_connected
	.syntax unified
	.code	16
	.thumb_func
	.type	stdio_usb_connected, %function
stdio_usb_connected:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r0, #0
	@ sp needed
	bl	tud_cdc_n_connected
	pop	{r4, pc}
	.size	stdio_usb_connected, .-stdio_usb_connected
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC23:
	.ascii	"USB stdin / stdout\000"
	.section	.rodata.__bi_188.0,"a"
	.align	2
	.type	__bi_188.0, %object
	.size	__bi_188.0, 12
__bi_188.0:
	.short	6
	.short	20562
	.word	-1577798573
	.word	.LC23
	.section	.bss.last_avail_time.1,"aw",%nobits
	.align	3
	.type	last_avail_time.1, %object
	.size	last_avail_time.1, 8
last_avail_time.1:
	.space	8
	.section	.binary_info.__bi_ptr188,"aw"
	.align	2
	.type	__bi_ptr188.2, %object
	.size	__bi_ptr188.2, 4
__bi_ptr188.2:
	.word	__bi_188.0
	.global	stdio_usb
	.section	.data.stdio_usb,"aw"
	.align	2
	.type	stdio_usb, %object
	.size	stdio_usb, 24
stdio_usb:
	.word	stdio_usb_out_chars
	.space	4
	.word	stdio_usb_in_chars
	.word	stdio_usb_set_chars_available_callback
	.space	5
	.byte	1
	.space	2
	.section	.bss.low_priority_irq_num,"aw",%nobits
	.type	low_priority_irq_num, %object
	.size	low_priority_irq_num, 1
low_priority_irq_num:
	.space	1
	.section	.bss.one_shot_timer_pending,"aw",%nobits
	.type	one_shot_timer_pending, %object
	.size	one_shot_timer_pending, 1
one_shot_timer_pending:
	.space	1
	.section	.bss.one_shot_timer_crit_sec,"aw",%nobits
	.align	2
	.type	one_shot_timer_crit_sec, %object
	.size	one_shot_timer_crit_sec, 8
one_shot_timer_crit_sec:
	.space	8
	.section	.bss.chars_available_param,"aw",%nobits
	.align	2
	.type	chars_available_param, %object
	.size	chars_available_param, 4
chars_available_param:
	.space	4
	.section	.bss.chars_available_callback,"aw",%nobits
	.align	2
	.type	chars_available_callback, %object
	.size	chars_available_callback, 4
chars_available_callback:
	.space	4
	.section	.bss.stdio_usb_mutex,"aw",%nobits
	.align	2
	.type	stdio_usb_mutex, %object
	.size	stdio_usb_mutex, 8
stdio_usb_mutex:
	.space	8
	.ident	"GCC: (Arch Repository) 13.1.0"
