#include <iostream>

#include <memory>
#include <string>
#include <vector>

class datapoint{
    public:
    double num;
    datapoint(double n) : num{n}{
        std::cout << "Create datapoint(" << num << ")" << std::endl;
    }

    ~datapoint(){
        std::cout << "Delete datapoint(" << num << ")" << std::endl;
    }
};

// Fa schifo da vedere ma questo crea e muove il vector
std::unique_ptr<std::vector<std::shared_ptr<datapoint>>> make(){
    std::unique_ptr<std::vector<std::shared_ptr<datapoint>>> ret
    = std::make_unique<std::vector<std::shared_ptr<datapoint>>>();

    return ret;
}

void fill(std::vector<std::shared_ptr<datapoint>> &vet, int num){
    for(int i = 0; i < num; i++){
        double value{0};
        std::cout << "Enter data point: "; std::cin >> value;
        vet.push_back(std::make_shared<datapoint>(value));
    }
}

void display(std::vector<std::shared_ptr<datapoint>> &vet){
    std::cout << std::endl << "-------Display------------" << std::endl;
    for (const auto &v : vet){
        std::cout << v->num << std::endl;
    }
    std::cout << "--------------------------" << std::endl;
}

int main(){
    // Unique pointer to vector of shared datapoints pointers
    std::unique_ptr<std::vector<std::shared_ptr<datapoint>>> vec_ptr;

    vec_ptr = make();

    int num_ofvalues{0};
    std::cout << "Quanti dati vuoi? "; std::cin >> num_ofvalues;
    fill(*vec_ptr, num_ofvalues);
    display(*vec_ptr);

}