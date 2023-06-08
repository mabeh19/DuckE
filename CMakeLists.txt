cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(PiPico C CXX ASM)

set(CMAKE_C_STANDARD 17)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()


add_executable(PiPico 
                  src/main.c
                  src/scheduler/scheduler.c
                  src/scheduler/switch_context.S 
                  src/scheduler/tick.c)

set(PICO_TIME_DEFAULT_ALARM_POOL_DISABLED 1)

target_link_libraries(PiPico pico_stdlib pico_cyw43_arch_none hardware_clocks hardware_exception pico_base_headers)
target_compile_definitions(PiPico PRIVATE PICO_HEAP_SIZE=32768)

pico_enable_stdio_usb(PiPico 1)
pico_enable_stdio_uart(PiPico 0)

pico_add_extra_outputs(PiPico)
