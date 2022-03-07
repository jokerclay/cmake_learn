### CMakeLists.txt 中 添加可执行文件名 和 源文件路径

```

# add_executable(可执行文件名 文件源(相对于根目录即工程目录下))
add_executable(test_exe main.cpp)

```

### 创建源文件 main.cpp
```cpp
#include <iostream>
using namespace std;

int main() {

    cout << "hello world..." << endl;

    return 0;
}



```

### 使用camke
`cd build`
`cmake ..`

```
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
-- Build files have been written to: /home/username/Documents/c++/cmake/03_hello_world_executable/test_folder/build
```


### cmake 创建了一个 MakeFile， 可以运行 `make`
### 如果不知道构建系统， 可以运行 `cmake --build [生成路径]` 
```
[ 50%] Linking CXX executable test_exe
[100%] Built target test_exe
```


### 生成了可执行文件 `test_exe`

```
ls

CMakeCache.txt  CMakeFiles  cmake_install.cmake  Makefile  test_exe

```
### 执行可执行文件 `test_exe`

```
./test_exe
hello world...
```
















