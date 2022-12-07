#include <thread>
#include <iostream>
#include <mutex>
#include <condition_variable>
#include <string>

using namespace std::chrono_literals;

// Devo aspettare che succeda qualcosa
std::mutex mux;
std::condition_variable funiscedwritingcond;
std::string data{"initiale"};

void reader(){
    while(true){
    std::unique_lock<std::mutex> guard(mux);
    funiscedwritingcond.wait(guard);

    std::cout << "data: " << data << std::endl; 
    }
}

void writer(){
    int a = 0;
    while(true)
    {
    {
        std::this_thread::sleep_for(1s);
        std::lock_guard<std::mutex> lg(mux);
        a++;
        data = "Aiuto" + std::to_string(a);
    }

    funiscedwritingcond.notify_one();
    }
}

int main(){
    std::thread w{writer};
    std::thread r{reader};

    w.join();
    r.join();
}
