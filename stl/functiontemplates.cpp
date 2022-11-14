/*
Template alle funzioni

- è un blueprint generico
- posso usare tutti i tipi di dati che io voglio
- il template viene poi linkato a compile time,
- più velocità ma piu memoria usata 


*/

#include <iostream>
#include <string>
// Esempio
template <typename T>
T max(T a, T b){
    return (a > b) ? a : b;
}

template <typename T1, typename T2>
void func(T1 a, T2 b){
    std::cout << a << " " << b << std::endl;
}

template <typename T>
void myswap(T &a, T &b){
    T temp = a;
    a = b;
    b = temp;
}

int main(){
    int a{10}, b{20};

    std::cout << max<int>(a, b);

    std::cout << max<double>(a, b);

    // Devo stare attento perche posso passare quasi tutti i tipi di dati 
    // alla funzione max, sempre che sia implementata la funzione di >
    // 

    func<double, double>(23, 334.3);
    func<std::string, std::string>("hello", "Hello");

    max<std::string>("ciao", "bello");

    //max<int, char>(10, 'a');
    int x = 100, y = 200;
    std::cout << x << " " << y << std::endl;
    myswap(x, y);
    std::cout << x << " " << y << std::endl;
}