### 查看 Cmake 版本
```
~>$ cmake --version

cmake version 3.18.4

CMake suite maintained and supported by Kitware (kitware.com/cmake).
```



### CMake 官方网站下载最新版本：
`https://cmake.org/download/`


### 下载 Linux 安装脚本
`wget https://github.com/Kitware/CMake/releases/download/v3.22.3/cmake-3.22.3-linux-x86_64.sh `
* 脚本中是含有 tar.gz file 的


### 检查安装脚本版本
`sh cmake-3.22.3-linux-x86_64.sh --version`
```
CMake Installer Version: 3.22.3, Copyright (c) Kitware
```

### 将 cmake 安装到 /usr/local/ 并直接把 bin 放到子目录中
`sudo sh cmake-3.22.3-linux-x86_64.sh --prefix=/usr/local/ --exclude-subdir`

```
CMake Installer Version: 3.22.3, Copyright (c) Kitware
This is a self-extracting archive.
The archive will be extracted to: /usr/local/

Using target directory: /usr/local/
Extracting, please wait...

Unpacking finished successfully

```


### 检查安装后的cmake 版本

`/usr/local/bin/cmake --version`

```
cmake version 3.22.3

CMake suite maintained and supported by Kitware (kitware.com/cmake).

```


### 检查是否全局安装

`cmake --version`

```
cmake version 3.22.3

CMake suite maintained and supported by Kitware (kitware.com/cmake).

```


### 检查gui是否全局安装

`cmake-gui --version`

```
cmake version 3.22.3

CMake suite maintained and supported by Kitware (kitware.com/cmake).

```













