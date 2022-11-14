/*
Libreria standard dei template

Standard template library

Metaprogramming per arrivare al generic programming

Function templates

class templetes

// 
è un insieme di containers

Ha dei componenti:
- Containers:
    - array, vector, deque, stack, set, map

- Algorithms:
    - find, max, cout, accumulate, sort

- Iterators:
    - forward, reverse, by value, by referene, constant


*/

#include <vector>
#include <algorithm>
#include <iostream>
#include <functional>
#include <numeric>

int main(){
    std::vector<int> v{1, 3, 2};

    std::sort(v.begin(), v.end());
    for(auto elem : v)
        std::cout << elem << " ";
    std::cout << std::endl;

    std::reverse(v.begin(), v.end());
    for(auto elem : v)
        std::cout << elem << " ";
    std::cout << std::endl;

    double sum = std::accumulate(v.begin(), v.end(), 0);

    /*
    Diversi tipi di container
    - Sequence containers:
        - array, vector, list, forward_list, deque
        - tutto viene aggiunto come viene aggiunto
    - Associative containers
        - set, multi set, map 

    - Container adapters


    Tipi di iteratori:
    - Input iterators - from container to program
    - Output iterators - from program to container

    Tipi di algoritmi:
    - Modificatori
    - NON modificatori
    */

   
}