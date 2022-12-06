/*
Differente dall'iniziazione eager

inizializzo una varibaile solo se serve

pero quando inizializzo devo stare attento ad un potenziale lock
*/
#include <vector>
#include <iostream>
#include <thread>
#include <mutex>
#include <shared_mutex>
#include <memory>

std::mutex print_mux;
std::mutex writevarmux;
class some{
    public:
    int a;
    some(int v) : a{v}{
        a = 0;
        std::cout << "creao" << std::endl;
    }
    void doit(int val){
        std::lock_guard<std::mutex> lock_print{print_mux};
        this->a = val;
        std::cout << "Hello" << this->a << std::endl;
    }
    ~some(){

    }
};

// Shared pointer to data
std::shared_ptr<some> some_ptr;
std::once_flag ptr_flag;

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

    some_ptr->doit(100);
}

void process_threadsafe(int value){
    // Questo serve perche:
    // c++ prima decidere dove salvare l'elemento 
    // quindi some_ptr non sarà null 
    // e poi crea l'oggetto vero a proprio
    std::call_once(ptr_flag, [](){some_ptr = std::make_shared<some>(10);});
    while(true){
        some_ptr->doit(value);
    }
}

int main(){
    //some_ptr = std::make_shared<some>(10);
    //some_ptr->doit();
    //std::shared_ptr<int> t;
    //t = std::make_shared<int>(10);

    //std::cout << *t << std::endl;
    std::vector<std::thread> v{};
    std::thread t1{process_threadsafe, 100};
    std::thread t2{process_threadsafe, 23};
    for(int i = 0; i < 10; i++){
        v.push_back(std::thread{process_threadsafe, i});
    }

    for(auto &t : v){
        t.join();
    }

    t1.join();
    t2.join();
}

