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
CMAKE_SOURCE_DIR = /home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests

# Include any dependencies generated for this target.
include CMakeFiles/HTTPClient.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HTTPClient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HTTPClient.dir/flags.make

CMakeFiles/HTTPClient.dir/HTTPClient.cpp.o: CMakeFiles/HTTPClient.dir/flags.make
CMakeFiles/HTTPClient.dir/HTTPClient.cpp.o: HTTPClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HTTPClient.dir/HTTPClient.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HTTPClient.dir/HTTPClient.cpp.o -c /home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests/HTTPClient.cpp

CMakeFiles/HTTPClient.dir/HTTPClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HTTPClient.dir/HTTPClient.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests/HTTPClient.cpp > CMakeFiles/HTTPClient.dir/HTTPClient.cpp.i

CMakeFiles/HTTPClient.dir/HTTPClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HTTPClient.dir/HTTPClient.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests/HTTPClient.cpp -o CMakeFiles/HTTPClient.dir/HTTPClient.cpp.s

# Object files for target HTTPClient
HTTPClient_OBJECTS = \
"CMakeFiles/HTTPClient.dir/HTTPClient.cpp.o"

# External object files for target HTTPClient
HTTPClient_EXTERNAL_OBJECTS =

HTTPClient: CMakeFiles/HTTPClient.dir/HTTPClient.cpp.o
HTTPClient: CMakeFiles/HTTPClient.dir/build.make
HTTPClient: CMakeFiles/HTTPClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable HTTPClient"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HTTPClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HTTPClient.dir/build: HTTPClient

.PHONY : CMakeFiles/HTTPClient.dir/build

CMakeFiles/HTTPClient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HTTPClient.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HTTPClient.dir/clean

CMakeFiles/HTTPClient.dir/depend:
	cd /home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests /home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests /home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests /home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests /home/jan5szh/workspaces/epoll_http_server_old_version_0.1/tests/CMakeFiles/HTTPClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HTTPClient.dir/depend

