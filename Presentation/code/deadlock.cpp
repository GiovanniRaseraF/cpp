#include <functional>
#include <future>
#include <iostream>
#include <mutex>

std::mutex mx;

// Search zero with negative numbers
int searchNeg(bool *found, std::function<int(int)> f){
    int x = 1;
    while(!(*found)){
        x--;
        {   // Atomic
            std::lock_guard<std::mutex> lk{mx};
            if(f(x) == 0) *found = true;
        }

    }
    return x;
}

// Search zero with positive numbers
int searchPos(bool *found, std::function<int(int)> f){
    int y = 0;
    while(!(*found)){
        y++;
        {   // Atomic
            std::lock_guard<std::mutex> lk{mx};
            if(f(y) == 0) *found = true;
            if(*found) std::cout << "Found: f(" << y << ") = 0" << std::endl;
        }
    }
    return y;
}

int main(){
    auto myF = [](int x){return x == 30 ? 0 : 1;};
    bool found = false;
    auto fNeg = std::async(std::launch::async, searchNeg, &found, myF);
    auto fPos = std::async(std::launch::async, searchPos, &found, myF);
    auto resNeg = fNeg.get();
    auto resPos = fPos.get();
}

