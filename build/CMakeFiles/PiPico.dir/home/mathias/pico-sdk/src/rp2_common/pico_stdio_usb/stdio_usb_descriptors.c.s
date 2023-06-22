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
	.file	"stdio_usb_descriptors.c"
	.text
	.section	.text.tud_descriptor_device_cb,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_descriptor_device_cb
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_descriptor_device_cb, %function
tud_descriptor_device_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L3
	@ sp needed
	bx	lr
.L4:
	.align	2
.L3:
	.word	usbd_desc_device
	.size	tud_descriptor_device_cb, .-tud_descriptor_device_cb
	.section	.text.tud_descriptor_configuration_cb,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_descriptor_configuration_cb
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_descriptor_configuration_cb, %function
tud_descriptor_configuration_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L6
	@ sp needed
	bx	lr
.L7:
	.align	2
.L6:
	.word	usbd_desc_cfg
	.size	tud_descriptor_configuration_cb, .-tud_descriptor_configuration_cb
	.section	.text.tud_descriptor_string_cb,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	tud_descriptor_string_cb
	.syntax unified
	.code	16
	.thumb_func
	.type	tud_descriptor_string_cb, %function
tud_descriptor_string_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	ldr	r0, .L18
	ldrb	r3, [r0]
	cmp	r3, #0
	beq	.L17
.L9:
	cmp	r4, #0
	bne	.L10
	ldr	r3, .L18+4
	ldr	r0, .L18+8
	strh	r3, [r0, #2]
	subs	r3, r3, #6
	subs	r3, r3, #255
.L11:
	strh	r3, [r0]
.L8:
	@ sp needed
	pop	{r4, pc}
.L10:
	cmp	r4, #5
	bhi	.L15
	ldr	r3, .L18+12
	lsls	r4, r4, #2
	ldr	r0, [r4, r3]
	ldr	r1, .L18+16
	movs	r3, #1
	subs	r0, r0, #1
	b	.L13
.L14:
	adds	r3, r3, #1
	strh	r2, [r1]
	adds	r1, r1, #2
	cmp	r3, #20
	beq	.L16
.L13:
	ldrb	r2, [r0, r3]
	cmp	r2, #0
	bne	.L14
	movs	r2, #192
	uxtb	r3, r3
	lsls	r3, r3, #1
	lsls	r2, r2, #2
	ldr	r0, .L18+8
	orrs	r3, r2
	b	.L11
.L17:
	movs	r1, #17
	bl	pico_get_unique_board_id_string
	b	.L9
.L15:
	movs	r0, #0
	b	.L8
.L16:
	movs	r3, #202
	ldr	r0, .L18+8
	lsls	r3, r3, #2
	b	.L11
.L19:
	.align	2
.L18:
	.word	usbd_serial_str
	.word	1033
	.word	desc_str.0
	.word	usbd_desc_str
	.word	desc_str.0+2
	.size	tud_descriptor_string_cb, .-tud_descriptor_string_cb
	.section	.bss.desc_str.0,"aw",%nobits
	.align	2
	.type	desc_str.0, %object
	.size	desc_str.0, 40
desc_str.0:
	.space	40
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC6:
	.ascii	"Raspberry Pi\000"
	.align	2
.LC7:
	.ascii	"Pico\000"
	.align	2
.LC8:
	.ascii	"Board CDC\000"
	.align	2
.LC9:
	.ascii	"Reset\000"
	.section	.rodata.usbd_desc_str,"a"
	.align	2
	.type	usbd_desc_str, %object
	.size	usbd_desc_str, 24
usbd_desc_str:
	.space	4
	.word	.LC6
	.word	.LC7
	.word	usbd_serial_str
	.word	.LC8
	.word	.LC9
	.section	.bss.usbd_serial_str,"aw",%nobits
	.align	2
	.type	usbd_serial_str, %object
	.size	usbd_serial_str, 17
usbd_serial_str:
	.space	17
	.section	.rodata.usbd_desc_cfg,"a"
	.align	2
	.type	usbd_desc_cfg, %object
	.size	usbd_desc_cfg, 84
usbd_desc_cfg:
	.ascii	"\011\002T\000\003\001\000\200}\010\013\000\002\002\002"
	.ascii	"\000\000\011\004\000\000\001\002\002\000\004\005$\000"
	.ascii	" \001\005$\001\000\001\004$\002\002\005$\006\000\001"
	.ascii	"\007\005\201\003\010\000\020\011\004\001\000\002\012"
	.ascii	"\000\000\000\007\005\002\002@\000\000\007\005\202\002"
	.ascii	"@\000\000\011\004\002\000\000\377\000\001\005"
	.section	.rodata.usbd_desc_device,"a"
	.align	2
	.type	usbd_desc_device, %object
	.size	usbd_desc_device, 18
usbd_desc_device:
	.byte	18
	.byte	1
	.short	512
	.byte	-17
	.byte	2
	.byte	1
	.byte	64
	.short	11914
	.short	10
	.short	256
	.byte	1
	.byte	2
	.byte	3
	.byte	1
	.ident	"GCC: (Arch Repository) 13.1.0"
