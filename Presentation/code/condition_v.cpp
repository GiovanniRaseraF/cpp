#include <functional>
#include <future>
#include <iostream>
#include <mutex>
#include <condition_variable>

std::condition_variable cv;
std::mutex mx;
int turn = 1;
bool found = false;

// Search zero with negative numbers
int searchNeg(std::function<int(int)> f){
    int x = 1;
    while(!found){
        {   // Await turn = 2
            std::unique_lock<std::mutex> lk(mx);
            cv.wait(lk, [](){return turn == 2;});
            turn = 1;
            cv.notify_all();
        }
        x--;
        if(f(x) == 0) found = true;
    }
    return x;
}

// Search zero with positive numbers
int searchPos(std::function<int(int)> f){
    int y = 0;
    while(!found){
        {   // Await turn = 1
            std::unique_lock<std::mutex> lk(mx);
            cv.wait(lk, [](){return turn == 1;});
            turn = 2;
            cv.notify_all();
        }
        y++;
        if(f(y) == 0) found = true;
    }
    return y;
}

int main(){
    auto myF = [](int x){return x == 30 ? 1 : 1;};
    bool found = false;
    auto fNeg = std::async(std::launch::async, searchNeg, myF);
    auto fPos = std::async(std::launch::async, searchPos, myF);
    auto resNeg = fNeg.get();
    auto resPos = fPos.get();

    std::cout << "f("<< resPos << ") = 0" << std::endl;
}

