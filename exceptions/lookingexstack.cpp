/*
Se una funzione lancia un'eccezione e nessuno fa il catch allora 
il programma crasha


*/

void func1(){
    throw 0;
}

void func2(){
    func1();
}

void func3(){
    func2();
}


void func4(){
    func3();
}

#include <iostream>
int main(){
    try{

    func4();
    }
    catch(int &ex){
       std::cout << "Errore" << std::endl;
    }
}