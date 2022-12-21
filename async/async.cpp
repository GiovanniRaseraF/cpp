#include <future>
#include <thread>
#include <iostream>

int main(){
    // posso usare async per far partire dei thread asincroni
    auto result = std::async(std::launch::async, [](){
            std::cout << "async call" << std::endl;
            return 23;
    });

    result.wait();
    std::cout << "result is: " << result.get() << std::endl;

    // mettere un while true non ha senso siccome no passa mai
    auto ret = std::async(std::launch::deferred, [](){
        while(true){
            std::cout  << "hello" << std::endl;
            std::this_thread::sleep_for(std::chrono::seconds(1));
        }
    });

    while(true){
        std::cout << "Sto eseguendo" << std::endl;
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }

    
}
