cmake_minimum_required(VERSION 3.10)

#set the project name
project(LinearAlgebraMPI)

#enable modern C++
set(CMAKE_CXX_STANDARD 17)

#add the executable
add_executable(Main.exe main.cpp HyperExample.cpp PETScExample.cpp LocalLinearAlgebra.cpp)

enable_testing()
add_test(Test HyperExample.cpp PETScExample.cpp LocalLinearAlgebra.cpp )

enable_testing()
find_package(GTest REQUIRED)

add_executable(Test.exe Test.cpp)
target_link_libraries(Test.exe PUBLIC GTest::GTest GTest::Main)

#Fichier CMakeLists.txt
gtest_discover_tests(Test.exe)
