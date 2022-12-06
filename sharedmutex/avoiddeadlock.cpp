/*
Se ho più di un lock in c++ 17 posso usare
 - scoped_lock lk1{mutex1, mutex2};

questo permette di fare il lock di tutti e due i mutex nello stesso momento
come se fosse un'operazione atomica

*/

#include <thread>
#include <mutex>
#include <iostream>

std::mutex m1, m2;

void func1(){
    std::scoped_lock lk1{m1, m2};
    std::this_thread::sleep_for(std::chrono::seconds(1));
    std::cout << "func1" << std::endl;
}

void func2(){
    std::scoped_lock lk1{m2, m1};
    std::this_thread::sleep_for(std::chrono::seconds(1));
    std::cout << "func2" << std::endl;
}

int main(){
    std::thread t1{func1};
    std::thread t2{func2};

    t1.join();
    t2.join();

}