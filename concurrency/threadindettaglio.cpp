#include <thread>
#include <iostream>
#include <string>
#include <vector>
#include <chrono>

void sayhelloeveryXseconds(const int X, const std::string &S){
    while(true){
        std::cout << std::this_thread::get_id() << ":" << S << std::endl;

        {
            using namespace std::literals;
            std::this_thread::sleep_for(std::chrono::seconds(X));
        }
    }
}

int main(){
    const int X1 = 1;
    const std::string S1{"Giovanni"};
    std::thread hello1Sec{sayhelloeveryXseconds, X1, std::ref(S1)};

    int X2 = 10;
    std::string S2{"Federico"};
    std::thread hello2Sec{sayhelloeveryXseconds, X2, std::ref(S2)};

    hello1Sec.join();
    hello2Sec.join();
}


/*
E' importante dire che quando ho un oggetto di tipo thread
questo può essere ottenuto da un solo thread di esecuzione alla volta

Pero posso usare la move semantics per trasferire ownership 
tra un oggetto e un'altro 
*/