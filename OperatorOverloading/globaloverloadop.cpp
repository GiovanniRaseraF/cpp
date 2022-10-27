#include <iostream>
#include <string>

class number{
    private:
    int value;

    public:
    number(int v) : value{v}{}
    number() : value{0}{}
    number(const number &to_copy) : value{to_copy.value}{}
    number(number &&to_move) : value{to_move.value}{}

    int getInt() const {
        return value;
    }

    void setInt(int newvalue){
        value = newvalue;
    }

};

// Sarebbe giusto metterle friend oppure posso anche utilizzare getter e setter
number operator-(const number &to_min){
    return number(-to_min.getInt());
}

number operator++(number &to_incremet){
    to_incremet.setInt(to_incremet.getInt() + 1);

    return to_incremet;
}

number operator++(number &to_increment, int){
    return ++to_increment;
}

#ifdef NUMBERUNITTEST
int main(){
    number n1{10};
    number n2 = -n1;
    number n3{0};
    ++n3;
    n3++;

    std::cout << n2.getInt() << std::endl; 
    std::cout << n3.getInt() << std::endl;
    return 0;
}
#endif