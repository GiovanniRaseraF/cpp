#include <iostream>
#include <vector>
#include <list>
#include <map>
#include <set>
#include <ciso646>

int main(){
    std::vector<int>::iterator itvector;
    std::list<int>::iterator itlist;
    std::map<int, int>::iterator itmap;
    std::set<float>::iterator itset;

    std::vector<int> vec{1, 2, 3};
    itvector = vec.begin();

    auto ifvectorend = vec.end();

    while(itvector != ifvectorend){
        std::cout << *itvector << " ";
        ++itvector;
    }

    std::cout << std::endl;

    if (true or false){
        std::cout << "Hello";
    }

    for(auto it = vec.begin(); it < vec.end(); it++){
        std::cout << *it << " ";
    }
    std::cout << std::endl;
    // Posso anche creare un iteratore che va al contrario
    for(auto it = vec.rbegin(); it < vec.rend(); it++){
        std::cout << *it << " "; 
    }
}