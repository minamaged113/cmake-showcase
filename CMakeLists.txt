cmake_minimum_required(VERSION 3.10)

project(
    calculator
    VERSION 1.4.0
)

add_subdirectory(math)
add_subdirectory(print)

add_executable(
    calculator
    main.cpp
)

target_link_libraries(
    calculator
    my_math
    my_print
)
