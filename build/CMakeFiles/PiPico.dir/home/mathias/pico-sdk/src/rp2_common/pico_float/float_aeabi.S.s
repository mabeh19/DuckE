# 0 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"






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
# 8 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom/sf_table.h" 1
# 9 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S" 2
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
# 10 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S" 2

__pre_init __aeabi_float_init, 00020

.syntax unified
.cpu cortex-m0plus
.thumb

.macro float_section name



.section .text.\name, "ax"

.endm

.macro float_wrapper_section func
float_section __wrap_\func
.endm

.macro _float_wrapper_func x
    wrapper_func \x
.endm

.macro wrapper_func_f1 x
   _float_wrapper_func \x





.endm

.macro wrapper_func_f2 x
   _float_wrapper_func \x





.endm

.section .text
# 82 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
.macro table_tail_call SF_TABLE_OFFSET






    ldr r3, =sf_table
    ldr r3, [r3, #\SF_TABLE_OFFSET]
    bx r3
.endm

.macro shimmable_table_tail_call SF_TABLE_OFFSET shim
    ldr r3, =sf_table
    ldr r3, [r3, #\SF_TABLE_OFFSET]



    bx r3




.endm
# 114 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
float_wrapper_section __aeabi_farithmetic



.align 2
wrapper_func __aeabi_frsub
    eors r0, r1
    eors r1, r0
    eors r0, r1



wrapper_func_f2 __aeabi_fsub
# 137 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
    table_tail_call 0x04

wrapper_func_f2 __aeabi_fadd
    table_tail_call 0x00


wrapper_func_f2 __aeabi_fdiv
# 152 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
    ldr r2, =(0xd0000000)
    ldr r3, [r2, #0x00000078]
    lsrs r3, #SIO_DIV_CSR_DIRTY_SHIFT_FOR_CARRY
    bcs fdiv_save_state
# 165 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
fdiv_shim_call:
    table_tail_call 0x0c

fdiv_save_state:
    save_div_state_and_lr
    bl fdiv_shim_call
    ldr r2, =(0xd0000000)
    restore_div_state_and_return


fdiv_fsub_nan_helper:
# 203 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
wrapper_func_f2 __aeabi_fmul
# 227 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
    table_tail_call 0x08


float_wrapper_section __aeabi_cfcmple
.align 2
wrapper_func __aeabi_cfrcmple
    push {r0-r2, lr}
    eors r0, r1
    eors r1, r0
    eors r0, r1
    b __aeabi_cfcmple_guts




.align 2
wrapper_func __aeabi_cfcmple
wrapper_func __aeabi_cfcmpeq
    push {r0-r2, lr}

__aeabi_cfcmple_guts:
    lsls r2,r0,#1
    lsrs r2,#24
    beq 1f
    cmp r2,#0xff
    bne 2f
    lsls r2, r0, #9
    bhi 3f
1:
    lsrs r0,#23 @ clear mantissa if denormal or infinite
    lsls r0,#23
2:
    lsls r2,r1,#1
    lsrs r2,#24
    beq 1f
    cmp r2,#0xff
    bne 2f
    lsls r2, r1, #9
    bhi 3f
1:
    lsrs r1,#23 @ clear mantissa if denormal or infinite
    lsls r1,#23
2:
    movs r2,#1 @ initialise result
    eors r1,r0
    bmi 2f @ opposite signs? then can proceed on basis of sign of x
    eors r1,r0 @ restore y
    bpl 1f
    cmp r1,r0
    pop {r0-r2, pc}
1:
    cmp r0,r1
    pop {r0-r2, pc}
2:
    orrs r1, r0 @ handle 0/-0
    adds r1, r1 @ note this always sets C
    beq 3f
    mvns r0, r0 @ carry inverse of r0 sign
    adds r0, r0
3:
    pop {r0-r2, pc}



float_wrapper_section __aeabi_fcmpeq
.align 2
wrapper_func __aeabi_fcmpeq
    push {lr}
    bl __aeabi_cfcmpeq
    beq 1f
    movs r0, #0
    pop {pc}
1:
    movs r0, #1
    pop {pc}


float_wrapper_section __aeabi_fcmplt
.align 2
wrapper_func __aeabi_fcmplt
    push {lr}
    bl __aeabi_cfcmple
    sbcs r0, r0
    pop {pc}


float_wrapper_section __aeabi_fcmple
.align 2
wrapper_func __aeabi_fcmple
    push {lr}
    bl __aeabi_cfcmple
    bls 1f
    movs r0, #0
    pop {pc}
1:
    movs r0, #1
    pop {pc}


float_wrapper_section __aeabi_fcmpge
.align 2
wrapper_func __aeabi_fcmpge
    push {lr}

    bl __aeabi_cfrcmple
    bls 1f
    movs r0, #0
    pop {pc}
1:
    movs r0, #1
    pop {pc}


float_wrapper_section __aeabi_fcmpgt
wrapper_func __aeabi_fcmpgt
    push {lr}

    bl __aeabi_cfrcmple
    sbcs r0, r0
    pop {pc}


float_wrapper_section __aeabi_fcmpun
wrapper_func __aeabi_fcmpun
   movs r3, #1
   lsls r3, #24
   lsls r2, r0, #1
   adds r2, r3
   bhi 1f
   lsls r2, r1, #1
   adds r2, r3
   bhi 1f
   movs r0, #0
   bx lr
1:
   movs r0, #1
   bx lr



float_wrapper_section __aeabi_ui2f
wrapper_func __aeabi_ui2f
        subs r1, r1
        cmp r0, #0
        bne __aeabi_i2f_main
        mov r0, r1
        bx lr

float_wrapper_section __aeabi_i2f

wrapper_func __aeabi_i2f
        lsrs r1, r0, #31
        lsls r1, #31
        bpl 1f
        negs r0, r0
1:
        cmp r0, #0
        beq 7f
__aeabi_i2f_main:

        mov ip, lr
        push {r0, r1}
        ldr r3, =sf_clz_func
        ldr r3, [r3]
        blx r3
        pop {r1, r2}
        lsls r1, r0
        subs r0, #158
        negs r0, r0

        adds r1,#0x80 @ rounding
        bcs 5f @ tripped carry? then have leading 1 in C as required (and result is even so can ignore sticky bits)

        lsls r3,r1,#24 @ check bottom 8 bits of r1
        beq 6f @ in rounding-tie case?
        lsls r1,#1 @ remove leading 1
3:
        lsrs r1,#9 @ align mantissa
        lsls r0,#23 @ align exponent
        orrs r0,r2 @ assemble exponent and mantissa
4:
        orrs r0,r1 @ apply sign
1:
        bx ip
5:
        adds r0,#1 @ correct exponent offset
        b 3b
6:
        lsrs r1,#9 @ ensure even result
        lsls r1,#10
        b 3b
7:
        bx lr



float_wrapper_section __aeabi_f2iz
wrapper_func __aeabi_f2iz
regular_func float2int_z
    lsls r1, r0, #1
    lsrs r2, r1, #24
    movs r3, #0x80
    lsls r3, #24
    cmp r2, #126
    ble 1f
    subs r2, #158
    bge 2f
    asrs r1, r0, #31
    lsls r0, #9
    lsrs r0, #1
    orrs r0, r3
    negs r2, r2
    lsrs r0, r2
    lsls r1, #1
    adds r1, #1
    muls r0, r1
    bx lr
1:
    movs r0, #0
    bx lr
2:
    lsrs r0, #31
    adds r0, r3
    subs r0, #1
    bx lr

    cmn r0, r0
    bcc float2int
    push {lr}
    lsls r0, #1
    lsrs r0, #1
    movs r1, #0
    bl __aeabi_f2uiz
    cmp r0, #0
    bmi 1f
    negs r0, r0
    pop {pc}
1:
    movs r0, #128
    lsls r0, #24
    pop {pc}

float_section float2int
regular_func float2int
    shimmable_table_tail_call 0x1c float2int_shim

float_section float2fix
regular_func float2fix
    shimmable_table_tail_call 0x20 float2fix_shim

float_section float2ufix
regular_func float2ufix
    table_tail_call 0x28


float_wrapper_section __aeabi_f2uiz
wrapper_func __aeabi_f2uiz
    table_tail_call 0x24

float_section fix2float
regular_func fix2float
    table_tail_call 0x30

float_section ufix2float
regular_func ufix2float
    table_tail_call 0x38

float_section fix642float
regular_func fix642float
    shimmable_table_tail_call 0x60 fix642float_shim

float_section ufix642float
regular_func ufix642float
    shimmable_table_tail_call 0x68 ufix642float_shim


float_wrapper_section __aeabi_l2f
1:
    ldr r2, =__aeabi_i2f
    bx r2
wrapper_func __aeabi_l2f
    asrs r2, r0, #31
    cmp r1, r2
    beq 1b
    shimmable_table_tail_call 0x5c int642float_shim


float_wrapper_section __aeabi_ul2f
1:
    ldr r2, =__aeabi_ui2f
    bx r2
wrapper_func __aeabi_ul2f
    cmp r1, #0
    beq 1b
    shimmable_table_tail_call 0x64 uint642float_shim


float_wrapper_section __aeabi_f2lz
wrapper_func __aeabi_f2lz
regular_func float2int64_z
    cmn r0, r0
    bcc float2int64
    push {lr}
    lsls r0, #1
    lsrs r0, #1
    movs r1, #0
    bl float2ufix64
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

float_section float2int64
regular_func float2int64
    shimmable_table_tail_call 0x6c float2int64_shim

float_section float2fix64
regular_func float2fix64
    shimmable_table_tail_call 0x70 float2fix64_shim


float_wrapper_section __aeabi_f2ulz
wrapper_func __aeabi_f2ulz
    shimmable_table_tail_call 0x74 float2uint64_shim

float_section float2ufix64
regular_func float2ufix64
    shimmable_table_tail_call 0x78 float2ufix64_shim

float_wrapper_section __aeabi_f2d
1:
# 575 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
wrapper_func __aeabi_f2d







    shimmable_table_tail_call 0x7c float2double_shim

float_wrapper_section sqrtf
wrapper_func_f1 sqrtf





    table_tail_call 0x18
# 608 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
float_wrapper_section cosf

wrapper_func cosf

    lsls r1, r0, #1
    lsrs r1, #24
    cmp r1, #127 + 7
    bge 1f
2:
    table_tail_call 0x3c
1:
# 630 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
    ldr r1, =0x40c90fdb
    push {lr}
    bl remainderf
    pop {r1}
    mov lr, r1
    b 2b

float_wrapper_section sinf

wrapper_func sinf

    lsls r1, r0, #1
    lsrs r1, #24
    cmp r1, #127 + 7
    bge 1f
2:
    table_tail_call 0x40
1:
# 659 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
    ldr r1, =0x40c90fdb
    push {lr}
    bl remainderf
    pop {r1}
    mov lr, r1
    b 2b

float_wrapper_section sincosf

wrapper_func sincosf
    push {r1, r2, lr}

    lsls r3, r0, #1
    lsrs r3, #24
    cmp r3, #127 + 7
    bge 3f
2:
    ldr r3, =sf_table
    ldr r3, [r3, #0x40]
    blx r3
    pop {r2, r3}
    str r0, [r2]
    str r1, [r3]
    pop {pc}




3:
# 702 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
    ldr r1, =0x40c90fdb
    push {lr}
    bl remainderf
    pop {r1}
    mov lr, r1
    b 2b

float_wrapper_section tanf

wrapper_func tanf

    lsls r1, r0, #1
    lsrs r1, #24
    cmp r1, #127 + 7
    bge ftan_out_of_range
ftan_in_range:


    ldr r2, =(0xd0000000)
    ldr r3, [r2, #0x00000078]
    lsrs r3, #SIO_DIV_CSR_DIRTY_SHIFT_FOR_CARRY
    bcs ftan_save_state
# 733 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
ftan_shim_call:
    table_tail_call 0x44

ftan_save_state:
    save_div_state_and_lr
    bl ftan_shim_call
    ldr r2, =(0xd0000000)
    restore_div_state_and_return

ftan_out_of_range:
# 754 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_aeabi.S"
    ldr r1, =0x40c90fdb
    push {lr}
    bl remainderf
    pop {r1}
    mov lr, r1
    b ftan_in_range

float_wrapper_section atan2f
wrapper_func_f2 atan2f
    shimmable_table_tail_call 0x58 fatan2_shim

float_wrapper_section expf
wrapper_func_f1 expf
    table_tail_call 0x4c

float_wrapper_section logf
wrapper_func_f1 logf
    table_tail_call 0x50
