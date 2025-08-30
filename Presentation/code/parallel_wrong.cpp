#include <functional>
#include <future>
#include <iostream>

// Search zero with negative numbers
int searchNeg(bool *found, std::function<int(int)> f){
    int x = 1;
    while(!(*found)){
        x--;
        *found = (f(x) == 0);
    }
    return x;
}

// Search zero with positive numbers
int searchPos(bool *found, std::function<int(int)> f){
    int y = 0;
    while(!(*found)){
        y++;
        *found = (f(y) == 0);
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

