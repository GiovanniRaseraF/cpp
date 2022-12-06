/*
Differente dall'iniziazione eager

inizializzo una varibaile solo se serve

pero quando inizializzo devo stare attento ad un potenziale lock
*/

#include <iostream>
#include <thread>
#include <mutex>
#include <shared_mutex>
#include <memory>

class some{
    public:
    int a;
    some(int v) : a{v}{
        a = 0;
        std::cout << "creao" << std::endl;
    }
    void doit(){
        this->a = 100;
        std::cout << "Hello" << this->a << std::endl;
    }
    ~some(){

    }
};

// Shared pointer to data
std::shared_ptr<some> some_ptr; 

// mutex
std::mutex process_mux;

void process(){
    if(!some_ptr){
        std::lock_guard<std::mutex> lk{process_mux};

        if(!some_ptr){
            // Per far si che si crei devo usare anche il distruttore
           some_ptr = std::make_shared<some>(10);
        }
    }

    some_ptr->doit();
}

int main(){
    //some_ptr = std::make_shared<some>(10);
    //some_ptr->doit();
    //std::shared_ptr<int> t;
    //t = std::make_shared<int>(10);

    //std::cout << *t << std::endl;
    
    std::thread t1{process};
    std::thread t2{process};

    t1.join();
    t2.join();
}

