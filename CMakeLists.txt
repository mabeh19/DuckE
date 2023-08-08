cmake_minimum_required(VERSION 3.13)

set(PICO_BOARD pico_w)
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)
#set(PICO_TIME_DEFAULT_ALARM_POOL_DISABLED 1)

include(pico_sdk_import.cmake)

project(PiPico C CXX ASM)

set(CMAKE_C_STANDARD 17)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(PiPico 
  ${CMAKE_CURRENT_LIST_DIR}/src/main.cc
  ${CMAKE_CURRENT_LIST_DIR}/src/NetClient/Server.cc
  ${CMAKE_CURRENT_LIST_DIR}/src/NetClient/NetClient.cc 
  ${CMAKE_CURRENT_LIST_DIR}/src/Cyw43Driver/Cyw43Driver.cc
  ${CMAKE_CURRENT_LIST_DIR}/src/Cyw43Driver/Cyw43Client.cc
  ${CMAKE_CURRENT_LIST_DIR}/src/Commandline/CommandlineParser.cc

  # Diamant
  ${CMAKE_CURRENT_LIST_DIR}/src/Diamant/Diamant/scheduler/scheduler.c
  ${CMAKE_CURRENT_LIST_DIR}/src/Diamant/Diamant/event/event.c
  ${CMAKE_CURRENT_LIST_DIR}/src/Diamant/Diamant/semaphore/semph.c
  ${CMAKE_CURRENT_LIST_DIR}/src/Diamant/Diamant/queue/queue.c
  ${CMAKE_CURRENT_LIST_DIR}/src/Diamant/Diamant/pico/tick.c
  ${CMAKE_CURRENT_LIST_DIR}/src/Diamant/Diamant/pico/switch_context.S
  ${CMAKE_CURRENT_LIST_DIR}/src/Diamant/Diamant/pico/multicore.c
  
)

target_include_directories(PiPico PRIVATE 
  ${CMAKE_CURRENT_LIST_DIR}
  ${CMAKE_CURRENT_LIST_DIR}/src
  ${CMAKE_CURRENT_LIST_DIR}/src/Diamant
  ${CMAKE_CURERNT_LIST_DIR}/src/Diamant/Diamant
)

target_link_libraries(PiPico 
  pico_stdlib 
  pico_cyw43_arch_lwip_threadsafe_background
  pico_multicore
)
target_compile_definitions(PiPico PRIVATE PICO_HEAP_SIZE=32768)

pico_enable_stdio_usb(PiPico 0)
pico_enable_stdio_uart(PiPico 1)

pico_add_extra_outputs(PiPico)
