# 要求 cmake 的最低版本
cmake_minimum_required(VERSION 3.12)


# 工程名(Myproject)及版本 (1.0.0)
project(Myproject VERSION 1.0.0)

# add_executable(可执行文件名 文件源(相对于根目录即工程目录下))
add_executable(test_exe main.cpp)


set_property(
    GLOBAL
    PROPERTY FOO
    1
    2
    3
    4
    )
get_cmake_property(foo_value FOO)
message(STATUS "foo value is: ${foo_value}" )


