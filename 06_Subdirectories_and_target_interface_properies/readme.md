# 使用camke 创建 库
## 只创建可执行程序
- CMakeLists.txt 
```cmake
# 要求 cmake 的最低版本
cmake_minimum_required(VERSION 3.12)


# 工程名(Myproject)及版本 (1.0.0)
project(Myproject VERSION 1.0.0)

# add_executable(可执行文件名 文件源(相对于根目录即工程目录下))
add_executable(test_exe main.cpp)

``` 
- main.cpp

```C++

#include <iostream>

int main() {

    // 将如下一行代码制作成 library
     std::cout << "hello world  " << std::endl;

    // hello::say_hello();

    return 0;
}

```

- 生成二进制步骤
```
1. mkdir build
2. cd build
3. cmake ..
4. make
```
- 结果
```
cmake ..
-- The C compiler identification is GNU 11.2.0
-- The CXX compiler identification is GNU 11.2.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /home/username/Documents/c++/cmake/04_making_library/test_folder2/build




make
[ 50%] Building CXX object CMakeFiles/test_exe.dir/main.cpp.o
[100%] Linking CXX executable test_exe
[100%] Built target test_exe



ls
CMakeCache.txt  CMakeFiles  cmake_install.cmake  Makefile  test_exe


./test_exe
hello world
```

# 使用camke 创建 库

### 创建 hello 库
- 创建 `hello.hpp` `hello.cpp`
* `hello.hpp`
```c++
#ifndef HELLO_HPP_INCLUDED
#define HELLO_HPP_INCLUDED



namespace hello {
    void say_hello();
}

#endif
```

* `hello.cpp`
```C++
#include "hello.hpp"
#include <iostream>

void  hello::say_hello() {
    // say_hello 
    std::cout << "Hello, world ! hahahhahha" <<  std::endl;
    std::cout << "Hello, world ! eeeeeeeeee" <<  std::endl;

}
```

- 修改 `main.cpp` `CMakeLists.txt`

* `main.cpp`
```C++
#include <iostream>
#include "hello.hpp"

int main() {

    // 将如下一行代码制作成 library
    //  std::cout << "hello world  " << std::endl;

    hello::say_hello();

    return 0;
}
```

* `CMakeLists.txt`
```camke
# 要求 cmake 的最低版本
cmake_minimum_required(VERSION 3.12)


# 工程名(Myproject)及版本 (1.0.0)
project(Myproject VERSION 1.0.0)



# add_executable(可执行文件名 文件源(相对于根目录即工程目录下))
 add_executable(test_exe main.cpp)

# 直接加 hello.cpp 也可编译，但这并不是我们的目的
# add_executable(test_exe main.cpp hello.cpp)


# 使用内置的 add_library 函数， 将 库文件和函数写在里面
add_library(
    say_hello 
    hello.hpp
    hello.cpp
)

# 再将自已生成的库 链接到 二进制文件
target_link_libraries(test_exe PRIVATE say_hello)
```
* 运行结果
```
make
[ 25%] Building CXX object CMakeFiles/say_hello.dir/hello.cpp.o
[ 50%] Linking CXX static library libsay_hello.a
[ 50%] Built target say_hello
[ 75%] Building CXX object CMakeFiles/test_exe.dir/main.cpp.o
[100%] Linking CXX executable test_exe
[100%] Built target test_exe

// 可看到 50% 的时候 生成了 静态库 [ 50%] Linking CXX static library libsay_hello.a
// NOTE 默认情况下 cmake 生成的是静态库, 可在 CMakeLists.txt 修改 如下

```


```

add_library(
    say_hello SHARED
    hello.hpp
    hello.cpp
)

// 加上了 SHARED 之后就可以生成动态库 .so 文件

```

* 运行结果
```
make
[ 25%] Building CXX object CMakeFiles/say_hello.dir/hello.cpp.o
[ 50%] Linking CXX shared library libsay_hello.so
[ 50%] Built target say_hello
[ 75%] Building CXX object CMakeFiles/test_exe.dir/main.cpp.o
[100%] Linking CXX executable test_exe
[100%] Built target test_exe


// 可以看到 50% 的时候生成了动态库  [ 50%] Linking CXX shared library libsay_hello.so
ls
CMkeCache.txt  CMakeFiles  cmake_install.cmake  libsay_hello.so  Makefile  test_exe



// 查看二进制文件 可以看到 二进制文件与我们的动态库链接在一起了
ldd test_exe
        linux-vdso.so.1 (0x00007ffd54fbb000)
        libsay_hello.so => /home/username/Documents/c++/cmake/04_making_library/test_folder2/build/libsay_hello.so (0x00007fbc1b03c000)
        libstdc++.so.6 => /lib/x86_64-linux-gnu/libstdc++.so.6 (0x00007fbc1ae1c000)
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fbc1ac53000)
        libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007fbc1ab10000)
        /lib64/ld-linux-x86-64.so.2 (0x00007fbc1b048000)
        libgcc_s.so.1 => /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x00007fbc1aaf6000)
```









































