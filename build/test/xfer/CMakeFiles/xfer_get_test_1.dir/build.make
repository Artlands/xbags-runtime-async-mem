# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jieli/Desktop/ReplicaXbgasRuntime

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jieli/Desktop/ReplicaXbgasRuntime/build

# Include any dependencies generated for this target.
include test/xfer/CMakeFiles/xfer_get_test_1.dir/depend.make

# Include the progress variables for this target.
include test/xfer/CMakeFiles/xfer_get_test_1.dir/progress.make

# Include the compile flags for this target's objects.
include test/xfer/CMakeFiles/xfer_get_test_1.dir/flags.make

test/xfer/CMakeFiles/xfer_get_test_1.dir/xfer_get_test_1.c.o: test/xfer/CMakeFiles/xfer_get_test_1.dir/flags.make
test/xfer/CMakeFiles/xfer_get_test_1.dir/xfer_get_test_1.c.o: ../test/xfer/xfer_get_test_1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jieli/Desktop/ReplicaXbgasRuntime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/xfer/CMakeFiles/xfer_get_test_1.dir/xfer_get_test_1.c.o"
	cd /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/xfer && /home/jieli/Desktop/xBGAS/riscv/toolchain/bin/riscv64-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xfer_get_test_1.dir/xfer_get_test_1.c.o   -c /home/jieli/Desktop/ReplicaXbgasRuntime/test/xfer/xfer_get_test_1.c

test/xfer/CMakeFiles/xfer_get_test_1.dir/xfer_get_test_1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xfer_get_test_1.dir/xfer_get_test_1.c.i"
	cd /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/xfer && /home/jieli/Desktop/xBGAS/riscv/toolchain/bin/riscv64-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jieli/Desktop/ReplicaXbgasRuntime/test/xfer/xfer_get_test_1.c > CMakeFiles/xfer_get_test_1.dir/xfer_get_test_1.c.i

test/xfer/CMakeFiles/xfer_get_test_1.dir/xfer_get_test_1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xfer_get_test_1.dir/xfer_get_test_1.c.s"
	cd /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/xfer && /home/jieli/Desktop/xBGAS/riscv/toolchain/bin/riscv64-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jieli/Desktop/ReplicaXbgasRuntime/test/xfer/xfer_get_test_1.c -o CMakeFiles/xfer_get_test_1.dir/xfer_get_test_1.c.s

# Object files for target xfer_get_test_1
xfer_get_test_1_OBJECTS = \
"CMakeFiles/xfer_get_test_1.dir/xfer_get_test_1.c.o"

# External object files for target xfer_get_test_1
xfer_get_test_1_EXTERNAL_OBJECTS =

../test/xfer/testBin/xfer_get_test_1: test/xfer/CMakeFiles/xfer_get_test_1.dir/xfer_get_test_1.c.o
../test/xfer/testBin/xfer_get_test_1: test/xfer/CMakeFiles/xfer_get_test_1.dir/build.make
../test/xfer/testBin/xfer_get_test_1: src/xbgas-runtime/libxbrtime.a
../test/xfer/testBin/xfer_get_test_1: test/xfer/CMakeFiles/xfer_get_test_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jieli/Desktop/ReplicaXbgasRuntime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../../test/xfer/testBin/xfer_get_test_1"
	cd /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/xfer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xfer_get_test_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/xfer/CMakeFiles/xfer_get_test_1.dir/build: ../test/xfer/testBin/xfer_get_test_1

.PHONY : test/xfer/CMakeFiles/xfer_get_test_1.dir/build

test/xfer/CMakeFiles/xfer_get_test_1.dir/clean:
	cd /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/xfer && $(CMAKE_COMMAND) -P CMakeFiles/xfer_get_test_1.dir/cmake_clean.cmake
.PHONY : test/xfer/CMakeFiles/xfer_get_test_1.dir/clean

test/xfer/CMakeFiles/xfer_get_test_1.dir/depend:
	cd /home/jieli/Desktop/ReplicaXbgasRuntime/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jieli/Desktop/ReplicaXbgasRuntime /home/jieli/Desktop/ReplicaXbgasRuntime/test/xfer /home/jieli/Desktop/ReplicaXbgasRuntime/build /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/xfer /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/xfer/CMakeFiles/xfer_get_test_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/xfer/CMakeFiles/xfer_get_test_1.dir/depend

