cmake_minimum_required(VERSION 3.10)

# set the project name
project(TD2)

# enable modern C++
set(CMAKE_CXX_STANDARD 17)

#add_library() //i have not created the libs yet

# add the main executable
add_executable(Main.exe main.cpp)

#testing binary
add_executable(cpp_test Test.cpp)
target_link_libraries(cpp_test PRIVATE main) #hmmm :/

#target_link_libraries()

#tests

enable_testing()

add_test(
	NAME Test
	COMMAND $<T>
	)
