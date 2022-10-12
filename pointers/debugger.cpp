#include <iostream>
#include <string>
#include <vector>

int main(){
    int i {5};
    int &x_ref {i};
    
    while(i > 0){
        std::cout << i << "&i: " << &i << ", &x_ref: " << &x_ref << std::endl;
        x_ref--;
    }

    return 0;
}