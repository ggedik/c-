# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/gg/gg/chps2022/TDs/c-/github

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gg/gg/chps2022/TDs/c-/github/build

# Include any dependencies generated for this target.
include CMakeFiles/Main.exe.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Main.exe.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Main.exe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Main.exe.dir/flags.make

CMakeFiles/Main.exe.dir/main.cpp.o: CMakeFiles/Main.exe.dir/flags.make
CMakeFiles/Main.exe.dir/main.cpp.o: ../main.cpp
CMakeFiles/Main.exe.dir/main.cpp.o: CMakeFiles/Main.exe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gg/gg/chps2022/TDs/c-/github/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Main.exe.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Main.exe.dir/main.cpp.o -MF CMakeFiles/Main.exe.dir/main.cpp.o.d -o CMakeFiles/Main.exe.dir/main.cpp.o -c /home/gg/gg/chps2022/TDs/c-/github/main.cpp

CMakeFiles/Main.exe.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Main.exe.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gg/gg/chps2022/TDs/c-/github/main.cpp > CMakeFiles/Main.exe.dir/main.cpp.i

CMakeFiles/Main.exe.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Main.exe.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gg/gg/chps2022/TDs/c-/github/main.cpp -o CMakeFiles/Main.exe.dir/main.cpp.s

CMakeFiles/Main.exe.dir/HyperExample.cpp.o: CMakeFiles/Main.exe.dir/flags.make
CMakeFiles/Main.exe.dir/HyperExample.cpp.o: ../HyperExample.cpp
CMakeFiles/Main.exe.dir/HyperExample.cpp.o: CMakeFiles/Main.exe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gg/gg/chps2022/TDs/c-/github/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Main.exe.dir/HyperExample.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Main.exe.dir/HyperExample.cpp.o -MF CMakeFiles/Main.exe.dir/HyperExample.cpp.o.d -o CMakeFiles/Main.exe.dir/HyperExample.cpp.o -c /home/gg/gg/chps2022/TDs/c-/github/HyperExample.cpp

CMakeFiles/Main.exe.dir/HyperExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Main.exe.dir/HyperExample.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gg/gg/chps2022/TDs/c-/github/HyperExample.cpp > CMakeFiles/Main.exe.dir/HyperExample.cpp.i

CMakeFiles/Main.exe.dir/HyperExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Main.exe.dir/HyperExample.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gg/gg/chps2022/TDs/c-/github/HyperExample.cpp -o CMakeFiles/Main.exe.dir/HyperExample.cpp.s

CMakeFiles/Main.exe.dir/PETScExample.cpp.o: CMakeFiles/Main.exe.dir/flags.make
CMakeFiles/Main.exe.dir/PETScExample.cpp.o: ../PETScExample.cpp
CMakeFiles/Main.exe.dir/PETScExample.cpp.o: CMakeFiles/Main.exe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gg/gg/chps2022/TDs/c-/github/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Main.exe.dir/PETScExample.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Main.exe.dir/PETScExample.cpp.o -MF CMakeFiles/Main.exe.dir/PETScExample.cpp.o.d -o CMakeFiles/Main.exe.dir/PETScExample.cpp.o -c /home/gg/gg/chps2022/TDs/c-/github/PETScExample.cpp

CMakeFiles/Main.exe.dir/PETScExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Main.exe.dir/PETScExample.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gg/gg/chps2022/TDs/c-/github/PETScExample.cpp > CMakeFiles/Main.exe.dir/PETScExample.cpp.i

CMakeFiles/Main.exe.dir/PETScExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Main.exe.dir/PETScExample.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gg/gg/chps2022/TDs/c-/github/PETScExample.cpp -o CMakeFiles/Main.exe.dir/PETScExample.cpp.s

CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.o: CMakeFiles/Main.exe.dir/flags.make
CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.o: ../LocalLinearAlgebra.cpp
CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.o: CMakeFiles/Main.exe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gg/gg/chps2022/TDs/c-/github/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.o -MF CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.o.d -o CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.o -c /home/gg/gg/chps2022/TDs/c-/github/LocalLinearAlgebra.cpp

CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gg/gg/chps2022/TDs/c-/github/LocalLinearAlgebra.cpp > CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.i

CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gg/gg/chps2022/TDs/c-/github/LocalLinearAlgebra.cpp -o CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.s

# Object files for target Main.exe
Main_exe_OBJECTS = \
"CMakeFiles/Main.exe.dir/main.cpp.o" \
"CMakeFiles/Main.exe.dir/HyperExample.cpp.o" \
"CMakeFiles/Main.exe.dir/PETScExample.cpp.o" \
"CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.o"

# External object files for target Main.exe
Main_exe_EXTERNAL_OBJECTS =

Main.exe: CMakeFiles/Main.exe.dir/main.cpp.o
Main.exe: CMakeFiles/Main.exe.dir/HyperExample.cpp.o
Main.exe: CMakeFiles/Main.exe.dir/PETScExample.cpp.o
Main.exe: CMakeFiles/Main.exe.dir/LocalLinearAlgebra.cpp.o
Main.exe: CMakeFiles/Main.exe.dir/build.make
Main.exe: CMakeFiles/Main.exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gg/gg/chps2022/TDs/c-/github/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Main.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Main.exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Main.exe.dir/build: Main.exe
.PHONY : CMakeFiles/Main.exe.dir/build

CMakeFiles/Main.exe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Main.exe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Main.exe.dir/clean

CMakeFiles/Main.exe.dir/depend:
	cd /home/gg/gg/chps2022/TDs/c-/github/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gg/gg/chps2022/TDs/c-/github /home/gg/gg/chps2022/TDs/c-/github /home/gg/gg/chps2022/TDs/c-/github/build /home/gg/gg/chps2022/TDs/c-/github/build /home/gg/gg/chps2022/TDs/c-/github/build/CMakeFiles/Main.exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Main.exe.dir/depend

