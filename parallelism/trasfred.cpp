#include <numeric>
#include <algorithm>
#include <vector>
#include <iostream>

int main(){
    std::vector<double> expected{0.1, 0.2, 0.3, 0.4, 0.5};
    std::vector<double> actual{0.09, 0.22, 0.27, 0.41, 0.52};

    auto max_diff = std::transform_reduce(
        std::begin(expected),
        std::end(expected),
        std::begin(actual),
        0.0,

        // Per seconda questa funzione che certra con il 
        // reduce
        [](double a, double b){return std::max(a, b);},
        

        // Prima viene eseguita questa funzione
        [](double l, double r){return std::fabs(r-l);}
    );

    std::cout << "max diff: " << max_diff << std::endl;
}