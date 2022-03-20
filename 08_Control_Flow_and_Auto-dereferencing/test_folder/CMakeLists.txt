# 要求 cmake 的最低版本
cmake_minimum_required(VERSION 3.12)


# 工程名(Myproject)及版本 (1.0.0)
project(Myproject VERSION 1.0.0)

# add_executable(可执行文件名 文件源(相对于根目录即工程目录下))
add_executable(test_exe main.cpp)

set(my_bool TRUE)
set(my_value 1)
if(${my_bool} AND my_value EQUAL 2)
    message(STATUS "condition we met .....")
else()
    message(STATUS "failed .........")
    
endif()





