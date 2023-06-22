# 0 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"






# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/asm_helper.S" 1






# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 1
# 24 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 1
# 25 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2
# 1 "/home/mathias/Documents/C/PiPico/build/generated/pico_base/pico/version.h" 1
# 26 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2





# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/config.h" 1
# 19 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/config.h"
# 1 "/home/mathias/Documents/C/PiPico/build/generated/pico_base/pico/config_autogen.h" 1






# 1 "/home/mathias/pico-sdk/src/boards/include/boards/pico_w.h" 1
# 8 "/home/mathias/Documents/C/PiPico/build/generated/pico_base/pico/config_autogen.h" 2



# 1 "/home/mathias/pico-sdk/src/rp2_common/cmsis/include/cmsis/rename_exceptions.h" 1
# 12 "/home/mathias/Documents/C/PiPico/build/generated/pico_base/pico/config_autogen.h" 2
# 20 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/config.h" 2
# 32 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2

# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 1
# 19 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/platform_defs.h" 1
# 20 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/addressmap.h" 1
# 21 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/sio.h" 1
# 22 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 2
# 34 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/error.h" 1
# 35 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2
# 8 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/asm_helper.S" 2


.macro regular_func x
.global \x
.type \x,%function
.thumb_func
\x:
.endm

.macro regular_func_with_section x
.section .text.\x
regular_func \x
.endm


.macro wrapper_func x
regular_func __wrap_\x
.endm

.macro __pre_init func, priority_string
.section .preinit_array.\priority_string
.align 2
.word \func
.endm
# 8 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom/sf_table.h" 1
# 9 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_divider/include/hardware/divider_helper.S" 1
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_divider/include/hardware/divider_helper.S"
.equ SIO_DIV_CSR_READY_SHIFT_FOR_CARRY, 1




.equ SIO_DIV_CSR_DIRTY_SHIFT_FOR_CARRY, 2





.macro save_div_state_and_lr
# 34 "/home/mathias/pico-sdk/src/rp2_common/hardware_divider/include/hardware/divider_helper.S"
push {r4, r5, r6, r7, lr}

ldr r4, [r2, #0x00000060]
ldr r5, [r2, #0x00000064]
ldr r7, [r2, #0x00000074]
ldr r6, [r2, #0x00000070]
.endm


.macro restore_div_state_and_return
# 62 "/home/mathias/pico-sdk/src/rp2_common/hardware_divider/include/hardware/divider_helper.S"
str r4, [r2, #0x00000060]
str r5, [r2, #0x00000064]
str r7, [r2, #0x00000074]
str r6, [r2, #0x00000070]
pop {r4, r5, r6, r7, pc}
.endm
# 10 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S" 2

__pre_init __aeabi_double_init, 00020

.syntax unified
.cpu cortex-m0plus
.thumb

.macro double_section name



.section .text.\name, "ax"

.endm

.macro _double_wrapper_func x
    wrapper_func \x
.endm

.macro wrapper_func_d1 x
   _double_wrapper_func \x





.endm

.macro wrapper_func_d2 x
    _double_wrapper_func \x





.endm

.section .text
# 84 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
.macro table_tail_call SF_TABLE_OFFSET
    push {r3, r4}






    ldr r3, =sd_table
    ldr r3, [r3, #\SF_TABLE_OFFSET]
    str r3, [sp, #4]
    pop {r3, pc}
.endm

.macro shimmable_table_tail_call SF_TABLE_OFFSET shim
    push {r3, r4}
    ldr r3, =sd_table
    ldr r3, [r3, #\SF_TABLE_OFFSET]



    str r3, [sp, #4]
    pop {r3, pc}




.endm

.macro double_wrapper_section func
double_section __wrap_\func
.endm

double_section push_r8_r11
regular_func push_r8_r11
 mov r4,r8
 mov r5,r9
 mov r6,r10
 mov r7,r11
 push {r4-r7}
 bx r14

double_section pop_r8_r11
regular_func pop_r8_r11
 pop {r4-r7}
 mov r8,r4
 mov r9,r5
 mov r10,r6
 mov r11,r7
 bx r14







double_wrapper_section __aeabi_darithmetic



.align 2
wrapper_func __aeabi_drsub
    eors r0, r1
    eors r1, r0
    eors r0, r1



wrapper_func_d2 __aeabi_dsub
# 168 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
   shimmable_table_tail_call 0x04 dsub_shim

wrapper_func_d2 __aeabi_dadd
   shimmable_table_tail_call 0x00 dadd_shim


wrapper_func_d2 __aeabi_ddiv
# 183 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
    mov ip, r2
    ldr r2, =(0xd0000000)
    ldr r2, [r2, #0x00000078]
    lsrs r2, #SIO_DIV_CSR_DIRTY_SHIFT_FOR_CARRY
    bcs ddiv_save_state
    mov r2, ip
# 198 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
ddiv_shim_call:
    shimmable_table_tail_call 0x0c ddiv_shim


ddiv_save_state:
    ldr r2, =(0xd0000000)
    save_div_state_and_lr
    mov r2, ip
    bl ddiv_shim_call
    ldr r2, =(0xd0000000)
    restore_div_state_and_return


ddiv_dsub_nan_helper:
# 241 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
wrapper_func_d2 __aeabi_dmul
# 268 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
   shimmable_table_tail_call 0x08 dmul_shim


double_wrapper_section __aeabi_cdcmple

wrapper_func __aeabi_cdrcmple
 push {r0-r7,r14}
    eors r0, r2
    eors r2, r0
    eors r0, r2
    eors r1, r3
    eors r3, r1
    eors r1, r3
    b __aeabi_dfcmple_guts




@ compare r0:r1 against r2:r3, returning -1/0/1 for <, =, >
@ also set flags accordingly
.align 2
wrapper_func __aeabi_cdcmple
wrapper_func __aeabi_cdcmpeq
 push {r0-r7,r14}
__aeabi_dfcmple_guts:
 ldr r7,=0x7ff @ flush NaNs and denormals
 lsls r4,r1,#1
 lsrs r4,#21
 beq 1f
 cmp r4,r7
 bne 2f
 lsls r4, r1, #12
 bhi 7f
1:
 movs r0,#0
 lsrs r1,#20
 lsls r1,#20
2:
 lsls r4,r3,#1
 lsrs r4,#21
 beq 1f
 cmp r4,r7
 bne 2f
 lsls r4, r3, #12
 bhi 7f
1:
 movs r2,#0
 lsrs r3,#20
 lsls r3,#20
2:
 movs r6,#1
 eors r3,r1
 bmi 4f @ opposite signs? then can proceed on basis of sign of x
 eors r3,r1 @ restore r3
 bpl 2f
 cmp r3,r1
 bne 7f
1:
 cmp r2,r0
7:
 pop {r0-r7,r15}
2:
 cmp r1,r3
 bne 7b
1:
 cmp r0,r2
 pop {r0-r7,r15}
4:
 orrs r3,r1 @ make -0==+0
 adds r3,r3
 orrs r3,r0
 orrs r3,r2
 beq 7b
 mvns r1, r1 @ carry inverse of r1 sign
 adds r1, r1
 pop {r0-r7,r15}



double_wrapper_section __aeabi_dcmpeq
.align 2
wrapper_func __aeabi_dcmpeq
    push {lr}
    bl __aeabi_cdcmpeq
    beq 1f
    movs r0, #0
    pop {pc}
1:
    movs r0, #1
    pop {pc}


double_wrapper_section __aeabi_dcmplt
.align 2
wrapper_func __aeabi_dcmplt
    push {lr}
    bl __aeabi_cdcmple
    sbcs r0, r0
    pop {pc}


double_wrapper_section __aeabi_dcmple
.align 2
wrapper_func __aeabi_dcmple
    push {lr}
    bl __aeabi_cdcmple
    bls 1f
    movs r0, #0
    pop {pc}
1:
    movs r0, #1
    pop {pc}


double_wrapper_section __aeabi_dcmpge
.align 2
wrapper_func __aeabi_dcmpge
    push {lr}

    bl __aeabi_cdrcmple
    bls 1f
    movs r0, #0
    pop {pc}
1:
    movs r0, #1
    pop {pc}


double_wrapper_section __aeabi_dcmpgt
wrapper_func __aeabi_dcmpgt
    push {lr}

    bl __aeabi_cdrcmple
    sbcs r0, r0
    pop {pc}


double_wrapper_section __aeabi_dcmpun
wrapper_func __aeabi_dcmpun
   movs r0, #1
   lsls r0, #21
   lsls r2, r1, #1
   adds r2, r0
   bhi 1f
   lsls r2, r3, #1
   adds r2, r0
   bhi 1f
   movs r0, #0
   bx lr
1:
   movs r0, #1
   bx lr

    movs r0, #0
    bx lr


double_wrapper_section __aeabi_ui2d
    shimmable_table_tail_call 0x34 uint2double_shim

double_wrapper_section __aeabi_i2d

wrapper_func __aeabi_ui2d
    movs r1, #0
    cmp r0, #0
    bne 2f
1:
    bx lr

wrapper_func __aeabi_i2d
    asrs r1, r0, #31
    eors r0, r1
    subs r0, r1
    beq 1b
    lsls r1, #31
2:
    push {r0, r1, r4, lr}
    ldr r3, =sf_clz_func
    ldr r3, [r3]
    blx r3
    pop {r2, r3}
    adds r4, r0, #1
    lsls r2, r4
    lsls r0, r2, #20
    lsrs r2, #12
    ldr r1,=1055
    subs r1, r4
    lsls r1, #20
    orrs r1, r3
    orrs r1, r2
    pop {r4, pc}


double_wrapper_section __aeabi_d2iz
wrapper_func __aeabi_d2iz
regular_func double2int_z
    push {r4, lr}
    lsls r4, r1, #1
    lsrs r2, r4, #21
    movs r3, #0x80
    adds r2, r3
    lsls r3, #3
    subs r2, r3
    lsls r3, #21
    cmp r2, #126
    ble 1f
    subs r2, #158
    bge 2f
    asrs r4, r1, #31
    lsls r1, #12
    lsrs r1, #1
    orrs r1, r3
    negs r2, r2
    lsrs r1, r2
    lsls r4, #1
    adds r4, #1
    adds r2, #21
    cmp r2, #32
    bge 3f
    lsrs r0, r2
    orrs r0, r1
    muls r0, r4
    pop {r4, pc}
1:
    movs r0, #0
    pop {r4, pc}
3:
    mov r0, r1
    muls r0, r4
    pop {r4, pc}
2:

    lsrs r0, r1, #31
    adds r0, r3
    subs r0, #1
    pop {r4, pc}

double_section double2int
regular_func double2int
    shimmable_table_tail_call 0x1c double2int_shim


double_wrapper_section __aeabi_d2uiz
wrapper_func __aeabi_d2uiz
regular_func double2uint
    shimmable_table_tail_call 0x24 double2uint_shim

double_section fix2double
regular_func fix2double
    shimmable_table_tail_call 0x30 fix2double_shim

double_section ufix2double
regular_func ufix2double
    shimmable_table_tail_call 0x38 ufix2double_shim

double_section fix642double
regular_func fix642double
    shimmable_table_tail_call 0x60 fix642double_shim

double_section ufix2double
regular_func ufix642double
    shimmable_table_tail_call 0x68 ufix642double_shim


double_wrapper_section __aeabi_l2d
wrapper_func __aeabi_l2d
    shimmable_table_tail_call 0x5c int642double_shim


double_wrapper_section __aeabi_ul2d
wrapper_func __aeabi_ul2d
    shimmable_table_tail_call 0x64 uint642double_shim


double_wrapper_section __aeabi_d2lz
wrapper_func __aeabi_d2lz
regular_func double2int64_z
    cmn r1, r1
    bcc double2int64
    push {lr}
    lsls r1, #1
    lsrs r1, #1
    movs r2, #0
    bl double2ufix64
    cmp r1, #0
    bmi 1f
    movs r2, #0
    negs r0, r0
    sbcs r2, r1
    mov r1, r2
    pop {pc}
1:
    movs r1, #128
    lsls r1, #24
    movs r0, #0
    pop {pc}

double_section double2int64
regular_func double2int64
    shimmable_table_tail_call 0x6c double2int64_shim


double_wrapper_section __aeabi_d2ulz
wrapper_func __aeabi_d2ulz
    shimmable_table_tail_call 0x74 double2uint64_shim

double_section double2fix64
regular_func double2fix64
    shimmable_table_tail_call 0x70 double2fix64_shim

double_section double2ufix64
regular_func double2ufix64
    shimmable_table_tail_call 0x78 double2ufix64_shim

double_section double2fix
regular_func double2fix
    shimmable_table_tail_call 0x20 double2fix_shim

double_section double2ufix
regular_func double2ufix
    shimmable_table_tail_call 0x28 double2ufix_shim

double_wrapper_section __aeabi_d2f
1:
# 604 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
wrapper_func __aeabi_d2f
# 613 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
    shimmable_table_tail_call 0x7c double2float_shim

double_wrapper_section srqt
wrapper_func_d1 sqrt
    shimmable_table_tail_call 0x18 dsqrt_shim

double_wrapper_section sincostan_remainder
regular_func sincostan_remainder
    ldr r2, =0x54442D18
    ldr r3, =0x401921FB
    push {lr}


    bl remainder
    pop {pc}

double_wrapper_section cos
#don't use _d1 as we're doing a range check anyway and infinites/nans are bigger than 1024
wrapper_func cos

    lsls r2, r1, #2
    bcc 1f
    lsrs r2, #22
    cmp r2, #9
    bge 2f
1:
    shimmable_table_tail_call 0x3c dcos_shim
2:
# 653 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
    push {lr}
    bl sincostan_remainder
    pop {r2}
    mov lr, r2
    b 1b

double_wrapper_section sin
#don't use _d1 as we're doing a range check anyway and infinites/nans are bigger than 1024
wrapper_func sin

    lsls r2, r1, #2
    bcc 1f
    lsrs r2, #22
    cmp r2, #9
    bge 2f
1:
    shimmable_table_tail_call 0x40 dsin_shim
2:
# 683 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
    push {lr}
    bl sincostan_remainder
    pop {r2}
    mov lr, r2
    b 1b

double_wrapper_section sincos

2:
# 707 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
    push {lr}
    bl sincostan_remainder
    pop {r2}
    mov lr, r2
    b 1f

wrapper_func sincos
    push {r2-r5, lr}

    lsls r2, r1, #2
    bcc 1f
    lsrs r2, #22
    cmp r2, #9
    bge 2b
1:
    bl 2f
    pop {r4-r5}
    stmia r4!, {r0, r1}
    stmia r5!, {r2, r3}
    pop {r4, r5, pc}

2:
    shimmable_table_tail_call 0x48 sincos_shim_bootstrap

.thumb_func
sincos_shim_bootstrap:
    push {r2, r3, r4}
    movs r3, #0x13
    ldrb r3, [r3]






1:
    ldr r3, =dsincos_shim_v2
2:
    ldr r2, =sd_table
    str r3, [r2, #0x48]
    str r3, [sp, #8]
    pop {r2, r3, pc}
.thumb_func
dsincos_shim_v2:
     push {r4-r7,r14}
     bl push_r8_r11
     bl v2_rom_dsincos_internal
     mov r12,r0 @ save ε
     bl v2_rom_dcos_finish
     push {r0,r1}
     mov r0,r12
     bl v2_rom_dsin_finish
     pop {r2,r3}
     bl pop_r8_r11
     pop {r4-r7,r15}
.thumb_func
v2_rom_dsincos_internal:
    push {r0, lr}
    ldr r0, =0x3855
    str r0, [sp, #4]
    pop {r0, pc}
.thumb_func
v2_rom_dcos_finish:
    push {r0, r1}
    ldr r0, =0x389d
    str r0, [sp, #4]
    pop {r0, pc}
.thumb_func
v2_rom_dsin_finish:
    push {r0, r1}
    ldr r0, =0x38d9
    str r0, [sp, #4]
    pop {r0, pc}

double_wrapper_section tan
#don't use _d1 as we're doing a range check anyway and infinites/nans are bigger than 1024
wrapper_func tan

    lsls r2, r1, #2
    bcc dtan_in_range
    lsrs r2, #22
    cmp r2, #9
    bge dtan_angle_out_of_range
dtan_in_range:


    mov ip, r2
    ldr r2, =(0xd0000000)
    ldr r2, [r2, #0x00000078]
    lsrs r2, #SIO_DIV_CSR_DIRTY_SHIFT_FOR_CARRY
    bcs dtan_save_state
    mov r2, ip
# 808 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
dtan_shim_call:
    shimmable_table_tail_call 0x44 dtan_shim

dtan_save_state:
    ldr r2, =(0xd0000000)
    save_div_state_and_lr
    mov r2, ip
    bl dtan_shim_call
    ldr r2, =(0xd0000000)
    restore_div_state_and_return

dtan_angle_out_of_range:
# 832 "/home/mathias/pico-sdk/src/rp2_common/pico_double/double_aeabi.S"
    push {lr}
    bl sincostan_remainder
    pop {r2}
    mov lr, r2
    b dtan_in_range

double_wrapper_section atan2
wrapper_func_d2 atan2
    shimmable_table_tail_call 0x58 datan2_shim

double_wrapper_section exp
wrapper_func_d1 exp
    shimmable_table_tail_call 0x4c dexp_shim

double_wrapper_section log
wrapper_func_d1 log
    shimmable_table_tail_call 0x50 dln_shim
