# 要求 cmake 的最低版本
cmake_minimum_required(VERSION 3.12)


# 工程名(Myproject)及版本 (1.0.0)
project(Myproject VERSION 1.0.0)

# add_executable(可执行文件名 文件源(相对于根目录即工程目录下))
add_executable(test_exe main.cpp)


# using message function
message(STATUS "I am using message funciton......")

set(my_variable "the value of my_variable ")

message(STATUS "the value of my my_variable is ${my_variable}")
message(${my_variable})

project(MostCloseProject VERSION 1.2.3)

message(STATUS ${PROJECT_NAME})
message(STATUS ${PROJECT_VERSION})





