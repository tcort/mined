cmake_minimum_required(VERSION 3.7.2 FATAL_ERROR)
project(mined VERSION 0.0.0 LANGUAGES C)

find_package(Curses REQUIRED)

configure_file (
    "${PROJECT_SOURCE_DIR}/include/config.h.in"
    "${PROJECT_BINARY_DIR}/include/config.h"
)

include_directories(
    "${PROJECT_SOURCE_DIR}/include"
    "${PROJECT_BINARY_DIR}/include"
)

add_executable(mined ${PROJECT_SOURCE_DIR}/src/mined1.c ${PROJECT_SOURCE_DIR}/src/mined2.c)
target_link_libraries(mined ${CURSES_LIBRARIES})

install(TARGETS mined RUNTIME DESTINATION bin)
install(FILES ${PROJECT_SOURCE_DIR}/man/mined.1 DESTINATION man/man1)

include(CPack)
