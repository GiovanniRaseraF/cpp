#include <thread>
#include <string>
#include <iostream>

void hello(){
    while(true){
        std::cout << "Hello" << std::endl;

        std::this_thread::sleep_for(std::chrono::seconds(2));
    }
}

/// @brief Fa partire il thread da eseguire
/// @param t viene mosso all'interno di t 
void usethread(std::thread t){
    // solo chi ha in mano t può chiamare join
    t.join();
}

std::thread usethreadnotjoined(std::thread t){
    std::cout << "Ho in mano t: " << t.get_id() << std::endl;
    return t;
}

int main(){
    std::thread t{hello};
    //usethread(std::move(t));
    //usethread(std::thread{hello});
    std::thread t2 = usethreadnotjoined(std::move(t)); 
     

    t2.join();
    std::cout << "Come va ?";

}