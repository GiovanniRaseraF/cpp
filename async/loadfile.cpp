#include <thread>
#include <functional>
#include <future>
#include <iostream>
#include <fstream>
#include <string>

void periodic(std::chrono::microseconds delay, std::function<void(void)> toexec){
    while(true){
        toexec();

        std::this_thread::sleep_for(delay);
    } 
}

std::string loadfiletostring(std::string filename){
    std::ifstream filehandle;
    try{
        filehandle.open(filename);
    }catch(...){
        std::cerr << "cannot load file: " << filename << std::endl;
        return "";
    }

    std::string data{""};

    while(!filehandle.eof()){
        std::string line{};
        getline(filehandle, line);

        data += line;
        std::this_thread::sleep_for(std::chrono::milliseconds(500));
    }

    return data;
}

int main(){
    std::packaged_task<std::string(std::string)> fileload{loadfiletostring};
    std::future<std::string> waitfordata{fileload.get_future()};

    std::thread periodictask{periodic, std::chrono::milliseconds(1000), [](){
        std::cout << "periodic" << std::endl;
    }};
    periodictask.detach();

    std::thread fileloader{std::move(fileload), "test.csv"};
    fileloader.detach();

    waitfordata.wait();
    std::cout << waitfordata.get() << std::endl;
}