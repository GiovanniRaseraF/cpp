#include <iostream>
#include <string>
#include <numeric>
#include <complex>
#include <functional>
#include <vector>

void filter_vec(const std::vector<int> &vec, std::function<bool(int)> condtostay){
    std::cout << "[";
    for(const auto &i : vec){
        if(condtostay(i)){
            std::cout << i << " ";
        }
    }
    std::cout << "]";
}
int main(){
    auto even = [](int x){return x % 2 == 0;};
    auto odd = [](int x){return x % 2 != 0;};

    std::vector<int> vec{100, 2, 4, 3, 7, 6, 3, 9, 7, 100};

    filter_vec(vec, odd); 
    std::cout << std::endl;
    filter_vec(vec, even); 

    std::sort(vec.begin()+3, vec.end(), [](const int &i, const int &j){
        return j < i;
    });

     
    filter_vec(vec, [](int x){return true;}); 

}