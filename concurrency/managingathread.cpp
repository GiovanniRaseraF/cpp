#include <iostream>
#include <thread>
#include <fstream>
// Per creare un deamon posso usare il detach 

void func(){

    while(true){
        std::ofstream fileout{"./test.txt", std::ios_base::app};
        if(!fileout.is_open()){
           std::cerr << "cannot open file" << std::endl; 
        } 
        fileout << "Deamon" << std::endl;
        fileout.close();

        std::this_thread::sleep_for(std::chrono::seconds(1));
        break;
    }
}

int main(){
    std::thread tdeamon(func);
    //tdeamon.join();
    tdeamon.detach();

    while(true){
        std::this_thread::sleep_for(std::chrono::seconds(2));
        std::cout << "Passano secondi" << std::endl;
    }
}