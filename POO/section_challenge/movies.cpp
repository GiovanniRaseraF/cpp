#include "movies.hpp"
#include <algorithm>
#include <functional>

movies &movies::add(std::string name, ratings r){
    if(!is_present(name))
        movie_vec.push_back(movie(name, r));

    return *this;
}

bool movies::is_present(std::string name){
    auto selected = std::find_if(begin(movie_vec), end(movie_vec),
    [name](const movie &elem){
        return elem.get_name() == name;
    });

    return selected != end(movie_vec);
}

movies &movies::watch(std::string name){
    auto selected = std::find_if(begin(movie_vec), end(movie_vec), 
        [name](const movie &elem){
            return name == elem.get_name();
            }
        );

    if (selected != end(movie_vec))
        selected->watch();
    
    return *this;
}

#ifdef MOVIESUNITTEST
int main(){
    movies m;
    m.add("Bello", R).add("Ciao", G).add("Hello", G).add("Hello", R);
    m.watch("Bello");
    m.watch("Ciao come");
    m.watch("Ciao");

    std::cout << m << std::endl;

    return 0;
}
#endif