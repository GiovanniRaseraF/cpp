#include <iostream>
#include <string>

int main(){
    int scores[] {100, 95, 89};

    std::cout << scores << std::endl;
    std::cout << *scores << std::endl; // 100

    int *score_ptr {scores};

    std::cout << "Puntatore copiato da scores:" << score_ptr << std::endl;
    std::cout << *score_ptr << std::endl;

    std::cout << score_ptr[1] << std::endl;
    std::cout << *(score_ptr + 2) << std::endl;

    return 0;
}