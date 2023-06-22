# 0 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"






# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 1
# 10 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 1
# 24 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 1
# 12 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h" 1
# 10 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h"
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdbool.h" 1 3 4
# 11 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h" 2







# 1 "/usr/arm-none-eabi/include/assert.h" 1 3
# 9 "/usr/arm-none-eabi/include/assert.h" 3
# 1 "/usr/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/usr/arm-none-eabi/include/_ansi.h" 3
# 1 "/usr/arm-none-eabi/include/newlib.h" 1 3
# 10 "/usr/arm-none-eabi/include/newlib.h" 3
# 1 "/usr/arm-none-eabi/include/_newlib_version.h" 1 3
# 11 "/usr/arm-none-eabi/include/newlib.h" 2 3
# 11 "/usr/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/usr/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/usr/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/usr/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/usr/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/usr/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/usr/arm-none-eabi/include/_ansi.h" 2 3
# 10 "/usr/arm-none-eabi/include/assert.h" 2 3
# 39 "/usr/arm-none-eabi/include/assert.h" 3

# 39 "/usr/arm-none-eabi/include/assert.h" 3
void __assert (const char *, int, const char *)
     __attribute__ ((__noreturn__));
void __assert_func (const char *, int, const char *, const char *)
     __attribute__ ((__noreturn__));
# 19 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h" 2
# 39 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h"

# 39 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h"
extern void hard_assertion_failure(void);
static inline void hard_assert(
# 40 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h" 3 4
                              _Bool 
# 40 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h"
                                   condition, ...) {
    if (!condition)
        hard_assertion_failure();
}
# 13 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 2

# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdint.h" 3 4
# 1 "/usr/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/usr/arm-none-eabi/include/stdint.h" 3 4
# 1 "/usr/arm-none-eabi/include/machine/_default_types.h" 1 3 4
# 41 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/usr/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/usr/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/usr/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 190 "/usr/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 14 "/usr/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/usr/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/usr/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/usr/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/usr/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/usr/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/usr/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/usr/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdint.h" 2 3 4
# 15 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 2

# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 1 3 4
# 145 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 214 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 329 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 425 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 436 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4
} max_align_t;
# 17 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 2


# 18 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
typedef unsigned int uint;
# 31 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
typedef uint64_t absolute_time_t;
# 44 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
static inline uint64_t to_us_since_boot(absolute_time_t t) {

    return t;



}
# 59 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
static inline void update_us_since_boot(absolute_time_t *t, uint64_t us_since_boot) {

    *t = us_since_boot;




}







static inline absolute_time_t from_us_since_boot(uint64_t us_since_boot) {
    absolute_time_t t;
    update_us_since_boot(&t, us_since_boot);
    return t;
}
# 93 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
typedef struct {
    int16_t year;
    int8_t month;
    int8_t day;
    int8_t dotw;
    int8_t hour;
    int8_t min;
    int8_t sec;
} datetime_t;
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
# 71 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
# 1 "/usr/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/usr/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 1 3 4
# 48 "/usr/arm-none-eabi/include/sys/cdefs.h" 2 3
# 72 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 2
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 1
# 73 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 2
# 268 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
static inline void __breakpoint(void) {
    __asm__("bkpt #0");
}
# 284 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"

# 284 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 3
__inline__ __attribute__((__always_inline__)) 
# 284 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
              static void __compiler_memory_barrier(void) {
    __asm__ volatile ("" : : : "memory");
}
# 304 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
void __attribute__((noreturn)) panic_unsupported(void);
# 315 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
void __attribute__((noreturn)) panic(const char *fmt, ...);
# 331 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"

# 331 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 3 4
_Bool 
# 331 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
    running_on_fpga(void);






uint8_t rp2040_chip_version(void);





static inline uint8_t rp2040_rom_version(void) {
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Warray-bounds"
    return *(uint8_t*)0x13;
#pragma GCC diagnostic pop
}
# 358 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
static 
# 358 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 3
      __inline__ __attribute__((__always_inline__)) 
# 358 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
                     void tight_loop_contents(void) {}
# 370 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"

# 370 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 3
__inline__ __attribute__((__always_inline__)) 
# 370 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
              static int32_t __mul_instruction(int32_t a, int32_t b) {
    asm ("mul %0, %1" : "+l" (a) : "l" (b) : );
    return a;
}
# 405 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
static inline uint __get_current_exception(void) {
    uint exception;
    asm ("mrs %0, ipsr" : "=l" (exception));
    return exception;
}
# 432 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
static inline void busy_wait_at_least_cycles(uint32_t minimum_cycles) {
    __asm volatile (
        ".syntax unified\n"
        "1: subs %0, #3\n"
        "bcs 1b\n"
        : "+r" (minimum_cycles) : : "memory"
    );
}







# 446 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 3
__inline__ __attribute__((__always_inline__)) 
# 446 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
              static uint get_core_num(void) {
    return (*(uint32_t *) (0xd0000000u + 0x00000000u));
}
# 34 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/error.h" 1
# 16 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/error.h"
enum pico_error_codes {
    PICO_OK = 0,
    PICO_ERROR_NONE = 0,
    PICO_ERROR_TIMEOUT = -1,
    PICO_ERROR_GENERIC = -2,
    PICO_ERROR_NO_DATA = -3,
    PICO_ERROR_NOT_PERMITTED = -4,
    PICO_ERROR_INVALID_ARG = -5,
    PICO_ERROR_IO = -6,
    PICO_ERROR_BADAUTH = -7,
    PICO_ERROR_CONNECT_FAILED = -8,
};
# 35 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h" 1
# 12 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h"
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 1
# 63 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
typedef volatile uint32_t io_rw_32;
typedef const volatile uint32_t io_ro_32;
typedef volatile uint32_t io_wo_32;
typedef volatile uint16_t io_rw_16;
typedef const volatile uint16_t io_ro_16;
typedef volatile uint16_t io_wo_16;
typedef volatile uint8_t io_rw_8;
typedef const volatile uint8_t io_ro_8;
typedef volatile uint8_t io_wo_8;

typedef volatile uint8_t *const ioptr;
typedef ioptr const const_ioptr;
# 93 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"

# 93 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 3
__inline__ __attribute__((__always_inline__)) 
# 93 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
              static uint32_t xip_alias_check_addr(const void *addr) {
    uint32_t rc = (uintptr_t)addr;
    ({if (((0 || 0) && !0)) 
# 95 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 3
   ((void)0)
# 95 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
   ;});
    return rc;
}
# 121 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"

# 121 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 3
__inline__ __attribute__((__always_inline__)) 
# 121 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
              static void hw_set_bits(io_rw_32 *addr, uint32_t mask) {
    *(io_rw_32 *) ((void *)((0x2u << 12u) | ((uintptr_t)((volatile void *) addr)))) = mask;
}








# 131 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 3
__inline__ __attribute__((__always_inline__)) 
# 131 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
              static void hw_clear_bits(io_rw_32 *addr, uint32_t mask) {
    *(io_rw_32 *) ((void *)((0x3u << 12u) | ((uintptr_t)((volatile void *) addr)))) = mask;
}








# 141 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 3
__inline__ __attribute__((__always_inline__)) 
# 141 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
              static void hw_xor_bits(io_rw_32 *addr, uint32_t mask) {
    *(io_rw_32 *) ((void *)((0x1u << 12u) | ((uintptr_t)((volatile void *) addr)))) = mask;
}
# 157 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"

# 157 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 3
__inline__ __attribute__((__always_inline__)) 
# 157 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
              static void hw_write_masked(io_rw_32 *addr, uint32_t values, uint32_t write_mask) {
    hw_xor_bits(addr, (*addr ^ values) & write_mask);
}
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/timer.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h" 2
# 23 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h"
typedef struct {
   

    io_wo_32 timehw;

   

    io_wo_32 timelw;

   

    io_ro_32 timehr;

   

    io_ro_32 timelr;

   



    io_rw_32 alarm[4u];

   


    io_rw_32 armed;

   

    io_ro_32 timerawh;

   

    io_ro_32 timerawl;

   



    io_rw_32 dbgpause;

   


    io_rw_32 pause;

   





    io_rw_32 intr;

   





    io_rw_32 inte;

   





    io_rw_32 intf;

   





    io_ro_32 ints;
} timer_hw_t;




# 105 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h" 3
_Static_assert
# 105 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h"
            ( 4u == 4, "");
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 2
# 53 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
static inline void check_hardware_alarm_num_param(
# 53 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 3
                                                 __attribute__((__unused__)) 
# 53 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
                                                          uint alarm_num) {
    ({if (((0 || 0) && !0)) 
# 54 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 3
   ((void)0)
# 54 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
   ;});
}
# 65 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
static inline uint32_t time_us_32(void) {
    return ((timer_hw_t *)0x40054000u)->timerawl;
}
# 78 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
uint64_t time_us_64(void);






void busy_wait_us_32(uint32_t delay_us);






void busy_wait_us(uint64_t delay_us);






void busy_wait_ms(uint32_t delay_ms);






void busy_wait_until(absolute_time_t t);







static inline 
# 114 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 3 4
             _Bool 
# 114 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
                  time_reached(absolute_time_t t) {
    uint64_t target = to_us_since_boot(t);
    uint32_t hi_target = (uint32_t)(target >> 32u);
    uint32_t hi = ((timer_hw_t *)0x40054000u)->timerawh;
    return (hi >= hi_target && (((timer_hw_t *)0x40054000u)->timerawl >= (uint32_t) target || hi != hi_target));
}







typedef void (*hardware_alarm_callback_t)(uint alarm_num);
# 137 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
void hardware_alarm_claim(uint alarm_num);
# 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
int hardware_alarm_claim_unused(
# 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 3 4
                               _Bool 
# 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
                                    required);







void hardware_alarm_unclaim(uint alarm_num);
# 164 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"

# 164 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 3 4
_Bool 
# 164 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
    hardware_alarm_is_claimed(uint alarm_num);
# 182 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
void hardware_alarm_set_callback(uint alarm_num, hardware_alarm_callback_t callback);
# 194 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"

# 194 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 3 4
_Bool 
# 194 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
    hardware_alarm_set_target(uint alarm_num, absolute_time_t t);







void hardware_alarm_cancel(uint alarm_num);
# 216 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
void hardware_alarm_force_irq(uint alarm_num);
# 8 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 1
# 30 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/intctrl.h" 1
# 31 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/m0plus.h" 1
# 32 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 2
# 128 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
typedef void (*irq_handler_t)(void);

static inline void check_irq_param(
# 130 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3
                                  __attribute__((__unused__)) 
# 130 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
                                           uint num) {
    ({if (((0 || 0) && !0)) 
# 131 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3
   ((void)0)
# 131 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
   ;});
}
# 146 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void irq_set_priority(uint num, uint8_t hardware_priority);
# 161 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
uint irq_get_priority(uint num);







void irq_set_enabled(uint num, 
# 169 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3 4
                              _Bool 
# 169 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
                                   enabled);








# 177 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3 4
_Bool 
# 177 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
    irq_is_enabled(uint num);







void irq_set_mask_enabled(uint32_t mask, 
# 185 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3 4
                                        _Bool 
# 185 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
                                             enabled);
# 201 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void irq_set_exclusive_handler(uint num, irq_handler_t handler);
# 214 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
irq_handler_t irq_get_exclusive_handler(uint num);
# 240 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void irq_add_shared_handler(uint num, irq_handler_t handler, uint8_t order_priority);
# 258 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void irq_remove_handler(uint num, irq_handler_t handler);








# 266 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3 4
_Bool 
# 266 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
    irq_has_shared_handler(uint num);
# 275 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
irq_handler_t irq_get_vtable_handler(uint num);
# 286 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
static inline void irq_clear(uint int_num) {
    *((volatile uint32_t *) (0xe0000000u + 0x0000e280u)) = (1u << ((uint32_t) (int_num & 0x1F)));
}
# 297 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void irq_set_pending(uint num);






void irq_init_priorities(void);
# 318 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void user_irq_claim(uint irq_num);
# 334 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void user_irq_unclaim(uint irq_num);
# 349 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
int user_irq_claim_unused(
# 349 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3 4
                         _Bool 
# 349 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
                              required);
# 366 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"

# 366 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3 4
_Bool 
# 366 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
    user_irq_is_claimed(uint irq_num);
# 9 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
# 56 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
typedef volatile uint32_t spin_lock_t;
# 117 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"

# 117 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 117 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __sev(void) {
    __asm volatile ("sev");
}








# 127 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 127 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __wfe(void) {
    __asm volatile ("wfe");
}







# 136 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 136 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __wfi(void) {
    __asm volatile ("wfi");
}








# 146 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 146 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __dmb(void) {
    __asm volatile ("dmb" : : : "memory");
}
# 157 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"

# 157 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 157 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __dsb(void) {
    __asm volatile ("dsb" : : : "memory");
}
# 168 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"

# 168 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 168 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __isb(void) {
    __asm volatile ("isb");
}





# 175 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 175 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __mem_fence_acquire(void) {



    __dmb();





}






# 191 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 191 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __mem_fence_release(void) {



    __dmb();





}







# 208 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 208 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static uint32_t save_and_disable_interrupts(void) {
    uint32_t status;
    __asm volatile ("mrs %0, PRIMASK" : "=r" (status)::);
    __asm volatile ("cpsid i");
    return status;
}







# 220 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 220 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void restore_interrupts(uint32_t status) {
    __asm volatile ("msr PRIMASK,%0"::"r" (status) : );
}








# 230 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 230 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static spin_lock_t *spin_lock_instance(uint lock_num) {
    ({if (((0 || 0) && !0)) 
# 231 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
   ((void)0)
# 231 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
   ;});
    return (spin_lock_t *) (0xd0000000u + 0x00000100u + lock_num * 4);
}








# 241 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 241 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static uint spin_lock_get_num(spin_lock_t *lock) {
    ({if (((0 || 0) && !0)) 
# 242 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
   ((void)0)
# 242 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
   ;})

                                                                                                       ;
    return (uint) (lock - (spin_lock_t *) (0xd0000000u + 0x00000100u));
}







# 253 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 253 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void spin_lock_unsafe_blocking(spin_lock_t *lock) {



    while (__builtin_expect(!*lock, 0));
    __mem_fence_acquire();
}







# 266 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 266 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void spin_unlock_unsafe(spin_lock_t *lock) {
    __mem_fence_release();
    *lock = 0;
}
# 279 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"

# 279 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 279 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static uint32_t spin_lock_blocking(spin_lock_t *lock) {
    uint32_t save = save_and_disable_interrupts();
    spin_lock_unsafe_blocking(lock);
    return save;
}






inline static 
# 290 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3 4
             _Bool 
# 290 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
                  is_spin_locked(spin_lock_t *lock) {
    
# 291 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
   _Static_assert
# 291 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
   (sizeof(spin_lock_t) == (4), "hw size mismatch");
    uint lock_num = spin_lock_get_num(lock);
    return 0 != (*(io_ro_32 *) (0xd0000000u + 0x0000005cu) & (1u << lock_num));
}
# 307 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"

# 307 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 307 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void spin_unlock(spin_lock_t *lock, uint32_t saved_irq) {
    spin_unlock_unsafe(lock);
    restore_interrupts(saved_irq);
}
# 320 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
spin_lock_t *spin_lock_init(uint lock_num);




void spin_locks_reset(void);
# 342 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
uint next_striped_spin_lock_num(void);
# 353 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
void spin_lock_claim(uint lock_num);
# 364 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
void spin_lock_claim_mask(uint32_t lock_num_mask);
# 373 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
void spin_lock_unclaim(uint lock_num);







int spin_lock_claim_unused(
# 381 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3 4
                          _Bool 
# 381 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
                               required);
# 391 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"

# 391 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3 4
_Bool 
# 391 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
    spin_lock_is_claimed(uint lock_num);
# 10 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h" 1
# 48 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
void hw_claim_or_assert(uint8_t *bits, uint bit_index, const char *message);
# 60 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
int hw_claim_unused_from_range(uint8_t *bits, 
# 60 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h" 3 4
                                             _Bool 
# 60 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
                                                  required, uint bit_lsb, uint bit_msb, const char *message);
# 71 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"

# 71 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h" 3 4
_Bool 
# 71 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
    hw_is_claimed(const uint8_t *bits, uint bit_index);
# 81 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
void hw_claim_clear(uint8_t *bits, uint bit_index);
# 94 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
uint32_t hw_claim_lock(void);
# 103 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
void hw_claim_unlock(uint32_t token);
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 2


# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3
_Static_assert
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
(
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
__builtin_offsetof (
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
timer_hw_t
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
, 
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
ints
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
) 
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
== (0x00000040u), "hw offset mismatch");

static hardware_alarm_callback_t alarm_callbacks[4u];
static uint32_t target_hi[4u];
static uint8_t timer_callbacks_pending;


# 18 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3
_Static_assert
# 18 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
            (4u <= 4, "");
static uint8_t claimed;

void hardware_alarm_claim(uint alarm_num) {
    check_hardware_alarm_num_param(alarm_num);
    hw_claim_or_assert(&claimed, alarm_num, "Hardware alarm %d already claimed");
}

void hardware_alarm_unclaim(uint alarm_num) {
    check_hardware_alarm_num_param(alarm_num);
    hw_claim_clear(&claimed, alarm_num);
}


# 31 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
_Bool 
# 31 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
    hardware_alarm_is_claimed(uint alarm_num) {
    check_hardware_alarm_num_param(alarm_num);
    return hw_is_claimed(&claimed, alarm_num);
}

int hardware_alarm_claim_unused(
# 36 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
                               _Bool 
# 36 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
                                    required) {
    return hw_claim_unused_from_range(&claimed, required, 0, 4u - 1, "No timers available");
}


uint64_t time_us_64() {


    uint32_t hi = ((timer_hw_t *)0x40054000u)->timerawh;
    uint32_t lo;
    do {

        lo = ((timer_hw_t *)0x40054000u)->timerawl;



        uint32_t next_hi = ((timer_hw_t *)0x40054000u)->timerawh;
        if (hi == next_hi) break;
        hi = next_hi;
    } while (
# 55 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
            1
# 55 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
                );
    return ((uint64_t) hi << 32u) | lo;
}



void busy_wait_us_32(uint32_t delay_us) {
    if (0 <= (int32_t)delay_us) {


        uint32_t start = ((timer_hw_t *)0x40054000u)->timerawl;
        while (((timer_hw_t *)0x40054000u)->timerawl - start < delay_us) {
            tight_loop_contents();
        }
    } else {
        busy_wait_us(delay_us);
    }
}

void busy_wait_us(uint64_t delay_us) {
    uint64_t base = time_us_64();
    uint64_t target = base + delay_us;
    if (target < base) {
        target = (uint64_t)-1;
    }
    absolute_time_t t;
    update_us_since_boot(&t, target);
    busy_wait_until(t);
}

void busy_wait_ms(uint32_t delay_ms)
{
    if (delay_ms <= 0x7fffffffu / 1000) {
        busy_wait_us_32(delay_ms * 1000);
    } else {
        busy_wait_us(delay_ms * 1000ull);
    }
}

void busy_wait_until(absolute_time_t t) {
    uint64_t target = to_us_since_boot(t);
    uint32_t hi_target = (uint32_t)(target >> 32u);
    uint32_t hi = ((timer_hw_t *)0x40054000u)->timerawh;
    while (hi < hi_target) {
        hi = ((timer_hw_t *)0x40054000u)->timerawh;
        tight_loop_contents();
    }
    while (hi == hi_target && ((timer_hw_t *)0x40054000u)->timerawl < (uint32_t) target) {
        hi = ((timer_hw_t *)0x40054000u)->timerawh;
        tight_loop_contents();
    }
}


static inline uint harware_alarm_irq_number(uint alarm_num) {
    return 0 + alarm_num;
}

static void hardware_alarm_irq_handler(void) {

    uint alarm_num = __get_current_exception() - 16 - 0;
    check_hardware_alarm_num_param(alarm_num);

    hardware_alarm_callback_t callback = 
# 118 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
                                        ((void *)0)
# 118 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
                                            ;

    spin_lock_t *lock = spin_lock_instance(10);
    uint32_t save = spin_lock_blocking(lock);

    ((timer_hw_t *)0x40054000u)->intr = 1u << alarm_num;

    hw_clear_bits(&((timer_hw_t *)0x40054000u)->intf, 1u << alarm_num);


    if (timer_callbacks_pending & (1u << alarm_num)) {


        if (((timer_hw_t *)0x40054000u)->timerawh >= target_hi[alarm_num]) {

            callback = alarm_callbacks[alarm_num];
            timer_callbacks_pending &= (uint8_t)~(1u << alarm_num);
        } else {

            ((timer_hw_t *)0x40054000u)->alarm[alarm_num] = ((timer_hw_t *)0x40054000u)->alarm[alarm_num];
        }
    }

    spin_unlock(lock, save);

    if (callback) {
        callback(alarm_num);
    }
}

void hardware_alarm_set_callback(uint alarm_num, hardware_alarm_callback_t callback) {



    check_hardware_alarm_num_param(alarm_num);
    uint irq_num = harware_alarm_irq_number(alarm_num);
    spin_lock_t *lock = spin_lock_instance(10);
    uint32_t save = spin_lock_blocking(lock);
    if (callback) {
        if (hardware_alarm_irq_handler != irq_get_vtable_handler(irq_num)) {


            irq_set_exclusive_handler(irq_num, hardware_alarm_irq_handler);
            irq_set_enabled(irq_num, 
# 161 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
                                    1
# 161 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
                                        );

            hw_set_bits(&((timer_hw_t *)0x40054000u)->inte, 1u << alarm_num);
        }
        alarm_callbacks[alarm_num] = callback;
    } else {
        alarm_callbacks[alarm_num] = 
# 167 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
                                    ((void *)0)
# 167 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
                                        ;
        timer_callbacks_pending &= (uint8_t)~(1u << alarm_num);
        irq_remove_handler(irq_num, hardware_alarm_irq_handler);
        irq_set_enabled(irq_num, 
# 170 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
                                0
# 170 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
                                     );
    }
    spin_unlock(lock, save);
}


# 175 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
_Bool 
# 175 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
    hardware_alarm_set_target(uint alarm_num, absolute_time_t target) {
    
# 176 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
   _Bool 
# 176 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
        missed;
    uint64_t now = time_us_64();
    uint64_t t = to_us_since_boot(target);
    if (now >= t) {
        missed = 
# 180 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
                1
# 180 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
                    ;
    } else {
        missed = 
# 182 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
                0
# 182 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
                     ;


        spin_lock_t *lock = spin_lock_instance(10);
        uint32_t save = spin_lock_blocking(lock);
        uint8_t old_timer_callbacks_pending = timer_callbacks_pending;
        timer_callbacks_pending |= (uint8_t)(1u << alarm_num);
        ((timer_hw_t *)0x40054000u)->intr = 1u << alarm_num;
        ((timer_hw_t *)0x40054000u)->alarm[alarm_num] = (uint32_t) t;

        target_hi[alarm_num] = (uint32_t)(t >> 32u);


        if (!(((timer_hw_t *)0x40054000u)->armed & 1u << alarm_num)) {

            
# 197 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3
           ((void)0)
# 197 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
                                                   ;
        } else {
            if (time_us_64() >= t) {



                missed = 
# 203 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c" 3 4
                        1
# 203 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/timer.c"
                            ;
                if (timer_callbacks_pending != old_timer_callbacks_pending) {

                    ((timer_hw_t *)0x40054000u)->armed = 1u << alarm_num;

                    ((timer_hw_t *)0x40054000u)->intr = 1u << alarm_num;


                    irq_clear(harware_alarm_irq_number(alarm_num));


                    timer_callbacks_pending = old_timer_callbacks_pending;
                }
            }
        }
        spin_unlock(lock, save);

    }
    return missed;
}

void hardware_alarm_cancel(uint alarm_num) {
    check_hardware_alarm_num_param(alarm_num);

    spin_lock_t *lock = spin_lock_instance(10);
    uint32_t save = spin_lock_blocking(lock);
    ((timer_hw_t *)0x40054000u)->armed = 1u << alarm_num;
    timer_callbacks_pending &= (uint8_t)~(1u << alarm_num);
    spin_unlock(lock, save);
}

void hardware_alarm_force_irq(uint alarm_num) {
    check_hardware_alarm_num_param(alarm_num);
    spin_lock_t *lock = spin_lock_instance(10);
    uint32_t save = spin_lock_blocking(lock);
    timer_callbacks_pending |= (uint8_t)(1u << alarm_num);
    spin_unlock(lock, save);
    hw_set_bits(&((timer_hw_t *)0x40054000u)->intf, 1u << alarm_num);
}
