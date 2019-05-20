cmake_minimum_required(VERSION 3.10)
project(Strypes_task C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -g")

add_library(radio SHARED radio.c radio.h)
add_executable(radio_exec radio.c radio.h main.c)