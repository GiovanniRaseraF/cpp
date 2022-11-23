#include <iostream>
#include <iomanip>
#include <thread>
#include <string>

void hello(){
    std::cout << "Hello Thread" << std::endl;
}

void hellostr(std::string s){
    std::cout << s << std::endl;
}

void hellostrref(std::string &s){
    s = "Helllll";
}

class greeter{
    public:
    void hello(){std::cout << "Member func" << std::endl;}
};

int main(){
    std::string ss{"Hello"};
    std::thread calculator{hello};
    std::thread cal2{hellostr, "hello"};

    std::thread calc3{hellostrref, std::ref(ss)};
    calc3.join();
    std::cout << "ss adesso vale: " << ss << std::endl;

    std::cout << "Doing some work ..." << std::endl;

    cal2.join();
    calculator.join();
    
    // Posso anche chiamare le funzioni di classi e quindi
    // la funzione relativa ad una funzione di istanza in 
    // questo modo
    greeter greet;
    std::thread memberfunc{&greeter::hello, &greet};
    memberfunc.join();
    
}