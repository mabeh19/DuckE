# 0 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"






# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 1
# 10 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h"
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
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/sio.h" 1
# 12 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/sio.h"
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
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/sio.h" 2

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
# 15 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/include/hardware/gpio.h" 2
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
# 8 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 2
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
# 9 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 2
# 17 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
static gpio_irq_callback_t callbacks[2u];

static uint32_t raw_irq_mask[2u];


int gpio_get_pad(uint gpio) {
    check_gpio_param(gpio);
    hw_set_bits(&((padsbank0_hw_t *)0x4001c000u)->io[gpio], 0x00000040u);
    return (((iobank0_hw_t *)0x40014000u)->io[gpio].status & 0x00020000u)
            >> 17u;
}




void gpio_set_function(uint gpio, enum gpio_function fn) {
    check_gpio_param(gpio);
    ({if (((0 || 0) && !0)) 
# 34 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3
   ((void)0)
# 34 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
   ;});

    hw_write_masked(&((padsbank0_hw_t *)0x4001c000u)->io[gpio],
                   0x00000040u,
                   0x00000040u | 0x00000080u
    );


    ((iobank0_hw_t *)0x40014000u)->io[gpio].ctrl = fn << 0u;
}


enum gpio_function gpio_get_function(uint gpio) {
    check_gpio_param(gpio);
    return (enum gpio_function) ((((iobank0_hw_t *)0x40014000u)->io[gpio].ctrl & 0x0000001fu) >> 0u);
}



void gpio_set_pulls(uint gpio, 
# 53 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3 4
                              _Bool 
# 53 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
                                   up, 
# 53 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3 4
                                       _Bool 
# 53 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
                                            down) {
    check_gpio_param(gpio);
    hw_write_masked(
            &((padsbank0_hw_t *)0x4001c000u)->io[gpio],
            (((uint)!!(up)) << 3u) | (((uint)!!(down)) << 2u),
            0x00000008u | 0x00000004u
    );
}


void gpio_set_irqover(uint gpio, uint value) {
    check_gpio_param(gpio);
    hw_write_masked(&((iobank0_hw_t *)0x40014000u)->io[gpio].ctrl,
                   value << 28u,
                   0x30000000u
    );
}


void gpio_set_inover(uint gpio, uint value) {
    check_gpio_param(gpio);
    hw_write_masked(&((iobank0_hw_t *)0x40014000u)->io[gpio].ctrl,
                   value << 16u,
                   0x00030000u
    );
}

void gpio_set_outover(uint gpio, uint value) {
    check_gpio_param(gpio);
    hw_write_masked(&((iobank0_hw_t *)0x40014000u)->io[gpio].ctrl,
                   value << 8u,
                   0x00000300u
    );
}

void gpio_set_oeover(uint gpio, uint value) {
    check_gpio_param(gpio);
    hw_write_masked(&((iobank0_hw_t *)0x40014000u)->io[gpio].ctrl,
                   value << 12u,
                   0x00003000u
    );
}

void gpio_set_input_hysteresis_enabled(uint gpio, 
# 96 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3 4
                                                 _Bool 
# 96 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
                                                      enabled) {
    check_gpio_param(gpio);
    if (enabled)
        hw_set_bits(&((padsbank0_hw_t *)0x4001c000u)->io[gpio], 0x00000002u);
    else
        hw_clear_bits(&((padsbank0_hw_t *)0x4001c000u)->io[gpio], 0x00000002u);
}



# 105 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3 4
_Bool 
# 105 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
    gpio_is_input_hysteresis_enabled(uint gpio) {
    check_gpio_param(gpio);
    return (((padsbank0_hw_t *)0x4001c000u)->io[gpio] & 0x00000002u) != 0;
}

void gpio_set_slew_rate(uint gpio, enum gpio_slew_rate slew) {
    check_gpio_param(gpio);
    hw_write_masked(&((padsbank0_hw_t *)0x4001c000u)->io[gpio],
                    (uint)slew << 0u,
                    0x00000001u
    );
}

enum gpio_slew_rate gpio_get_slew_rate(uint gpio) {
    check_gpio_param(gpio);
    return (enum gpio_slew_rate)((((padsbank0_hw_t *)0x4001c000u)->io[gpio]
            & 0x00000001u)
            >> 0u);
}




# 127 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3
_Static_assert
# 127 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
            (0x2u == GPIO_DRIVE_STRENGTH_8MA, "");
void gpio_set_drive_strength(uint gpio, enum gpio_drive_strength drive) {
    check_gpio_param(gpio);
    hw_write_masked(&((padsbank0_hw_t *)0x4001c000u)->io[gpio],
                    (uint)drive << 4u,
                    0x00000030u
    );
}

enum gpio_drive_strength gpio_get_drive_strength(uint gpio) {
    check_gpio_param(gpio);
    return (enum gpio_drive_strength)((((padsbank0_hw_t *)0x4001c000u)->io[gpio]
            & 0x00000030u)
            >> 4u);
}

static void gpio_default_irq_handler(void) {
    uint core = get_core_num();
    gpio_irq_callback_t callback = callbacks[core];
    io_irq_ctrl_hw_t *irq_ctrl_base = core ? &((iobank0_hw_t *)0x40014000u)->proc1_irq_ctrl : &((iobank0_hw_t *)0x40014000u)->proc0_irq_ctrl;
    for (uint gpio = 0; gpio < 30u; gpio+=8) {
        uint32_t events8 = irq_ctrl_base->ints[gpio >> 3u];

        for(uint i=gpio;events8 && i<gpio+8;i++) {
            uint32_t events = events8 & 0xfu;
            if (events && !(raw_irq_mask[core] & (1u << i))) {
                gpio_acknowledge_irq(i, events);
                if (callback) {
                    callback(i, events);
                }
            }
            events8 >>= 4;
        }
    }
}

static void _gpio_set_irq_enabled(uint gpio, uint32_t events, 
# 163 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3 4
                                                             _Bool 
# 163 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
                                                                  enabled, io_irq_ctrl_hw_t *irq_ctrl_base) {

    gpio_acknowledge_irq(gpio, events);

    io_rw_32 *en_reg = &irq_ctrl_base->inte[gpio / 8];
    events <<= 4 * (gpio % 8);

    if (enabled)
        hw_set_bits(en_reg, events);
    else
        hw_clear_bits(en_reg, events);
}

void gpio_set_irq_enabled(uint gpio, uint32_t events, 
# 176 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3 4
                                                     _Bool 
# 176 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
                                                          enabled) {


    io_irq_ctrl_hw_t *irq_ctrl_base = get_core_num() ?
                                           &((iobank0_hw_t *)0x40014000u)->proc1_irq_ctrl : &((iobank0_hw_t *)0x40014000u)->proc0_irq_ctrl;
    _gpio_set_irq_enabled(gpio, events, enabled, irq_ctrl_base);
}

void gpio_set_irq_enabled_with_callback(uint gpio, uint32_t events, 
# 184 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3 4
                                                                   _Bool 
# 184 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
                                                                        enabled, gpio_irq_callback_t callback) {
    gpio_set_irq_enabled(gpio, events, enabled);
    gpio_set_irq_callback(callback);
    if (enabled) irq_set_enabled(13, 
# 187 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3 4
                                              1
# 187 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
                                                  );
}

void gpio_set_irq_callback(gpio_irq_callback_t callback) {
    uint core = get_core_num();
    if (callbacks[core]) {
        if (!callback) {
            irq_remove_handler(13, gpio_default_irq_handler);
        }
        callbacks[core] = callback;
    } else if (callback) {
        callbacks[core] = callback;
        irq_add_shared_handler(13, gpio_default_irq_handler, 0x00);
    }
}

void gpio_add_raw_irq_handler_with_order_priority_masked(uint gpio_mask, irq_handler_t handler, uint8_t order_priority) {
    hard_assert(!(raw_irq_mask[get_core_num()] & gpio_mask));
    raw_irq_mask[get_core_num()] |= gpio_mask;
    irq_add_shared_handler(13, handler, order_priority);
}

void gpio_add_raw_irq_handler_masked(uint gpio_mask, irq_handler_t handler) {
    gpio_add_raw_irq_handler_with_order_priority_masked(gpio_mask, handler, 0x80);
}

void gpio_remove_raw_irq_handler_masked(uint gpio_mask, irq_handler_t handler) {
    
# 214 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3
   ((void)0)
# 214 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
                                                   ;
    irq_remove_handler(13, handler);
    raw_irq_mask[get_core_num()] &= ~gpio_mask;
}

void gpio_set_dormant_irq_enabled(uint gpio, uint32_t events, 
# 219 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3 4
                                                             _Bool 
# 219 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
                                                                  enabled) {
    check_gpio_param(gpio);
    io_irq_ctrl_hw_t *irq_ctrl_base = &((iobank0_hw_t *)0x40014000u)->dormant_wake_irq_ctrl;
    _gpio_set_irq_enabled(gpio, events, enabled, irq_ctrl_base);
}

void gpio_acknowledge_irq(uint gpio, uint32_t events) {
    check_gpio_param(gpio);
    ((iobank0_hw_t *)0x40014000u)->intr[gpio / 8] = events << (4 * (gpio % 8));
}


void gpio_debug_pins_init() {
    gpio_init_mask((((1u << 3u)-1) << 19u));
    gpio_set_dir_masked((((1u << 3u)-1) << 19u), (((1u << 3u)-1) << 19u));



}

void gpio_set_input_enabled(uint gpio, 
# 239 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" 3 4
                                      _Bool 
# 239 "/home/mathias/pico-sdk/src/rp2_common/hardware_gpio/gpio.c"
                                           enabled) {
    if (enabled)
        hw_set_bits(&((padsbank0_hw_t *)0x4001c000u)->io[gpio], 0x00000040u);
    else
        hw_clear_bits(&((padsbank0_hw_t *)0x4001c000u)->io[gpio], 0x00000040u);
}

void gpio_init(uint gpio) {
    ((sio_hw_t *)0xd0000000u)->gpio_oe_clr = 1ul << gpio;
    ((sio_hw_t *)0xd0000000u)->gpio_clr = 1ul << gpio;
    gpio_set_function(gpio, GPIO_FUNC_SIO);
}

void gpio_deinit(uint gpio) {
    gpio_set_function(gpio, GPIO_FUNC_NULL);
}

void gpio_init_mask(uint gpio_mask) {
    for(uint i=0;i<30u;i++) {
        if (gpio_mask & 1) {
            gpio_init(i);
        }
        gpio_mask >>= 1;
    }
}
