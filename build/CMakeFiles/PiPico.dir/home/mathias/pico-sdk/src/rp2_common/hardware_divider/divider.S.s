# 0 "/home/mathias/pico-sdk/src/rp2_common/hardware_divider/divider.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_divider/divider.S"
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
# 2 "/home/mathias/pico-sdk/src/rp2_common/hardware_divider/divider.S" 2



.syntax unified
.cpu cortex-m0plus
.thumb


regular_func_with_section hw_divider_divmod_s32
    ldr r3, =(0xd0000000)
    str r0, [r3, #0x00000068]
    str r1, [r3, #0x0000006c]
    b hw_divider_divmod_return



regular_func_with_section hw_divider_divmod_u32
    ldr r3, =(0xd0000000)
    str r0, [r3, #0x00000060]
    str r1, [r3, #0x00000064]
    b hw_divider_divmod_return



.section .text.hw_divider_divmod_return
hw_divider_divmod_return:

    b 1f
1: b 1f
1: b 1f
1:
    ldr r1, [r3, #0x00000074]
    ldr r0, [r3, #0x00000070]
    bx lr

regular_func_with_section hw_divider_save_state
    ldr r3, =0xd0000000
    ldr r1, [r3, #0x00000060]
    ldr r2, [r3, #0x00000064]
    stmia r0!, {r1-r2}


    ldr r1, [r3, #0x00000074]
    ldr r2, [r3, #0x00000070]
    stmia r0!, {r1-r2}
    bx lr

regular_func_with_section hw_divider_restore_state
    ldr r3, =0xd0000000
    ldmia r0!, {r1-r2}
    str r1, [r3, #0x00000060]
    str r2, [r3, #0x00000064]
    ldmia r0!, {r1-r2}
    str r1, [r3, #0x00000074]
    str r2, [r3, #0x00000070]
    bx lr
