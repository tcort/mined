cmake_minimum_required(VERSION 3.7.2 FATAL_ERROR)
project(mined VERSION 0.0.0 LANGUAGES C)

find_package(Curses REQUIRED)
include_directories(${CURSES_INCLUDE_DIR})

configure_file (
  "${PROJECT_SOURCE_DIR}/config.h.in"
  "${PROJECT_BINARY_DIR}/config.h"
)

add_executable(mined mined1.c mined2.c mined.h)
target_link_libraries(mined ${CURSES_LIBRARIES})
target_compile_options(mined PRIVATE -Wall -Wextra -pedantic -ansi)

install(TARGETS mined RUNTIME DESTINATION bin)
install(FILES ${PROJECT_SOURCE_DIR}/mined.1 DESTINATION man/man1)

include(CPack)
