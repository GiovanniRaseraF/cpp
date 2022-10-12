// Scrivere la funzione che dati due array di int ritorna un terzo array
// allocato dinamicamente che ha all'interno tutti i numeri del primo
// moltiplicati per tutti quelli del secondo

#include <iostream>
#include <vector>
#include <assert.h>
#include <iomanip>
#include <iostream>
#include <numeric>
#include <utility>
#include <vector>
#include <tuple>
#include <chrono>



void printarray(int *const arr, size_t arr_len, char const* head)
{
    Serial.print(head); Serial.print(":");
    for (size_t i {0}; i < arr_len; i++){
        Serial.print(" "); Serial.print(arr[i]);
    }
    Serial.println(";");
}   

int *apply_all(int *const a, size_t a_len, int *const b, size_t b_len)
{
    assert(a != nullptr && b != nullptr && a_len >= 0 && b_len >= 0);

    int *ret {nullptr};
    size_t ret_len {a_len * b_len};
    ret = new int[ret_len];

    for(size_t i {0}; i < a_len; i++){
        int a_val = a[i];

        for(size_t j {0}; j < b_len; j++){
            int b_val = b[j];
            size_t ret_ind = (b_len * i) + j;

            ret[ret_ind] = b_val * a_val;
        }
    }

    return ret;
}

// Versione con vector
void apply_all(std::vector<int> const& a, std::vector<int> const& b, std::vector<int> &acc)
{
    for(auto &a_val : a)
        for(auto &b_val : b)
            acc.push_back(a_val * b_val);
}

void display(const std::vector<int> &v, const char *const head)
{
    Serial.print(head); Serial.print(":");
    for(int i : v){
        Serial.print(" "); Serial.print(i);
    }
    Serial.println(";");
}


void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  while(!Serial){}
  Serial.println("\n\n\n\n\n\n\n");

  int array1[]{1, 2, 3, 4};
  int array2[]{20, 234, 34};

  size_t a1_len = 4, a2_len = 3;

  int *arrayret = apply_all(array1, a1_len, array2, a2_len);

  printarray(arrayret, a1_len * a2_len, "arrayret");

  delete [] arrayret;

  std::vector<int> a1_vet {1, 2, 3, 4};
  std::vector<int> a2_vet {20, 234, 34};

  std::vector<int> vectorret;
  apply_all(a1_vet, a2_vet, vectorret);

  display(vectorret, "\nvectorret");

}

void loop() {
  // put your main code here, to run repeatedly:
  // Accumulate VS Reduce

  
    {
        const std::vector<long> v(30000, 1);
 
        //eval([&v]{ return std::pair<const char*, auto>{"std::reduce (seq, long)",
        const auto t1 = std::chrono::high_resolution_clock::now();
        std::accumulate(v.cbegin(), v.cend(), 0);
        const auto t2 = std::chrono::high_resolution_clock::now();
        const std::chrono::duration<double, std::milli> ms = t2 - t1;
        Serial.print("Accumulate ");  Serial.print("sum: ");
                  Serial.print("\t time: "); Serial.print(ms.count()); Serial.print(" ms\n");
        //   }; } );
        //eval([&v]{ return std::pair<const char*, auto>{"std::reduce (par, long)",
        // std::reduce(v.cbegin(), v.cend())
        //}; } );
    }
}
