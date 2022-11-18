#include <functional>
#include <iostream>
#include <vector>
#include <iomanip>
#include <algorithm>
#include <limits>

int main(){
    std::vector<int> test {30, 200, 10, 12, 21, 2};

    auto bonus = [](std::vector<int> &scores, int bonus_points){
        for(auto &sc : scores){
           sc += bonus_points; 
        }
    };

    std::for_each(test.begin(), test.end(), 
        [](auto &val){
            std::cout << val << " ";
        });
    std::cout << std::endl;


    bonus(test, 10);
    std::for_each(test.begin(), test.end(), 
        [](auto &val){
            std::cout << val << " ";
        });
    std::cout << std::endl;


    auto bonus_generic = [](auto &container, double bonus_points){
        for (auto &con : container){
            con += bonus_points;
        }
    };
    
    bonus_generic(test, 10);
    
    std::for_each(test.begin(), test.end(), 
        [](auto &val){
            std::cout << val << " ";
        });
    std::cout << std::endl;



}