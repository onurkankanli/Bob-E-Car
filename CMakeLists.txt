# Minimum required CMake version
cmake_minimum_required(VERSION 3.0)

# Specify the project name
project (vesc_uart_app)

# Specify the sources to compile
file(GLOB src_cpp_files 
    "bldc.cpp"
    "main.cpp"
    "bldc_interface.c"
    "bldc_interface_uart.c"
    "buffer.c"
    "timers.c"
    "comm_uart.c"
    "crc.c"
    "packet.c"
)

# Include the headers directories
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/*.h)

# Add system-related flags
add_definitions(-std=c++11)
add_definitions(-w)
add_definitions(-fPIC)

# Find ZeroMQ
find_package(PkgConfig REQUIRED)
pkg_check_modules(ZMQ REQUIRED libzmq)

# Add executable for the sources
add_executable(vesc_uart_app ${src_cpp_files} ${src_c_files})

# Link system-related libraries
target_link_libraries(vesc_uart_app dl)
target_link_libraries(vesc_uart_app rt)

# Link ZeroMQ libraries
target_link_libraries(vesc_uart_app ${ZMQ_LIBRARIES})
target_include_directories(vesc_uart_app PRIVATE ${ZMQ_INCLUDE_DIRS})

target_link_libraries(vesc_uart_app lgpio rt zmq)