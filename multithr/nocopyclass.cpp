#include <iostream>
#include <string>
#include <utility>

class nocopy{
    public:
    nocopy(const nocopy& other) = delete;
    nocopy &operator=(const nocopy &) = delete;

    nocopy(nocopy &&) noexcept = default;
    nocopy &operator=(nocopy &&) noexcept = default;

    nocopy() = default;
};

int main(){
    nocopy t1, t2, t3;
    nocopy t4 (std::move(t1));
    t2 = std::move(t1); 

    
}