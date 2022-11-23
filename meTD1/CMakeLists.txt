cmake_minimum_required(VERSION 3.10)

# set the project name
project(Tutorial)

# enable modern C++
set(CMAKE_CXX_STANDARD 17)

# add the executable
add_executable(Main.exe main.cpp)

#add subdirectory
add_subdirectory(my_lib)

#HMM i dont remember creating an executable, whee??
target_link_libraries(main PUBLIC Myclass.h)
