# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bobecar/VESC_Embedded_Linux

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bobecar/VESC_Embedded_Linux

# Include any dependencies generated for this target.
include CMakeFiles/vesc_uart_app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/vesc_uart_app.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/vesc_uart_app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vesc_uart_app.dir/flags.make

CMakeFiles/vesc_uart_app.dir/bldc.cpp.o: CMakeFiles/vesc_uart_app.dir/flags.make
CMakeFiles/vesc_uart_app.dir/bldc.cpp.o: bldc.cpp
CMakeFiles/vesc_uart_app.dir/bldc.cpp.o: CMakeFiles/vesc_uart_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobecar/VESC_Embedded_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/vesc_uart_app.dir/bldc.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/vesc_uart_app.dir/bldc.cpp.o -MF CMakeFiles/vesc_uart_app.dir/bldc.cpp.o.d -o CMakeFiles/vesc_uart_app.dir/bldc.cpp.o -c /home/bobecar/VESC_Embedded_Linux/bldc.cpp

CMakeFiles/vesc_uart_app.dir/bldc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vesc_uart_app.dir/bldc.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bobecar/VESC_Embedded_Linux/bldc.cpp > CMakeFiles/vesc_uart_app.dir/bldc.cpp.i

CMakeFiles/vesc_uart_app.dir/bldc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vesc_uart_app.dir/bldc.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bobecar/VESC_Embedded_Linux/bldc.cpp -o CMakeFiles/vesc_uart_app.dir/bldc.cpp.s

CMakeFiles/vesc_uart_app.dir/bldc_interface.c.o: CMakeFiles/vesc_uart_app.dir/flags.make
CMakeFiles/vesc_uart_app.dir/bldc_interface.c.o: bldc_interface.c
CMakeFiles/vesc_uart_app.dir/bldc_interface.c.o: CMakeFiles/vesc_uart_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobecar/VESC_Embedded_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/vesc_uart_app.dir/bldc_interface.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/vesc_uart_app.dir/bldc_interface.c.o -MF CMakeFiles/vesc_uart_app.dir/bldc_interface.c.o.d -o CMakeFiles/vesc_uart_app.dir/bldc_interface.c.o -c /home/bobecar/VESC_Embedded_Linux/bldc_interface.c

CMakeFiles/vesc_uart_app.dir/bldc_interface.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vesc_uart_app.dir/bldc_interface.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bobecar/VESC_Embedded_Linux/bldc_interface.c > CMakeFiles/vesc_uart_app.dir/bldc_interface.c.i

CMakeFiles/vesc_uart_app.dir/bldc_interface.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vesc_uart_app.dir/bldc_interface.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bobecar/VESC_Embedded_Linux/bldc_interface.c -o CMakeFiles/vesc_uart_app.dir/bldc_interface.c.s

CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.o: CMakeFiles/vesc_uart_app.dir/flags.make
CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.o: bldc_interface_uart.c
CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.o: CMakeFiles/vesc_uart_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobecar/VESC_Embedded_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.o -MF CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.o.d -o CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.o -c /home/bobecar/VESC_Embedded_Linux/bldc_interface_uart.c

CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bobecar/VESC_Embedded_Linux/bldc_interface_uart.c > CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.i

CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bobecar/VESC_Embedded_Linux/bldc_interface_uart.c -o CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.s

CMakeFiles/vesc_uart_app.dir/buffer.c.o: CMakeFiles/vesc_uart_app.dir/flags.make
CMakeFiles/vesc_uart_app.dir/buffer.c.o: buffer.c
CMakeFiles/vesc_uart_app.dir/buffer.c.o: CMakeFiles/vesc_uart_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobecar/VESC_Embedded_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/vesc_uart_app.dir/buffer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/vesc_uart_app.dir/buffer.c.o -MF CMakeFiles/vesc_uart_app.dir/buffer.c.o.d -o CMakeFiles/vesc_uart_app.dir/buffer.c.o -c /home/bobecar/VESC_Embedded_Linux/buffer.c

CMakeFiles/vesc_uart_app.dir/buffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vesc_uart_app.dir/buffer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bobecar/VESC_Embedded_Linux/buffer.c > CMakeFiles/vesc_uart_app.dir/buffer.c.i

CMakeFiles/vesc_uart_app.dir/buffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vesc_uart_app.dir/buffer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bobecar/VESC_Embedded_Linux/buffer.c -o CMakeFiles/vesc_uart_app.dir/buffer.c.s

CMakeFiles/vesc_uart_app.dir/comm_uart.c.o: CMakeFiles/vesc_uart_app.dir/flags.make
CMakeFiles/vesc_uart_app.dir/comm_uart.c.o: comm_uart.c
CMakeFiles/vesc_uart_app.dir/comm_uart.c.o: CMakeFiles/vesc_uart_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobecar/VESC_Embedded_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/vesc_uart_app.dir/comm_uart.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/vesc_uart_app.dir/comm_uart.c.o -MF CMakeFiles/vesc_uart_app.dir/comm_uart.c.o.d -o CMakeFiles/vesc_uart_app.dir/comm_uart.c.o -c /home/bobecar/VESC_Embedded_Linux/comm_uart.c

CMakeFiles/vesc_uart_app.dir/comm_uart.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vesc_uart_app.dir/comm_uart.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bobecar/VESC_Embedded_Linux/comm_uart.c > CMakeFiles/vesc_uart_app.dir/comm_uart.c.i

CMakeFiles/vesc_uart_app.dir/comm_uart.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vesc_uart_app.dir/comm_uart.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bobecar/VESC_Embedded_Linux/comm_uart.c -o CMakeFiles/vesc_uart_app.dir/comm_uart.c.s

CMakeFiles/vesc_uart_app.dir/crc.c.o: CMakeFiles/vesc_uart_app.dir/flags.make
CMakeFiles/vesc_uart_app.dir/crc.c.o: crc.c
CMakeFiles/vesc_uart_app.dir/crc.c.o: CMakeFiles/vesc_uart_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobecar/VESC_Embedded_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/vesc_uart_app.dir/crc.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/vesc_uart_app.dir/crc.c.o -MF CMakeFiles/vesc_uart_app.dir/crc.c.o.d -o CMakeFiles/vesc_uart_app.dir/crc.c.o -c /home/bobecar/VESC_Embedded_Linux/crc.c

CMakeFiles/vesc_uart_app.dir/crc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vesc_uart_app.dir/crc.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bobecar/VESC_Embedded_Linux/crc.c > CMakeFiles/vesc_uart_app.dir/crc.c.i

CMakeFiles/vesc_uart_app.dir/crc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vesc_uart_app.dir/crc.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bobecar/VESC_Embedded_Linux/crc.c -o CMakeFiles/vesc_uart_app.dir/crc.c.s

CMakeFiles/vesc_uart_app.dir/main.cpp.o: CMakeFiles/vesc_uart_app.dir/flags.make
CMakeFiles/vesc_uart_app.dir/main.cpp.o: main.cpp
CMakeFiles/vesc_uart_app.dir/main.cpp.o: CMakeFiles/vesc_uart_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobecar/VESC_Embedded_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/vesc_uart_app.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/vesc_uart_app.dir/main.cpp.o -MF CMakeFiles/vesc_uart_app.dir/main.cpp.o.d -o CMakeFiles/vesc_uart_app.dir/main.cpp.o -c /home/bobecar/VESC_Embedded_Linux/main.cpp

CMakeFiles/vesc_uart_app.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vesc_uart_app.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bobecar/VESC_Embedded_Linux/main.cpp > CMakeFiles/vesc_uart_app.dir/main.cpp.i

CMakeFiles/vesc_uart_app.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vesc_uart_app.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bobecar/VESC_Embedded_Linux/main.cpp -o CMakeFiles/vesc_uart_app.dir/main.cpp.s

CMakeFiles/vesc_uart_app.dir/packet.c.o: CMakeFiles/vesc_uart_app.dir/flags.make
CMakeFiles/vesc_uart_app.dir/packet.c.o: packet.c
CMakeFiles/vesc_uart_app.dir/packet.c.o: CMakeFiles/vesc_uart_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobecar/VESC_Embedded_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/vesc_uart_app.dir/packet.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/vesc_uart_app.dir/packet.c.o -MF CMakeFiles/vesc_uart_app.dir/packet.c.o.d -o CMakeFiles/vesc_uart_app.dir/packet.c.o -c /home/bobecar/VESC_Embedded_Linux/packet.c

CMakeFiles/vesc_uart_app.dir/packet.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vesc_uart_app.dir/packet.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bobecar/VESC_Embedded_Linux/packet.c > CMakeFiles/vesc_uart_app.dir/packet.c.i

CMakeFiles/vesc_uart_app.dir/packet.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vesc_uart_app.dir/packet.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bobecar/VESC_Embedded_Linux/packet.c -o CMakeFiles/vesc_uart_app.dir/packet.c.s

CMakeFiles/vesc_uart_app.dir/timers.c.o: CMakeFiles/vesc_uart_app.dir/flags.make
CMakeFiles/vesc_uart_app.dir/timers.c.o: timers.c
CMakeFiles/vesc_uart_app.dir/timers.c.o: CMakeFiles/vesc_uart_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobecar/VESC_Embedded_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/vesc_uart_app.dir/timers.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/vesc_uart_app.dir/timers.c.o -MF CMakeFiles/vesc_uart_app.dir/timers.c.o.d -o CMakeFiles/vesc_uart_app.dir/timers.c.o -c /home/bobecar/VESC_Embedded_Linux/timers.c

CMakeFiles/vesc_uart_app.dir/timers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vesc_uart_app.dir/timers.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bobecar/VESC_Embedded_Linux/timers.c > CMakeFiles/vesc_uart_app.dir/timers.c.i

CMakeFiles/vesc_uart_app.dir/timers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vesc_uart_app.dir/timers.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bobecar/VESC_Embedded_Linux/timers.c -o CMakeFiles/vesc_uart_app.dir/timers.c.s

# Object files for target vesc_uart_app
vesc_uart_app_OBJECTS = \
"CMakeFiles/vesc_uart_app.dir/bldc.cpp.o" \
"CMakeFiles/vesc_uart_app.dir/bldc_interface.c.o" \
"CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.o" \
"CMakeFiles/vesc_uart_app.dir/buffer.c.o" \
"CMakeFiles/vesc_uart_app.dir/comm_uart.c.o" \
"CMakeFiles/vesc_uart_app.dir/crc.c.o" \
"CMakeFiles/vesc_uart_app.dir/main.cpp.o" \
"CMakeFiles/vesc_uart_app.dir/packet.c.o" \
"CMakeFiles/vesc_uart_app.dir/timers.c.o"

# External object files for target vesc_uart_app
vesc_uart_app_EXTERNAL_OBJECTS =

vesc_uart_app: CMakeFiles/vesc_uart_app.dir/bldc.cpp.o
vesc_uart_app: CMakeFiles/vesc_uart_app.dir/bldc_interface.c.o
vesc_uart_app: CMakeFiles/vesc_uart_app.dir/bldc_interface_uart.c.o
vesc_uart_app: CMakeFiles/vesc_uart_app.dir/buffer.c.o
vesc_uart_app: CMakeFiles/vesc_uart_app.dir/comm_uart.c.o
vesc_uart_app: CMakeFiles/vesc_uart_app.dir/crc.c.o
vesc_uart_app: CMakeFiles/vesc_uart_app.dir/main.cpp.o
vesc_uart_app: CMakeFiles/vesc_uart_app.dir/packet.c.o
vesc_uart_app: CMakeFiles/vesc_uart_app.dir/timers.c.o
vesc_uart_app: CMakeFiles/vesc_uart_app.dir/build.make
vesc_uart_app: CMakeFiles/vesc_uart_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bobecar/VESC_Embedded_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable vesc_uart_app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vesc_uart_app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vesc_uart_app.dir/build: vesc_uart_app
.PHONY : CMakeFiles/vesc_uart_app.dir/build

CMakeFiles/vesc_uart_app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vesc_uart_app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vesc_uart_app.dir/clean

CMakeFiles/vesc_uart_app.dir/depend:
	cd /home/bobecar/VESC_Embedded_Linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bobecar/VESC_Embedded_Linux /home/bobecar/VESC_Embedded_Linux /home/bobecar/VESC_Embedded_Linux /home/bobecar/VESC_Embedded_Linux /home/bobecar/VESC_Embedded_Linux/CMakeFiles/vesc_uart_app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vesc_uart_app.dir/depend
