#include <iostream>
#include <thread>
#include <condition_variable>
#include <mutex>
#include <string>

// per evitare che il wakup venga chiamato prima del wait
// devo usare una funzione nel wait

using namespace std::chrono_literals;

// Globals
std::mutex mut;
std::condition_variable cv;

std::string sdata{"empty"};
bool condition{true};

// Waiting thread
void reader(){
    std::cout << "reading thread starts" << std::endl;
    //std::this_thread::sleep_for(1s);
    while(true){
        {
        std::unique_lock<std::mutex> lk{mut};
        cv.wait(lk, []{return condition;});

        std::cout << "data is: " << sdata << " " << std::endl;
        condition = false;
        }
    }
}

void writer(){
    std::cout << "writer init" << std::endl;
    int index = 0;

    while(true){
        index++;
        {
            std::lock_guard<std::mutex> lg{mut};
            std::this_thread::sleep_for(1s);

            sdata = "hello man " + std::to_string(index);
            condition = true;
        }
        cv.notify_one();
    }

    std::cout << "writer exit";
}

int main(){
    std::thread t2{writer};
    std::this_thread::sleep_for(2s);
    std::thread t1{reader};

    t1.join();
    t2.join();
}