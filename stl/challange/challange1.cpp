#include <iostream>
#include <string>
#include <deque>
#include <algorithm>
#include <cstring>
#include <cstdbool>
#include <ciso646>

bool is_palindrome(const std::string &s){
    if(s.length() < 2) return true;
    bool ret = true;

    std::deque<char> deq;
    std::copy_if(s.begin(), s.end(), 
        std::back_inserter(deq),
        [](char c){return std::isalpha(c);}); 

    char f, b;
    while(!deq.empty()){
        if(not deq.empty()){
            deq.pop_front();
            f = deq.front();
        }
        if(not deq.empty()){
            deq.pop_back();
            b = deq.back();
        }

        if(b != f && !deq.empty()) ret = false;
    } 

    return ret; 
}

int main(){
    std::deque<int> d {1};

    //std::cout << std::boolalpha << is_palindrome("aa");
    //std::cout << std::boolalpha << is_palindrome("aabaa");
    std::cout << std::boolalpha << is_palindrome("fdsaasdffdsa") << std::endl;
    std::cout << std::boolalpha << is_palindrome("aa") << std::endl;
    std::cout << std::boolalpha << is_palindrome("aa") << std::endl;
    std::cout << std::boolalpha << is_palindrome("aa") << std::endl;
    std::cout << std::boolalpha << is_palindrome("aa") << std::endl;
}