#include <iostream>
#include <string>
#include <vector>

int main()
{
    int score{100};
    int *score_ptr{&score};

    // Deferenziazione del puntatore
    std::cout << *score_ptr << std::endl; // 100
    // Deferenziare vuol dire accedere al valore
    // puntato dal puntatore 

    *score_ptr = 200;

    std::cout << *score_ptr << std::endl;
    std::cout << score << std::endl;

    ///
    std::cout << std::endl << std::endl;

    std::string name {"Frank"};

    std::string *string_ptr{&name};

    std::cout << *string_ptr << std::endl;

    name = "James";

    std::cout << *string_ptr << std::endl;

    // Puntatori
    std::cout << std::endl << std::endl;
    std::cout << std::endl << std::endl;
    std::cout << "Esempio Vector<string>" << std::endl;

    std::vector<std::string> stooges{"Larry", "Moe", "Curly"};
    std::vector<std::string> *vector_ptr{nullptr};
    
    vector_ptr = &stooges;

    std::cout << "First stooge:" << (*vector_ptr).at(0) << std::endl;

    std::cout << "Stooges:";
    for (auto st : *vector_ptr)
        std::cout << st << " ";
    std::cout << std::endl;

}