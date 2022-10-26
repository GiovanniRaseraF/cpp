#include "movie.hpp"
#include "utils.hpp"

movie::movie(std::string n, ratings r) 
: name{n}, rating{r}, watched{0}
{
    PRINTLN("Constract");
}

movie::movie(movie &&to_move) 
    : name{std::move(to_move.name)}, rating{to_move.rating}, watched{to_move.watched}
    {
    PRINTLN("Move");
}

movie::movie(const movie &to_copy) 
: name{to_copy.name}, rating{to_copy.rating}, watched{to_copy.watched}{
    PRINTLN("Copy");
}

#ifdef MOVIEUNITTEST
int main(){
    // Creazione
    movie m1("Ciao", G);
    
    m1
    .set_name("Brutto")
    .set_rating(R);

    std::cout << m1 << std::endl;

    // Copia    
    movie m3 = m1;
    std::cout << m3 << std::endl;

    // Move
    movie m4{std::move(movie{"a", R})};
    std::cout << m4 << std::endl;
    return 0;
}
#endif