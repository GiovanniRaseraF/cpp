#include <functional>
#include <future>
#include <iostream>
#include <thread>
#include <chrono>

using namespace std::chrono_literals;

// Search zero with negative numbers
int searchNeg(bool *found, std::function<int(int)> f){
    int x = 1;
    while(!(*found)){
        x--;
        *found = (f(x) == 0);

        // Add this to slow execution 
        //std::this_thread::sleep_for(2ms);
    }
    return x;
}

// Search zero with positive numbers
int searchPos(bool *found, std::function<int(int)> f){
    int y = 0;
    while(!(*found)){
        y++;
        *found = (f(y) == 0);
        std::this_thread::sleep_for(2ms);
        if(*found) std::cout << "Found: f(" << y << ") = 0" << std::endl;
    }
    return y;
}

int myF(int x){
   return x >= 30 && x <= 30 ? 0 : 500; 
}

int main(){
    bool found = false;

    auto fNeg = std::async(std::launch::async, searchNeg, &found, myF);
    auto fPos = std::async(std::launch::async, searchPos, &found, myF);

    auto resNeg = fNeg.get();
    auto resPos = fPos.get();

    std::cout << "!Done" << std::endl;
}
