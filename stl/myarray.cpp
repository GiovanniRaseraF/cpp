#include <iostream>
#include <string>
#include <iomanip>
#include <cassert>

template <typename T>
class myarray{
    const int size;
    T *values;
public:
    myarray(int s) : size{s}{
        assert(s >= 0);
        values = new T[s];
    }

    myarray(int s, const T &init) : myarray{s}{
        for(int i = 0; i < s; i++){
            values[i] = init;
        }
    }

    ~myarray(){
        delete [] values;
    }


    int length() const {
        return size;
    }

    T &operator[](int at){
        assert(at >= 0 && at < size);

        return values[at];
    }

    friend std::ostream &operator<<(std::ostream &os, const myarray &ma){
        for (int i = 0; i < ma.size; i++){
            os << ma.values[i] << " ";
        }

        return os;
    }
};

template <int N>
class myheaparray{
    const int size{N};
    int values[N];
    public:
    myheaparray() = default;
    
    myheaparray(int init){
        for(int i = 0; i < N; i++){
            values[i] = init;
        }
    }

    ~myheaparray() = default;

    int &operator[](int at){
        assert(at >= 0 && at < size); 
        // assert non va bene per questo in realtà 
        // perché se un utilizzatore mette un valore che non va bene nella fase 
        // di release non viene rilevato siccome per usarlo va usato #define NDEBUG

        return values[at];
    }

    friend std::ostream &operator<<(std::ostream &os, const myheaparray<N> &ma){
        for (int i = 0; i < ma.size; i++){
            os << ma.values[i] << " ";
        }

        return os;
    }
};


int main(){
    myarray<int> a{10, 300};
    a[2] = 200;
    std::cout << a << std::endl;

    myheaparray<7> mha{1};
    mha[3] = 500;
    std::cout << mha;
}