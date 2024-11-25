#pragma once

#include <hello/hello.h>
#include <vector>

int test(){
    std::cout << "hello, this is a test" << std::endl;
    std::vector<int> arr;
    std::cout << arr.at(100) << std::endl;
    return 0;
}