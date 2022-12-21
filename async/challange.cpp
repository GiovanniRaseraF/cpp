#include <future>
#include <iostream>
#include <thread>
#include <vector>
#include <algorithm>
#include <functional>
#include <numeric>

int accum(std::vector<int>::iterator beg, std::vector<int>::iterator end, int init) {
    return std::accumulate(beg, end, init);
}

int main(){
    std::vector<int> vet(12, 12);

    std::packaged_task<int(std::vector<int>::iterator beg, std::vector<int>::iterator end, int init)>
    task1{accum},
    task2{accum},
    task3{accum},
    task4{accum};

    std::future<int> f1{task1.get_future()}, f2{task2.get_future()}, f3{task3.get_future()}, f4{task4.get_future()};

    std::thread 
    t1{std::move(task1), vet.begin(), vet.begin()+3, 0},
    t2{std::move(task2), vet.begin()+3, vet.begin()+6, 0},
    t3{std::move(task3), vet.begin()+6, vet.begin()+9, 0},
    t4{std::move(task4), vet.begin()+9, vet.begin()+12, 0};
    
    t1.join();
    t2.join();
    t3.join();
    t4.join();

    f1.wait();
    f2.wait();
    f3.wait();
    f4.wait();
    std::cout << f1.get() + f2.get() + f3.get() + f4.get()<< std::endl;
}