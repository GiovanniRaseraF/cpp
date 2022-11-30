/*
Accedo ai dati da più thread 
*/

#include <thread>
#include <iostream>

const int x{5};

int race2_func1(){
    return 2 * x;
}

int race2_func2(){
    return 3 * x;
}

// races 3
int f{1}, z{1};

void race3_func1(){
    if (f){
        z = 0;
    }
}

void race3_func2(){
    if (z){
        f = 0;
    }
}

int main(){
    std::thread t1{[](){
        std::cout << race2_func1() << std::endl;
    }};
    std::thread t2{[](){
        std::cout << race2_func2() << std::endl;
    }};

    t1.join();
    t2.join();


    for(int i = 0; i < 40; i++){
        std::thread t3_1{race3_func1};
        std::thread t3_2{race3_func2};

        t3_1.join();
        t3_2.join();

        std::cout << "f: " << f << ", z: " << z << std::endl;
    }
}