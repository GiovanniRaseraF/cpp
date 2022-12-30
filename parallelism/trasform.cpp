#include <numeric>
#include <algorithm>
#include <vector>
#include <iostream>

int main(){
    std::vector<int> v(100, 1);
    std::vector<int> v2;

    std::transform(v.begin(), v.end(), std::back_inserter(v2),[](int a){
        return a * 200;
    });


    for (auto i : v2)
        std::cout << i << " ";
}