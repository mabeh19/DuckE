# 0 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"






# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/include/hardware/flash.h" 1
# 10 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/include/hardware/flash.h"
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
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/include/hardware/flash.h" 2
# 60 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/include/hardware/flash.h"
void flash_range_erase(uint32_t flash_offs, size_t count);
# 70 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/include/hardware/flash.h"
void flash_range_program(uint32_t flash_offs, const uint8_t *data, size_t count);
# 82 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/include/hardware/flash.h"
void flash_get_unique_id(uint8_t *id_out);
# 107 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/include/hardware/flash.h"
void flash_do_cmd(const uint8_t *txbuf, uint8_t *rxbuf, size_t count);
# 8 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom.h" 1
# 52 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom.h"
typedef uint32_t (*rom_popcount32_fn)(uint32_t);
typedef uint32_t (*rom_reverse32_fn)(uint32_t);
typedef uint32_t (*rom_clz32_fn)(uint32_t);
typedef uint32_t (*rom_ctz32_fn)(uint32_t);
typedef uint8_t *(*rom_memset_fn)(uint8_t *, uint8_t, uint32_t);
typedef uint32_t *(*rom_memset4_fn)(uint32_t *, uint8_t, uint32_t);
typedef uint32_t *(*rom_memcpy_fn)(uint8_t *, const uint8_t *, uint32_t);
typedef uint32_t *(*rom_memcpy44_fn)(uint32_t *, const uint32_t *, uint32_t);
typedef void __attribute__((noreturn)) (*rom_reset_usb_boot_fn)(uint32_t, uint32_t);
typedef rom_reset_usb_boot_fn reset_usb_boot_fn;
typedef void (*rom_connect_internal_flash_fn)(void);
typedef void (*rom_flash_exit_xip_fn)(void);
typedef void (*rom_flash_range_erase_fn)(uint32_t, size_t, uint32_t, uint8_t);
typedef void (*rom_flash_range_program_fn)(uint32_t, const uint8_t*, size_t);
typedef void (*rom_flash_flush_cache_fn)(void);
typedef void (*rom_flash_enter_cmd_xip_fn)(void);
# 82 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom.h"
static inline uint32_t rom_table_code(uint8_t c1, uint8_t c2) {
    return (((uint32_t) c1) | (((uint32_t) c2) << 8));
}







void *rom_func_lookup(uint32_t code);







void *rom_data_lookup(uint32_t code);
# 113 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom.h"

# 113 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom.h" 3 4
_Bool 
# 113 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom.h"
    rom_funcs_lookup(uint32_t *table, unsigned int count);



typedef void *(*rom_table_lookup_fn)(uint16_t *table, uint32_t code);



static inline void *rom_hword_as_ptr(uint16_t rom_address) {
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Warray-bounds"
    return (void *)(uintptr_t)*(uint16_t *)(uintptr_t)rom_address;
#pragma GCC diagnostic pop
}
# 138 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom.h"
static 
# 138 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom.h" 3
      __inline__ __attribute__((__always_inline__)) 
# 138 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom.h"
                     void *rom_func_lookup_inline(uint32_t code) {
    rom_table_lookup_fn rom_table_lookup = (rom_table_lookup_fn) rom_hword_as_ptr(0x18);
    uint16_t *func_table = (uint16_t *) rom_hword_as_ptr(0x14);
    return rom_table_lookup(func_table, code);
}
# 161 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom.h"
static inline void __attribute__((noreturn)) reset_usb_boot(uint32_t usb_activity_gpio_pin_mask,
                                                            uint32_t disable_interface_mask) {
    rom_reset_usb_boot_fn func = (rom_reset_usb_boot_fn) rom_func_lookup((('U') | (('B') << 8)));
    func(usb_activity_gpio_pin_mask, disable_interface_mask);
}
# 9 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 2

# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ssi.h" 1
# 12 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ssi.h"
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
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ssi.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/ssi.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ssi.h" 2
# 23 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ssi.h"
typedef struct {
   
# 37 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ssi.h"
    io_rw_32 ctrlr0;

   


    io_rw_32 ctrlr1;

   


    io_rw_32 ssienr;

   




    io_rw_32 mwcr;

   


    io_rw_32 ser;

   


    io_rw_32 baudr;

   


    io_rw_32 txftlr;

   


    io_rw_32 rxftlr;

   


    io_ro_32 txflr;

   


    io_ro_32 rxflr;

   
# 95 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ssi.h"
    io_ro_32 sr;

   







    io_rw_32 imr;

   







    io_ro_32 isr;

   







    io_ro_32 risr;

   


    io_ro_32 txoicr;

   


    io_ro_32 rxoicr;

   


    io_ro_32 rxuicr;

   


    io_ro_32 msticr;

   


    io_ro_32 icr;

   



    io_rw_32 dmacr;

   


    io_rw_32 dmatdlr;

   


    io_rw_32 dmardlr;

   


    io_ro_32 idr;

   


    io_ro_32 ssi_version_id;

   


    io_rw_32 dr0;

    uint32_t _pad0[35];

   


    io_rw_32 rx_sample_dly;

   
# 200 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ssi.h"
    io_rw_32 spi_ctrlr0;

   


    io_rw_32 txd_drive_edge;
} ssi_hw_t;
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ioqspi.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ioqspi.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/io_qspi.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ioqspi.h" 2
# 23 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ioqspi.h"
typedef struct {
   
# 34 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ioqspi.h"
    io_ro_32 status;

   






    io_rw_32 ctrl;
} ioqspi_status_ctrl_hw_t;

typedef struct {
   
# 73 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ioqspi.h"
    io_rw_32 inte;

   
# 101 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ioqspi.h"
    io_rw_32 intf;

   
# 129 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ioqspi.h"
    io_ro_32 ints;
} io_qspi_ctrl_hw_t;

typedef struct {
    ioqspi_status_ctrl_hw_t io[6u];

   
# 161 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ioqspi.h"
    io_rw_32 intr;

    io_qspi_ctrl_hw_t proc0_qspi_ctrl;

    io_qspi_ctrl_hw_t proc1_qspi_ctrl;

    io_qspi_ctrl_hw_t dormant_wake_qspi_ctrl;
} ioqspi_hw_t;




# 172 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ioqspi.h" 3
_Static_assert
# 172 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/ioqspi.h"
            ( 6u == 6, "");
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 2
# 31 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
static uint32_t boot2_copyout[64];
static 
# 32 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3 4
      _Bool 
# 32 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
           boot2_copyout_valid = 
# 32 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3 4
                                 0
# 32 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
                                      ;

static void 
# 34 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
           __attribute__ ((__noinline__)) 
# 34 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
           __attribute__((section(".time_critical." "flash_init_boot2_copyout"))) flash_init_boot2_copyout(void) {
    if (boot2_copyout_valid)
        return;
    for (int i = 0; i < 64; ++i)
        boot2_copyout[i] = ((uint32_t *)0x10000000u)[i];
    __compiler_memory_barrier();
    boot2_copyout_valid = 
# 40 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3 4
                         1
# 40 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
                             ;
}

static void 
# 43 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
           __attribute__ ((__noinline__)) 
# 43 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
           __attribute__((section(".time_critical." "flash_enable_xip_via_boot2"))) flash_enable_xip_via_boot2(void) {
    ((void (*)(void))boot2_copyout+1)();
}
# 63 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
void 
# 63 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
    __attribute__ ((__noinline__)) 
# 63 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
    __attribute__((section(".time_critical." "flash_range_erase"))) flash_range_erase(uint32_t flash_offs, size_t count) {

    hard_assert(flash_offs + count <= (2 * 1024 * 1024));

    ({if (((0 || 0) && !0)) 
# 67 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
   ((void)0)
# 67 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
   ;});
    ({if (((0 || 0) && !0)) 
# 68 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
   ((void)0)
# 68 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
   ;});
    rom_connect_internal_flash_fn connect_internal_flash = (rom_connect_internal_flash_fn)rom_func_lookup_inline((('I') | (('F') << 8)));
    rom_flash_exit_xip_fn flash_exit_xip = (rom_flash_exit_xip_fn)rom_func_lookup_inline((('E') | (('X') << 8)));
    rom_flash_range_erase_fn flash_range_erase = (rom_flash_range_erase_fn)rom_func_lookup_inline((('R') | (('E') << 8)));
    rom_flash_flush_cache_fn flash_flush_cache = (rom_flash_flush_cache_fn)rom_func_lookup_inline((('F') | (('C') << 8)));
    
# 73 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
   ((void)0)
# 73 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
                                                                                             ;
    flash_init_boot2_copyout();


    __compiler_memory_barrier();

    connect_internal_flash();
    flash_exit_xip();
    flash_range_erase(flash_offs, count, (1u << 16), 0xd8);
    flash_flush_cache();
    flash_enable_xip_via_boot2();
}

void 
# 86 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
    __attribute__ ((__noinline__)) 
# 86 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
    __attribute__((section(".time_critical." "flash_range_program"))) flash_range_program(uint32_t flash_offs, const uint8_t *data, size_t count) {

    hard_assert(flash_offs + count <= (2 * 1024 * 1024));

    ({if (((0 || 0) && !0)) 
# 90 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
   ((void)0)
# 90 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
   ;});
    ({if (((0 || 0) && !0)) 
# 91 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
   ((void)0)
# 91 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
   ;});
    rom_connect_internal_flash_fn connect_internal_flash = (rom_connect_internal_flash_fn)rom_func_lookup_inline((('I') | (('F') << 8)));
    rom_flash_exit_xip_fn flash_exit_xip = (rom_flash_exit_xip_fn)rom_func_lookup_inline((('E') | (('X') << 8)));
    rom_flash_range_program_fn flash_range_program = (rom_flash_range_program_fn)rom_func_lookup_inline((('R') | (('P') << 8)));
    rom_flash_flush_cache_fn flash_flush_cache = (rom_flash_flush_cache_fn)rom_func_lookup_inline((('F') | (('C') << 8)));
    
# 96 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
   ((void)0)
# 96 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
                                                                                               ;
    flash_init_boot2_copyout();

    __compiler_memory_barrier();

    connect_internal_flash();
    flash_exit_xip();
    flash_range_program(flash_offs, data, count);
    flash_flush_cache();
    flash_enable_xip_via_boot2();
}







static void 
# 114 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
           __attribute__ ((__noinline__)) 
# 114 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
           __attribute__((section(".time_critical." "flash_cs_force"))) flash_cs_force(
# 114 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3 4
                                                         _Bool 
# 114 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
                                                              high) {
    uint32_t field_val = high ?
        0x3u :
        0x2u;
    hw_write_masked(&((ioqspi_hw_t *)0x40018000u)->io[1].ctrl,
        field_val << 8u,
        0x00000300u
    );
}

void 
# 124 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
    __attribute__ ((__noinline__)) 
# 124 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
    __attribute__((section(".time_critical." "flash_do_cmd"))) flash_do_cmd(const uint8_t *txbuf, uint8_t *rxbuf, size_t count) {
    rom_connect_internal_flash_fn connect_internal_flash = (rom_connect_internal_flash_fn)rom_func_lookup_inline((('I') | (('F') << 8)));
    rom_flash_exit_xip_fn flash_exit_xip = (rom_flash_exit_xip_fn)rom_func_lookup_inline((('E') | (('X') << 8)));
    rom_flash_flush_cache_fn flash_flush_cache = (rom_flash_flush_cache_fn)rom_func_lookup_inline((('F') | (('C') << 8)));
    
# 128 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
   ((void)0)
# 128 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
                                                                        ;
    flash_init_boot2_copyout();
    __compiler_memory_barrier();
    connect_internal_flash();
    flash_exit_xip();

    flash_cs_force(0);
    size_t tx_remaining = count;
    size_t rx_remaining = count;

    const size_t max_in_flight = 16 - 2;
    while (tx_remaining || rx_remaining) {
        uint32_t flags = ((ssi_hw_t *)0x18000000u)->sr;
        
# 141 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3 4
       _Bool 
# 141 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
            can_put = !!(flags & 0x00000002u);
        
# 142 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3 4
       _Bool 
# 142 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
            can_get = !!(flags & 0x00000008u);
        if (can_put && tx_remaining && rx_remaining - tx_remaining < max_in_flight) {
            ((ssi_hw_t *)0x18000000u)->dr0 = *txbuf++;
            --tx_remaining;
        }
        if (can_get && rx_remaining) {
            *rxbuf++ = (uint8_t)((ssi_hw_t *)0x18000000u)->dr0;
            --rx_remaining;
        }
    }
    flash_cs_force(1);

    flash_flush_cache();
    flash_enable_xip_via_boot2();
}






# 162 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c" 3
_Static_assert
# 162 "/home/mathias/pico-sdk/src/rp2_common/hardware_flash/flash.c"
            (8 == 8, "");

void flash_get_unique_id(uint8_t *id_out) {




    uint8_t txbuf[(1 + 4 + 8)] = {0};
    uint8_t rxbuf[(1 + 4 + 8)] = {0};
    txbuf[0] = 0x4b;
    flash_do_cmd(txbuf, rxbuf, (1 + 4 + 8));
    for (int i = 0; i < 8; i++)
        id_out[i] = rxbuf[i + 1 + 4];

}
