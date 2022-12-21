#include <future>
#include <iostream>
#include <thread>
#include <vector>
#include <algorithm>
#include <functional>
#include <numeric>
#include <chrono>

int accum(std::vector<int>::iterator beg, std::vector<int>::iterator end, int init) {
    return std::reduce(beg, end, init);
}

int main(){
    std::vector<int> vet(1'000'000'000, 1);

    std::packaged_task<int(const std::vector<int>::iterator &beg,const std::vector<int>::iterator &end, int init)>
    task1{accum},
    task2{accum},
    task3{accum},
    task4{accum};

    std::future<int> f1{task1.get_future()}, f2{task2.get_future()}, f3{task3.get_future()}, f4{task4.get_future()};

    std::cout << "Calcolo" << std::endl;
    const std::chrono::time_point<std::chrono::steady_clock> start =
        std::chrono::steady_clock::now();
    std::thread 
    t1{std::move(task1), vet.begin(), vet.begin()+30'000'000, 0},
    t2{std::move(task2), vet.begin()+30'000'000, vet.begin()+60'000'000, 0},
    t3{std::move(task3), vet.begin()+60'000'000, vet.begin()+90'000'000, 0},
    t4{std::move(task4), vet.begin()+90'000'000, vet.end(), 0};
    
    t1.join();
    t2.join();
    t3.join();
    t4.join();

    int res = f1.get() + f2.get() + f3.get() + f4.get();
    const auto end = std::chrono::steady_clock::now();
    std::cout << 
    std::chrono::duration_cast<std::chrono::microseconds>(end - start).count() << " us, " <<
    std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count() << " ns, " << 
    std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count() << " ms, " << 
    std::chrono::duration_cast<std::chrono::seconds>(end - start).count() << " s " << std::endl;

    std::cout << "res: " << res << std::endl;
}