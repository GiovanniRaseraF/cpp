#include <functional>
#include <future>
#include <iostream>
#include <mutex>
#include <array>
#include <condition_variable>

std::condition_variable cv;
std::mutex mx;

int k = 0;
bool B = true;
int i = 0, j = 0;

// vectors
#define M 5
std::array<int, M> a = {1, 2, 3, 4, 5}, b = {6, 7, 8, 9, 10};
std::array<int, 2*M> c = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

void S1(){
    while(i < M){ 
        {   // await B
            std::unique_lock<std::mutex> lk(mx);
            cv.wait(lk, [](){return B;});
            c[k] = a[i];
            k++;
            B = false;
            cv.notify_all();
        }
        i++;
    }
}

void S2(){
    while(j < M){
        {   // await !B
            std::unique_lock<std::mutex> lk(mx);
            cv.wait(lk, [](){return !B;});
            c[k] = b[j];
            k++;
            B = true;
            cv.notify_all();
        }
        j++;
    }
}

int main(){
    // S'
    k = 0;
    B = true;
    i = 0; j = 0;

    // [S1 | S2]
    auto thread1 = std::async(std::launch::async, S1);
    auto thread2 = std::async(std::launch::async, S2);
    thread1.get();
    thread2.get();

    // Print result
    std::cout << "c : [ ";
    for(auto v : c){
        std::cout << v << " ";
    }
    std::cout << "]" << std::endl;
}

