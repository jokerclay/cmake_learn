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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder/build

# Include any dependencies generated for this target.
include CMakeFiles/test_exe.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_exe.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_exe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_exe.dir/flags.make

CMakeFiles/test_exe.dir/main.cpp.o: CMakeFiles/test_exe.dir/flags.make
CMakeFiles/test_exe.dir/main.cpp.o: ../main.cpp
CMakeFiles/test_exe.dir/main.cpp.o: CMakeFiles/test_exe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_exe.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_exe.dir/main.cpp.o -MF CMakeFiles/test_exe.dir/main.cpp.o.d -o CMakeFiles/test_exe.dir/main.cpp.o -c /home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder/main.cpp

CMakeFiles/test_exe.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_exe.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder/main.cpp > CMakeFiles/test_exe.dir/main.cpp.i

CMakeFiles/test_exe.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_exe.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder/main.cpp -o CMakeFiles/test_exe.dir/main.cpp.s

# Object files for target test_exe
test_exe_OBJECTS = \
"CMakeFiles/test_exe.dir/main.cpp.o"

# External object files for target test_exe
test_exe_EXTERNAL_OBJECTS =

test_exe: CMakeFiles/test_exe.dir/main.cpp.o
test_exe: CMakeFiles/test_exe.dir/build.make
test_exe: CMakeFiles/test_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_exe.dir/build: test_exe
.PHONY : CMakeFiles/test_exe.dir/build

CMakeFiles/test_exe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_exe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_exe.dir/clean

CMakeFiles/test_exe.dir/depend:
	cd /home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder /home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder /home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder/build /home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder/build /home/clay/Documents/c++/cmake/09_Functions_Scopes_Arguments_List/test_folder/build/CMakeFiles/test_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_exe.dir/depend

