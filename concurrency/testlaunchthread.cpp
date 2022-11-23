#include <iostream>
#include <string>
#include <thread>
#include <vector>

void gamestart(std::vector<std::string> &name){
    int len = name.size();

    for(int i = 1; i < 1000; i++){
        std::string n = name[(i-1) % len];
        std::string tosay = std::to_string(i);

        if(i % 3 == 0 && i % 5 == 0)
            tosay = "fizzbuzz!";
        else if(i % 3 == 0)
            tosay = "fizz!";
        else if(i % 5 == 0)
            tosay = "buzz!";
        
        std::cout << n << " says " << tosay << std::endl;

    }
}

int main(){
    std::vector<std::string> names{
        "Abdul", "Bart", "Claudia"
    };

    std::thread game{gamestart, std::ref(names)};

    game.join();
}