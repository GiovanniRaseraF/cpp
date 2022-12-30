/*
Ci sono delle funzioni che sono parallele di natura
ma gli algirimi non le supportano


Ad esempio la std::accumulate non è parallela ma 
sequenziale siccome la specifica dice che deve eseguire 
la funzione di somma in questo modo

(((1 + 2) + 3) + 4)
l'operazione implementata in questo modo non può essere 
parallelizzata, 

ma si può implementare questa funzione in un modo diverso 
che permetta di essere parallelizzata

std::reduce fa in questo modo

(1 + 2) + (3 + 4) + (5 + 6)
*/


#include <vector>
#include <numeric>
#include <algorithm>
#include <execution>
#include <functional>

int main(){
    std::vector<int> v(1000, 1);

    std::reduce(v.begin(), v.end(), 0);

    std::vector<int> v2(v.size());
    std::partial_sum(v.begin(), v.end(), v2.begin());


    
}


