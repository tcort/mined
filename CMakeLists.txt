cmake_minimum_required(VERSION 3.7.2)
project(mined C)

find_package(Curses REQUIRED)
include_directories(${CURSES_INCLUDE_DIR})

add_executable(mined mined1.c mined2.c mined.h)
target_link_libraries(mined ${CURSES_LIBRARIES})
