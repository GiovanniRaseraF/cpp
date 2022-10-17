#pragma once
#include "precompparam.hpp"
#include <string>
#include <sstream>
#include <vector>
#include <iostream>

#ifdef DEB
#define PRINT(str) debugPrint(str);
#define PRINTLN(str) debugPrintln(str);

void debugPrint(const char *const str){
    std::cout << str;
}
void debugPrint(std::string str){
    std::cout << str;
}
void debugPrintln(const char *const str){
    std::cout << str << std::endl;
}
void debugPrint(double str){
    std::cout << str;
}
void debugPrintln(double str){
    std::cout << str << std::endl;
}
void debugPrintln(std::string str){
    std::cout << str << std::endl;
}

#else
#define PRINT(str) ;
#define PRINTLN(str) ;
#endif