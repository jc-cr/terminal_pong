cmake_minimum_required(VERSION 3.16)
project(terminal_pong)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Os -flto -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -Wall -Wextra -Werror")
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR})


# Ncurses
find_package(Curses REQUIRED)

# Add the include directory to the include path
include_directories(include)

#add_library(program_stats src/program_stats.cpp)

# Add the executable
add_executable(main src/main.cpp)

# Link the library to the executable
target_link_libraries(main ${CURSES_LIBRARIES})