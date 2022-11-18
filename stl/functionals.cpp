#include <functional>
#include <iostream>
void foo(std::function<void(int)> l){
    l(10);
}

void foo2(void (*l) (int)){
    l(10);
}

void foo3(auto l){
    l(10);
}

// Posso anche ritornare le funzioni
std::function<void(int)> fooret(){
    return [](int x){std::cout << x;};
}
void (*fooret2()) (int) {
    return [] (int x ) {std::cout << x;};
}

auto fooret3(){
    return [](int x) {std::cout << x;};
}

int main(){
    auto l = fooret3();
    foo(l);
}