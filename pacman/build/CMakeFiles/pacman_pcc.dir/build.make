# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.6/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.6/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/build

# Include any dependencies generated for this target.
include CMakeFiles/pacman_pcc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pacman_pcc.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pacman_pcc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pacman_pcc.dir/flags.make

CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.o: CMakeFiles/pacman_pcc.dir/flags.make
CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.o: /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/gameLogic/Game.cpp
CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.o: CMakeFiles/pacman_pcc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.o -MF CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.o.d -o CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.o -c /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/gameLogic/Game.cpp

CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/gameLogic/Game.cpp > CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.i

CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/gameLogic/Game.cpp -o CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.s

CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.o: CMakeFiles/pacman_pcc.dir/flags.make
CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.o: /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/еntities/Player.cpp
CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.o: CMakeFiles/pacman_pcc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.o -MF CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.o.d -o CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.o -c /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/еntities/Player.cpp

CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/еntities/Player.cpp > CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.i

CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/еntities/Player.cpp -o CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.s

CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.o: CMakeFiles/pacman_pcc.dir/flags.make
CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.o: /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/еntities/Enemy.cpp
CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.o: CMakeFiles/pacman_pcc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.o -MF CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.o.d -o CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.o -c /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/еntities/Enemy.cpp

CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/еntities/Enemy.cpp > CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.i

CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/еntities/Enemy.cpp -o CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.s

CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.o: CMakeFiles/pacman_pcc.dir/flags.make
CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.o: /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/gameLogic/Level.cpp
CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.o: CMakeFiles/pacman_pcc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.o -MF CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.o.d -o CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.o -c /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/gameLogic/Level.cpp

CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/gameLogic/Level.cpp > CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.i

CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/gameLogic/Level.cpp -o CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.s

CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.o: CMakeFiles/pacman_pcc.dir/flags.make
CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.o: /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/Pacman.cpp
CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.o: CMakeFiles/pacman_pcc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.o -MF CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.o.d -o CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.o -c /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/Pacman.cpp

CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/Pacman.cpp > CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.i

CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/Pacman.cpp -o CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.s

CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.o: CMakeFiles/pacman_pcc.dir/flags.make
CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.o: /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/еntities/Dot.cpp
CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.o: CMakeFiles/pacman_pcc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.o -MF CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.o.d -o CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.o -c /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/еntities/Dot.cpp

CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/еntities/Dot.cpp > CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.i

CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/src/еntities/Dot.cpp -o CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.s

# Object files for target pacman_pcc
pacman_pcc_OBJECTS = \
"CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.o" \
"CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.o" \
"CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.o" \
"CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.o" \
"CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.o" \
"CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.o"

# External object files for target pacman_pcc
pacman_pcc_EXTERNAL_OBJECTS =

pacman_pcc: CMakeFiles/pacman_pcc.dir/src/gameLogic/Game.cpp.o
pacman_pcc: CMakeFiles/pacman_pcc.dir/src/еntities/Player.cpp.o
pacman_pcc: CMakeFiles/pacman_pcc.dir/src/еntities/Enemy.cpp.o
pacman_pcc: CMakeFiles/pacman_pcc.dir/src/gameLogic/Level.cpp.o
pacman_pcc: CMakeFiles/pacman_pcc.dir/src/Pacman.cpp.o
pacman_pcc: CMakeFiles/pacman_pcc.dir/src/еntities/Dot.cpp.o
pacman_pcc: CMakeFiles/pacman_pcc.dir/build.make
pacman_pcc: CMakeFiles/pacman_pcc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable pacman_pcc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pacman_pcc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pacman_pcc.dir/build: pacman_pcc
.PHONY : CMakeFiles/pacman_pcc.dir/build

CMakeFiles/pacman_pcc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pacman_pcc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pacman_pcc.dir/clean

CMakeFiles/pacman_pcc.dir/depend:
	cd /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/build /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/build /Users/danilkrapivin/Documents/popa/PCC/pacman/pacman_pcc/build/CMakeFiles/pacman_pcc.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/pacman_pcc.dir/depend

