#include <algorithm>
#include <string>
#include <iostream>

int main(){
    std::string ciao{"abcdef"};
    unsigned long long count = 0;
    while(std::next_permutation(ciao.begin(), ciao.end())){
        //std::cout << ciao << std::endl;
        count++;
    }

    std::cout << "Permutazioni: " << count << std::endl;
}