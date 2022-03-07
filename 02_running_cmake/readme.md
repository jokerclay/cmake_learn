# cmake
### 启动 cmake
`cmake`
```
Usage

  cmake [options] <path-to-source>
  cmake [options] <path-to-existing-build>
  cmake [options] -S <path-to-source> -B <path-to-build>

Specify a source directory to (re-)generate a build system for it in the
current working directory.  Specify an existing build directory to
re-generate its build system.

Run 'cmake --help' for more information.
```


### 创建工程文件夹，这里以 `test_folder` 为例

### `test_folder` 中创建 `CMakeLists.txt` 文件，文件名必须一致,并写入以下内容

```
# 要求 cmake 的最低版本
cmake_minimum_required(VERSION 3.12)


# 工程名及版本
project(Myproject VERSION 1.0.0)

```

### 创建 build 文件夹，该文件夹中将会存储 build 出来的文件
`make build`


### 在 build 文件夹中生成工程 格式 cmake [CMakeLists文件的路径]
`cd ./build`
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
-- Build files have been written to: /home/username/Documents/c++/cmake/02_running_cmake/test_folder/build

```


### 在 build 文件夹中你可以看到有如下文件
```
CMakeCache.txt  CMakeFiles  cmake_install.cmake  Makefile
```

#ccmake
### ccmake 是命令行中的图形界面

`ccmake ..`

```
                                                    Page 1 of 1
 CMAKE_BUILD_TYPE                *
 CMAKE_INSTALL_PREFIX            */usr/local






CMAKE_BUILD_TYPE: Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel ...                                                                                                                                                                    Keys: [enter] Edit an entry [d] Delete an entry                                                                                                                                                                                                          CMake Version 3.22.3      [l] Show log output   [c] Configure
      [h] Help              [q] Quit without generating
      [t] Toggle advanced mode (currently off)

```


#cmake-gui 图形界面

### 图形界面， 不做过多解释

