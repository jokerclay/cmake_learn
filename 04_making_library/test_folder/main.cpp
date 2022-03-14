#include <iostream>
#include "hello.hpp"

int main() {

    // 将如下一行代码制作成 library
    // cout << "hello world..." << endl;

    hello::say_hello();

    return 0;
}
