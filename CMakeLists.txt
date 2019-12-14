cmake_minimum_required(VERSION 3.7.2)
project(mined C)

find_package(Curses REQUIRED)
include_directories(${CURSES_INCLUDE_DIR})

add_executable(mined mined1.c mined2.c mined.h)
target_link_libraries(mined ${CURSES_LIBRARIES})
target_compile_options(mined PRIVATE -Wall -Wextra -pedantic -ansi)

install(TARGETS mined RUNTIME DESTINATION bin)
install(FILES ${PROJECT_SOURCE_DIR}/mined.1 DESTINATION man/man1)
