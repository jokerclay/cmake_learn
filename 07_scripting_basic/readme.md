# Scripting basic
- there is 2 kinds of context that cmake script can run 
    1. config context
    2. plain script context

* configure script  have `CmakeLists.txt` in the root dirtory

* commands
```
# command_name(LIST OF ARGUMENTS)
# NOTE: you can not have 2  commands in a same line

```

* comments
`# comments`


* everything in cmake is a string, it's not  a variable not a command, just a 
  string.


* cmake have `message()` function to let you print out output.
    * remember to put quotes around the message you are trying to deliver
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
I am using message funciton......
-- Configuring done
-- Generating done
-- Build files have been written to: /home/username/Documents/c++/cmake/07_scripting_basic/test_folder/build

```
* using variable in cmake
```camke
set(my_variable "the value of my_variable ")
```
* To use the variable,  you use `${your_variable_name}` 
```camke
message(${my_variable})
```
resualt
```
-- I am using message funciton......
the value of my_variable
-- Configuring done
-- Generating done
-- Build files have been written to: /home/username/Documents/c++/cmake/07_scripting_basic/test_folder/build
```


* there was  some build in variable in cmake
`PROJECT_NAME` --> it will find the most close project in your cmakelist
`message(STATUS ${PROJECT_VERSION})`




```
-- I am using message funciton......
-- the value of my my_variable is the value of my_variable
the value of my_variable
-- MostCloseProject
-- 1.2.3
-- Configuring done
-- Generating done
```



