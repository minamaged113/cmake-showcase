cmake_minimum_required(VERSION 3.10)

project(
    calculator
    VERSION 1.4.0
)

add_library(
    my_math
    addition.cpp
    division.cpp
)

add_library(
    my_print
    print_result.cpp
)

add_executable(
    calculator
    main.cpp
)

target_link_libraries(
    calculator
    my_math
    my_print
)
