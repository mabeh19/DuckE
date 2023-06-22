# 0 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"






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
# 8 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/clocks.h" 1
# 9 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 2

# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h" 1
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h" 1
# 12 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
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
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h" 2
# 27 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
enum clock_index {
    clk_gpout0 = 0,
    clk_gpout1,
    clk_gpout2,
    clk_gpout3,
    clk_ref,
    clk_sys,
    clk_peri,
    clk_usb,
    clk_adc,
    clk_rtc,
    CLK_COUNT
};



typedef struct {
   







    io_rw_32 ctrl;

   



    io_rw_32 div;

   

    io_ro_32 selected;
} clock_hw_t;


typedef struct {
   




    io_rw_32 ctrl;

   

    io_ro_32 status;
} clock_resus_hw_t;

typedef struct {
   


    io_rw_32 ref_khz;

   


    io_rw_32 min_khz;

   


    io_rw_32 max_khz;

   


    io_rw_32 delay;

   


    io_rw_32 interval;

   


    io_rw_32 src;

   
# 120 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_ro_32 status;

   



    io_ro_32 result;
} fc_hw_t;

typedef struct {
    clock_hw_t clk[CLK_COUNT];

    clock_resus_hw_t resus;

    fc_hw_t fc0;

   
# 170 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_rw_32 wake_en0;

   
# 189 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_rw_32 wake_en1;

   
# 225 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_rw_32 sleep_en0;

   
# 244 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_rw_32 sleep_en1;

   
# 280 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_ro_32 enabled0;

   
# 299 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_ro_32 enabled1;

   


    io_ro_32 intr;

   


    io_rw_32 inte;

   


    io_rw_32 intf;

   


    io_ro_32 ints;
} clocks_hw_t;




# 324 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h" 3
_Static_assert
# 324 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
            ( CLK_COUNT == 10, "");
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h" 2
# 102 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
void clocks_init(void);
# 115 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"

# 115 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h" 3 4
_Bool 
# 115 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
    clock_configure(enum clock_index clk_index, uint32_t src, uint32_t auxsrc, uint32_t src_freq, uint32_t freq);






void clock_stop(enum clock_index clk_index);







uint32_t clock_get_hz(enum clock_index clk_index);







uint32_t frequency_count_khz(uint src);






void clock_set_reported_hz(enum clock_index clk_index, uint hz);


static inline float frequency_count_mhz(uint src) {
    return ((float) (frequency_count_khz(src))) / 1000;
}







typedef void (*resus_callback_t)(void);
# 168 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
void clocks_enable_resus(resus_callback_t resus_callback);
# 178 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
void clock_gpio_init_int_frac(uint gpio, uint src, uint32_t div_int, uint8_t div_frac);
# 187 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
static inline void clock_gpio_init(uint gpio, uint src, float div)
{
    uint div_int = (uint)div;
    uint8_t frac = (uint8_t)((div - (float)div_int) * (1u << 8u));
    clock_gpio_init_int_frac(gpio, src, div_int, frac);
}
# 202 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"

# 202 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h" 3 4
_Bool 
# 202 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
    clock_configure_gpin(enum clock_index clk_index, uint gpio, uint32_t src_freq, uint32_t freq);
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h" 1
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/watchdog.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/watchdog.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/watchdog.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/watchdog.h" 2
# 23 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/watchdog.h"
typedef struct {
   







    io_rw_32 ctrl;

   


    io_wo_32 load;

   



    io_ro_32 reason;

   



    io_rw_32 scratch[8];

   





    io_rw_32 tick;
} watchdog_hw_t;
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h" 2
# 45 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h"
void watchdog_reboot(uint32_t pc, uint32_t sp, uint32_t delay_ms);







void watchdog_start_tick(uint cycles);





void watchdog_update(void);
# 78 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h"
void watchdog_enable(uint32_t delay_ms, 
# 78 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h" 3 4
                                       _Bool 
# 78 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h"
                                            pause_on_debug);
# 87 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h"

# 87 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h" 3 4
_Bool 
# 87 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h"
    watchdog_caused_reboot(void);
# 106 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h"

# 106 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h" 3 4
_Bool 
# 106 "/home/mathias/pico-sdk/src/rp2_common/hardware_watchdog/include/hardware/watchdog.h"
    watchdog_enable_caused_reboot(void);







uint32_t watchdog_get_count(void);
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_pll/include/hardware/pll.h" 1
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_pll/include/hardware/pll.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/pll.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/pll.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/pll.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/pll.h" 2
# 24 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/pll.h"
typedef struct {
   




    io_rw_32 cs;

   





    io_rw_32 pwr;

   


    io_rw_32 fbdiv_int;

   



    io_rw_32 prim;
} pll_hw_t;
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_pll/include/hardware/pll.h" 2
# 29 "/home/mathias/pico-sdk/src/rp2_common/hardware_pll/include/hardware/pll.h"
typedef pll_hw_t *PLL;
# 50 "/home/mathias/pico-sdk/src/rp2_common/hardware_pll/include/hardware/pll.h"
void pll_init(PLL pll, uint ref_div, uint vco_freq, uint post_div1, uint post_div2);
# 60 "/home/mathias/pico-sdk/src/rp2_common/hardware_pll/include/hardware/pll.h"
void pll_deinit(PLL pll);
# 13 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_xosc/include/hardware/xosc.h" 1
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_xosc/include/hardware/xosc.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/xosc.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/xosc.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/xosc.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/xosc.h" 2
# 24 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/xosc.h"
typedef struct {
   



    io_rw_32 ctrl;

   





    io_rw_32 status;

   

    io_rw_32 dormant;

   



    io_rw_32 startup;

    uint32_t _pad0[3];

   


    io_rw_32 count;
} xosc_hw_t;
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_xosc/include/hardware/xosc.h" 2
# 37 "/home/mathias/pico-sdk/src/rp2_common/hardware_xosc/include/hardware/xosc.h"
void xosc_init(void);






void xosc_disable(void);
# 53 "/home/mathias/pico-sdk/src/rp2_common/hardware_xosc/include/hardware/xosc.h"
void xosc_dormant(void);
# 14 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 2
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
# 15 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 1
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/sio.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/sio.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/interp.h" 1
# 23 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/interp.h"
typedef struct {
   



    io_rw_32 accum[2];

   



    io_rw_32 base[3];

   



    io_ro_32 pop[3];

   



    io_ro_32 peek[3];

   
# 64 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/interp.h"
    io_rw_32 ctrl[2];

   




    io_rw_32 add_raw[2];

   

    io_wo_32 base01;
} interp_hw_t;
# 15 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/sio.h" 2
# 24 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/sio.h"
typedef struct {
   

    io_ro_32 cpuid;

   


    io_ro_32 gpio_in;

   


    io_ro_32 gpio_hi_in;

    uint32_t _pad0;

   


    io_rw_32 gpio_out;

   


    io_wo_32 gpio_set;

   


    io_wo_32 gpio_clr;

   


    io_wo_32 gpio_togl;

   


    io_rw_32 gpio_oe;

   


    io_wo_32 gpio_oe_set;

   


    io_wo_32 gpio_oe_clr;

   


    io_wo_32 gpio_oe_togl;

   


    io_rw_32 gpio_hi_out;

   


    io_wo_32 gpio_hi_set;

   


    io_wo_32 gpio_hi_clr;

   


    io_wo_32 gpio_hi_togl;

   


    io_rw_32 gpio_hi_oe;

   


    io_wo_32 gpio_hi_oe_set;

   


    io_wo_32 gpio_hi_oe_clr;

   


    io_wo_32 gpio_hi_oe_togl;

   





    io_rw_32 fifo_st;

   

    io_wo_32 fifo_wr;

   

    io_ro_32 fifo_rd;

   

    io_ro_32 spinlock_st;

   

    io_rw_32 div_udividend;

   

    io_rw_32 div_udivisor;

   

    io_rw_32 div_sdividend;

   

    io_rw_32 div_sdivisor;

   

    io_rw_32 div_quotient;

   

    io_rw_32 div_remainder;

   



    io_ro_32 div_csr;
    uint32_t _pad1;
    interp_hw_t interp[2];
} sio_hw_t;
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/padsbank0.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/padsbank0.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/pads_bank0.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/padsbank0.h" 2
# 23 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/padsbank0.h"
typedef struct {
   


    io_rw_32 voltage_select;

   
# 40 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/padsbank0.h"
    io_rw_32 io[30u];
} padsbank0_hw_t;




# 45 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/padsbank0.h" 3
_Static_assert
# 45 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/padsbank0.h"
            ( 30u == 30, "");
# 13 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/iobank0.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/iobank0.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/io_bank0.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/iobank0.h" 2
# 23 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/iobank0.h"
typedef struct {
   
# 34 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/iobank0.h"
    io_ro_32 status;

   






    io_rw_32 ctrl;
} iobank0_status_ctrl_hw_t;

typedef struct {
   
# 83 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/iobank0.h"
    io_rw_32 inte[4];

   
# 121 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/iobank0.h"
    io_rw_32 intf[4];

   
# 159 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/iobank0.h"
    io_ro_32 ints[4];
} io_irq_ctrl_hw_t;


typedef struct {
    iobank0_status_ctrl_hw_t io[30u];

   
# 202 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/iobank0.h"
    io_rw_32 intr[4];

    io_irq_ctrl_hw_t proc0_irq_ctrl;

    io_irq_ctrl_hw_t proc1_irq_ctrl;

    io_irq_ctrl_hw_t dormant_wake_irq_ctrl;
} iobank0_hw_t;





# 214 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/iobank0.h" 3
_Static_assert
# 214 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/iobank0.h"
            ( 30u == 30, "");
# 14 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 2
# 90 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
enum gpio_function {
    GPIO_FUNC_XIP = 0,
    GPIO_FUNC_SPI = 1,
    GPIO_FUNC_UART = 2,
    GPIO_FUNC_I2C = 3,
    GPIO_FUNC_PWM = 4,
    GPIO_FUNC_SIO = 5,
    GPIO_FUNC_PIO0 = 6,
    GPIO_FUNC_PIO1 = 7,
    GPIO_FUNC_GPCK = 8,
    GPIO_FUNC_USB = 9,
    GPIO_FUNC_NULL = 0x1f,
};
# 122 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
enum gpio_irq_level {
    GPIO_IRQ_LEVEL_LOW = 0x1u,
    GPIO_IRQ_LEVEL_HIGH = 0x2u,
    GPIO_IRQ_EDGE_FALL = 0x4u,
    GPIO_IRQ_EDGE_RISE = 0x8u,
};
# 137 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
typedef void (*gpio_irq_callback_t)(uint gpio, uint32_t event_mask);

enum gpio_override {
    GPIO_OVERRIDE_NORMAL = 0,
    GPIO_OVERRIDE_INVERT = 1,
    GPIO_OVERRIDE_LOW = 2,
    GPIO_OVERRIDE_HIGH = 3,
};
# 153 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
enum gpio_slew_rate {
    GPIO_SLEW_RATE_SLOW = 0,
    GPIO_SLEW_RATE_FAST = 1
};







enum gpio_drive_strength {
    GPIO_DRIVE_STRENGTH_2MA = 0,
    GPIO_DRIVE_STRENGTH_4MA = 1,
    GPIO_DRIVE_STRENGTH_8MA = 2,
    GPIO_DRIVE_STRENGTH_12MA = 3
};

static inline void check_gpio_param(
# 171 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3
                                   __attribute__((__unused__)) 
# 171 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                            uint gpio) {
    ({if (((0 || 0) && !0)) 
# 172 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3
   ((void)0)
# 172 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
   ;});
}
# 186 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_set_function(uint gpio, enum gpio_function fn);







enum gpio_function gpio_get_function(uint gpio);
# 206 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_set_pulls(uint gpio, 
# 206 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                              _Bool 
# 206 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                   up, 
# 206 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                                       _Bool 
# 206 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                            down);






static inline void gpio_pull_up(uint gpio) {
    gpio_set_pulls(gpio, 
# 214 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                        1
# 214 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                            , 
# 214 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                              0
# 214 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                   );
}







static inline 
# 223 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
             _Bool 
# 223 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                  gpio_is_pulled_up(uint gpio) {
    return (((padsbank0_hw_t *)0x4001c000u)->io[gpio] & 0x00000008u) != 0;
}






static inline void gpio_pull_down(uint gpio) {
    gpio_set_pulls(gpio, 
# 233 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                        0
# 233 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                             , 
# 233 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                               1
# 233 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                   );
}







static inline 
# 242 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
             _Bool 
# 242 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                  gpio_is_pulled_down(uint gpio) {
    return (((padsbank0_hw_t *)0x4001c000u)->io[gpio] & 0x00000004u) != 0;
}






static inline void gpio_disable_pulls(uint gpio) {
    gpio_set_pulls(gpio, 
# 252 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                        0
# 252 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                             , 
# 252 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                               0
# 252 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                    );
}
# 263 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_set_irqover(uint gpio, uint value);







void gpio_set_outover(uint gpio, uint value);







void gpio_set_inover(uint gpio, uint value);







void gpio_set_oeover(uint gpio, uint value);







void gpio_set_input_enabled(uint gpio, 
# 295 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                                      _Bool 
# 295 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                           enabled);
# 309 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_set_input_hysteresis_enabled(uint gpio, 
# 309 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                                                 _Bool 
# 309 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                                      enabled);








# 317 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
_Bool 
# 317 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
    gpio_is_input_hysteresis_enabled(uint gpio);
# 327 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_set_slew_rate(uint gpio, enum gpio_slew_rate slew);
# 336 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
enum gpio_slew_rate gpio_get_slew_rate(uint gpio);
# 345 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_set_drive_strength(uint gpio, enum gpio_drive_strength drive);
# 354 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
enum gpio_drive_strength gpio_get_drive_strength(uint gpio);
# 381 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_set_irq_enabled(uint gpio, uint32_t event_mask, 
# 381 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                                                         _Bool 
# 381 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                                              enabled);
# 407 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_set_irq_callback(gpio_irq_callback_t callback);
# 440 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_set_irq_enabled_with_callback(uint gpio, uint32_t event_mask, 
# 440 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                                                                       _Bool 
# 440 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                                                            enabled, gpio_irq_callback_t callback);
# 452 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_set_dormant_irq_enabled(uint gpio, uint32_t event_mask, 
# 452 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                                                                 _Bool 
# 452 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                                                      enabled);
# 461 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
static inline uint32_t gpio_get_irq_event_mask(uint gpio) {
    check_gpio_param(gpio);
    io_irq_ctrl_hw_t *irq_ctrl_base = get_core_num() ?
                                      &((iobank0_hw_t *)0x40014000u)->proc1_irq_ctrl : &((iobank0_hw_t *)0x40014000u)->proc0_irq_ctrl;
    io_ro_32 *status_reg = &irq_ctrl_base->ints[gpio >> 3u];
    return (*status_reg >> (4 * (gpio & 7u))) & 0xfu;
}
# 483 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_acknowledge_irq(uint gpio, uint32_t event_mask);
# 516 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_add_raw_irq_handler_with_order_priority_masked(uint gpio_mask, irq_handler_t handler, uint8_t order_priority);
# 545 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
static inline void gpio_add_raw_irq_handler_with_order_priority(uint gpio, irq_handler_t handler, uint8_t order_priority) {
    check_gpio_param(gpio);
    gpio_add_raw_irq_handler_with_order_priority_masked(1u << gpio, handler, order_priority);
}
# 578 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_add_raw_irq_handler_masked(uint gpio_mask, irq_handler_t handler);
# 604 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
static inline void gpio_add_raw_irq_handler(uint gpio, irq_handler_t handler) {
    check_gpio_param(gpio);
    gpio_add_raw_irq_handler_masked(1u << gpio, handler);
}
# 620 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_remove_raw_irq_handler_masked(uint gpio_mask, irq_handler_t handler);
# 633 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
static inline void gpio_remove_raw_irq_handler(uint gpio, irq_handler_t handler) {
    check_gpio_param(gpio);
    gpio_remove_raw_irq_handler_masked(1u << gpio, handler);
}
# 646 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_init(uint gpio);






void gpio_deinit(uint gpio);
# 663 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
void gpio_init_mask(uint gpio_mask);
# 674 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
static inline 
# 674 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
             _Bool 
# 674 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                  gpio_get(uint gpio) {
    return !!((1ul << gpio) & ((sio_hw_t *)0xd0000000u)->gpio_in);
}






static inline uint32_t gpio_get_all(void) {
    return ((sio_hw_t *)0xd0000000u)->gpio_in;
}
# 696 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
static inline void gpio_set_mask(uint32_t mask) {
    ((sio_hw_t *)0xd0000000u)->gpio_set = mask;
}






static inline void gpio_clr_mask(uint32_t mask) {
    ((sio_hw_t *)0xd0000000u)->gpio_clr = mask;
}






static inline void gpio_xor_mask(uint32_t mask) {
    ((sio_hw_t *)0xd0000000u)->gpio_togl = mask;
}
# 729 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
static inline void gpio_put_masked(uint32_t mask, uint32_t value) {
    ((sio_hw_t *)0xd0000000u)->gpio_togl = (((sio_hw_t *)0xd0000000u)->gpio_out ^ value) & mask;
}






static inline void gpio_put_all(uint32_t value) {
    ((sio_hw_t *)0xd0000000u)->gpio_out = value;
}







static inline void gpio_put(uint gpio, 
# 748 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                                      _Bool 
# 748 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                           value) {
    uint32_t mask = 1ul << gpio;
    if (value)
        gpio_set_mask(mask);
    else
        gpio_clr_mask(mask);
}
# 772 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
static inline 
# 772 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
             _Bool 
# 772 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                  gpio_get_out_level(uint gpio) {
    return !!(((sio_hw_t *)0xd0000000u)->gpio_out & (1u << gpio));
}
# 787 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
static inline void gpio_set_dir_out_masked(uint32_t mask) {
    ((sio_hw_t *)0xd0000000u)->gpio_oe_set = mask;
}






static inline void gpio_set_dir_in_masked(uint32_t mask) {
    ((sio_hw_t *)0xd0000000u)->gpio_oe_clr = mask;
}
# 811 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
static inline void gpio_set_dir_masked(uint32_t mask, uint32_t value) {
    ((sio_hw_t *)0xd0000000u)->gpio_oe_togl = (((sio_hw_t *)0xd0000000u)->gpio_oe ^ value) & mask;
}






static inline void gpio_set_dir_all_bits(uint32_t values) {
    ((sio_hw_t *)0xd0000000u)->gpio_oe = values;
}







static inline void gpio_set_dir(uint gpio, 
# 830 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
                                          _Bool 
# 830 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                                               out) {
    uint32_t mask = 1ul << gpio;
    if (out)
        gpio_set_dir_out_masked(mask);
    else
        gpio_set_dir_in_masked(mask);
}







static inline 
# 844 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 3 4
             _Bool 
# 844 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
                  gpio_is_dir_out(uint gpio) {
    return !!(((sio_hw_t *)0xd0000000u)->gpio_oe & (1u << (gpio)));
}







static inline uint gpio_get_dir(uint gpio) {
    return gpio_is_dir_out(gpio);
}

extern void gpio_debug_pins_init(void);
# 16 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 2


# 17 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 17 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
(
# 17 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
__builtin_offsetof (
# 17 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
clocks_hw_t
# 17 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
, 
# 17 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
clk[clk_adc].selected
# 17 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
) 
# 17 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
== (0x00000068u), "hw offset mismatch");

# 18 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 18 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
(
# 18 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
__builtin_offsetof (
# 18 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
clocks_hw_t
# 18 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
, 
# 18 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
fc0.result
# 18 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
) 
# 18 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
== (0x0000009cu), "hw offset mismatch");

# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
(
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
__builtin_offsetof (
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
clocks_hw_t
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
, 
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
ints
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
) 
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
== (0x000000c4u), "hw offset mismatch");

static uint32_t configured_freq[CLK_COUNT];

static resus_callback_t _resus_callback;







static inline 
# 31 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
             _Bool 
# 31 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
                  has_glitchless_mux(enum clock_index clk_index) {
    return clk_index == clk_sys || clk_index == clk_ref;
}

void clock_stop(enum clock_index clk_index) {
    clock_hw_t *clock = &((clocks_hw_t *)0x40008000u)->clk[clk_index];
    hw_clear_bits(&clock->ctrl, 0x00000800u);
    configured_freq[clk_index] = 0;
}



# 42 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
_Bool 
# 42 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
    clock_configure(enum clock_index clk_index, uint32_t src, uint32_t auxsrc, uint32_t src_freq, uint32_t freq) {
    uint32_t div;

    
# 45 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
   ((void)0)
# 45 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
                           ;

    if (freq > src_freq)
        return 
# 48 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
              0
# 48 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
                   ;


    div = (uint32_t) (((uint64_t) src_freq << 8) / freq);

    clock_hw_t *clock = &((clocks_hw_t *)0x40008000u)->clk[clk_index];




    if (div > clock->div)
        clock->div = div;




    if (has_glitchless_mux(clk_index) && src == 0x1u) {
        hw_clear_bits(&clock->ctrl, 0x00000003u);
        while (!(clock->selected & 1u))
            tight_loop_contents();
    }



    else {


        hw_clear_bits(&clock->ctrl, 0x00000800u);
        if (configured_freq[clk_index] > 0) {



            uint delay_cyc = configured_freq[clk_sys] / configured_freq[clk_index] + 1;
            asm volatile (
                ".syntax unified \n\t"
                "1: \n\t"
                "subs %0, #1 \n\t"
                "bne 1b"
                : "+r" (delay_cyc)
            );
        }
    }


    hw_write_masked(&clock->ctrl,
        (auxsrc << 5u),
        0x000000e0u
    );

    if (has_glitchless_mux(clk_index)) {
        hw_write_masked(&clock->ctrl,
            src << 0u,
            0x00000003u
        );
        while (!(clock->selected & (1u << src)))
            tight_loop_contents();
    }



    hw_set_bits(&clock->ctrl, 0x00000800u);



    clock->div = div;


    configured_freq[clk_index] = (uint32_t)(((uint64_t) src_freq << 8) / div);

    return 
# 117 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
          1
# 117 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
              ;
}


void clocks_init(void) {

    watchdog_start_tick(12u);


    if (running_on_fpga()) {
        for (uint i = 0; i < CLK_COUNT; i++) {
            configured_freq[i] = 48 * 1000000;
        }
        configured_freq[clk_rtc] = 46875;
        return;
    }


    ((clocks_hw_t *)0x40008000u)->resus.ctrl = 0;


    xosc_init();


    hw_clear_bits(&((clocks_hw_t *)0x40008000u)->clk[clk_sys].ctrl, 0x00000001u);
    while (((clocks_hw_t *)0x40008000u)->clk[clk_sys].selected != 0x1)
        tight_loop_contents();
    hw_clear_bits(&((clocks_hw_t *)0x40008000u)->clk[clk_ref].ctrl, 0x00000003u);
    while (((clocks_hw_t *)0x40008000u)->clk[clk_ref].selected != 0x1)
        tight_loop_contents();
# 156 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
    pll_init(((pll_hw_t *)0x40028000u), 1, 1500 * 1000000, 6, 2);
    pll_init(((pll_hw_t *)0x4002c000u), 1, 1200 * 1000000, 5, 5);




    clock_configure(clk_ref,
                    0x2u,
                    0,
                    12 * 1000000,
                    12 * 1000000);



    clock_configure(clk_sys,
                    0x1u,
                    0x0u,
                    125 * 1000000,
                    125 * 1000000);



    clock_configure(clk_usb,
                    0,
                    0x0u,
                    48 * 1000000,
                    48 * 1000000);


    clock_configure(clk_adc,
                    0,
                    0x0u,
                    48 * 1000000,
                    48 * 1000000);


    clock_configure(clk_rtc,
                    0,
                    0x0u,
                    48 * 1000000,
                    46875);



    clock_configure(clk_peri,
                    0,
                    0x0u,
                    125 * 1000000,
                    125 * 1000000);
}


uint32_t clock_get_hz(enum clock_index clk_index) {
    return configured_freq[clk_index];
}


void clock_set_reported_hz(enum clock_index clk_index, uint hz) {
    configured_freq[clk_index] = hz;
}


uint32_t frequency_count_khz(uint src) {
    fc_hw_t *fc = &((clocks_hw_t *)0x40008000u)->fc0;


    while(fc->status & 0x00000100u) {
        tight_loop_contents();
    }


    fc->ref_khz = clock_get_hz(clk_ref) / 1000;


    fc->interval = 10;


    fc->min_khz = 0;
    fc->max_khz = 0xffffffff;


    fc->src = src;

    while(!(fc->status & 0x00000010u)) {
        tight_loop_contents();
    }


    return fc->result >> 5u;
}


static void clocks_handle_resus(void) {




    uint clk_ref_freq = clock_get_hz(clk_ref);
    clock_configure(clk_sys,
                    0x0u,
                    0,
                    clk_ref_freq,
                    clk_ref_freq);


    
# 261 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
   ((void)0)
# 261 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
                                                                              ;


    hw_set_bits(&((clocks_hw_t *)0x40008000u)->resus.ctrl, 0x00010000u);
    hw_clear_bits(&((clocks_hw_t *)0x40008000u)->resus.ctrl, 0x00010000u);


    
# 268 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
   ((void)0)
# 268 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
                                                                                 ;


    if (_resus_callback) {
        _resus_callback();
    }
}

static void clocks_irq_handler(void) {


    uint32_t ints = ((clocks_hw_t *)0x40008000u)->ints;

    if (ints & 0x00000001u) {
        ints &= ~0x00000001u;
        clocks_handle_resus();
    }






}

void clocks_enable_resus(resus_callback_t resus_callback) {





    _resus_callback = resus_callback;

    irq_set_exclusive_handler(17, clocks_irq_handler);


    ((clocks_hw_t *)0x40008000u)->inte = 0x00000001u;


    irq_set_enabled(17, 
# 307 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
                               1
# 307 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
                                   );



    uint timeout = 2 * 3 * 1;


    ((clocks_hw_t *)0x40008000u)->resus.ctrl = 0x00000100u | timeout;
}

void clock_gpio_init_int_frac(uint gpio, uint src, uint32_t div_int, uint8_t div_frac) {



    uint gpclk = 0;
    if (gpio == 21) gpclk = clk_gpout0;
    else if (gpio == 23) gpclk = clk_gpout1;
    else if (gpio == 24) gpclk = clk_gpout2;
    else if (gpio == 25) gpclk = clk_gpout3;
    else {
        ({if (((0 || 0) && !0)) 
# 327 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
       ((void)0)
# 327 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
       ;});
    }


    ((clocks_hw_t *)0x40008000u)->clk[gpclk].ctrl = (src << 5u) |
                                 0x00000800u;
    ((clocks_hw_t *)0x40008000u)->clk[gpclk].div = (div_int << 8u) | div_frac;


    gpio_set_function(gpio, GPIO_FUNC_GPCK);
}

static const uint8_t gpin0_src[CLK_COUNT] = {
    0x1u,
    0x1u,
    0x1u,
    0x1u,
    0x1u,
    0x4u,
    0x5u,
    0x4u,
    0x4u,
    0x4u,
};



# 353 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 353 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
            (0x2u == (0x1u + 1), "hw mismatch");

# 354 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 354 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
            (0x2u == (0x1u + 1), "hw mismatch");

# 355 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 355 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
            (0x2u == (0x1u + 1), "hw mismatch");

# 356 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 356 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
            (0x2u == (0x1u + 1), "hw mismatch");

# 357 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 357 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
            (0x2u == (0x1u + 1), "hw mismatch");

# 358 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 358 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
            (0x5u == (0x4u + 1), "hw mismatch");

# 359 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 359 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
            (0x6u == (0x5u + 1), "hw mismatch");

# 360 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 360 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
            (0x5u == (0x4u + 1), "hw mismatch");

# 361 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 361 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
            (0x5u == (0x4u + 1), "hw mismatch");

# 362 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
_Static_assert
# 362 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
            (0x5u == (0x4u + 1), "hw mismatch");


# 364 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3 4
_Bool 
# 364 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
    clock_configure_gpin(enum clock_index clk_index, uint gpio, uint32_t src_freq, uint32_t freq) {

    uint gpin = 0;
    if (gpio == 20) gpin = 0;
    else if (gpio == 22) gpin = 1;
    else {
        ({if (((0 || 0) && !0)) 
# 370 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" 3
       ((void)0)
# 370 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/clocks.c"
       ;});
    }


    uint src = 0;


    uint auxsrc = gpin0_src[clk_index] + gpin;

    if (has_glitchless_mux(clk_index)) {

        src = 1;
    }


    gpio_set_function(gpio, GPIO_FUNC_GPCK);



    return clock_configure(clk_index, src, auxsrc, src_freq, freq);
}
