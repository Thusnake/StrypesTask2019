# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = "/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task/cmake-build-wsl_release"

# Include any dependencies generated for this target.
include CMakeFiles/radio.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/radio.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/radio.dir/flags.make

CMakeFiles/radio.dir/radio.c.o: CMakeFiles/radio.dir/flags.make
CMakeFiles/radio.dir/radio.c.o: ../radio.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task/cmake-build-wsl_release/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/radio.dir/radio.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/radio.dir/radio.c.o   -c "/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task/radio.c"

CMakeFiles/radio.dir/radio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/radio.dir/radio.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task/radio.c" > CMakeFiles/radio.dir/radio.c.i

CMakeFiles/radio.dir/radio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/radio.dir/radio.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task/radio.c" -o CMakeFiles/radio.dir/radio.c.s

CMakeFiles/radio.dir/radio.c.o.requires:

.PHONY : CMakeFiles/radio.dir/radio.c.o.requires

CMakeFiles/radio.dir/radio.c.o.provides: CMakeFiles/radio.dir/radio.c.o.requires
	$(MAKE) -f CMakeFiles/radio.dir/build.make CMakeFiles/radio.dir/radio.c.o.provides.build
.PHONY : CMakeFiles/radio.dir/radio.c.o.provides

CMakeFiles/radio.dir/radio.c.o.provides.build: CMakeFiles/radio.dir/radio.c.o


# Object files for target radio
radio_OBJECTS = \
"CMakeFiles/radio.dir/radio.c.o"

# External object files for target radio
radio_EXTERNAL_OBJECTS =

libradio.so: CMakeFiles/radio.dir/radio.c.o
libradio.so: CMakeFiles/radio.dir/build.make
libradio.so: CMakeFiles/radio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task/cmake-build-wsl_release/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libradio.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/radio.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/radio.dir/build: libradio.so

.PHONY : CMakeFiles/radio.dir/build

CMakeFiles/radio.dir/requires: CMakeFiles/radio.dir/radio.c.o.requires

.PHONY : CMakeFiles/radio.dir/requires

CMakeFiles/radio.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/radio.dir/cmake_clean.cmake
.PHONY : CMakeFiles/radio.dir/clean

CMakeFiles/radio.dir/depend:
	cd "/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task/cmake-build-wsl_release" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task" "/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task" "/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task/cmake-build-wsl_release" "/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task/cmake-build-wsl_release" "/mnt/c/Users/Nick/Desktop/Sideprojects/Application/Strypes task/cmake-build-wsl_release/CMakeFiles/radio.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/radio.dir/depend

