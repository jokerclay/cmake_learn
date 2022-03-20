# control flow 

* if 
```
if("TRUE")
    message(STATUS "condition we met .....")
else()
    message(STATUS "failed .........")
    
endif()


if("FALSE")
    message(STATUS "condition we met .....")
else()
    message(STATUS "failed .........")
    
endif()


```
```

-- condition we met .....
-- Configuring done
-- Generating done
-- Build files have been written to: /home/username/Documents/c++/cmake/08_Control_Flow_and_Auto-dereferencing/test_folder/build



-- failed .........
-- Configuring done
-- Generating done
-- Build files have been written to: /home/username/Documents/c++/cmake/08_Control_Flow_and_Auto-dereferencing/test_folder/build

```
* we can also set a boolean variable to  `true` `false` .



```CMake
set(my_bool TRUE)
if(${my_bool})
    message(STATUS "condition we met .....")
else()
    message(STATUS "failed .........")
    
endif()

```
```
-- condition we met .....
-- Configuring done
-- Generating done
-- Build files have been written to: /home/username/Documents/c++/cmake/08_Control_Flow_and_Auto-dereferencing/test_folder/build
```
```
set(my_bool TRUE)
set(my_value 1)
if(${my_bool} AND my_value EQUAL 2)
    message(STATUS "condition we met .....")
else()
    message(STATUS "failed .........")
    
endif()


```

