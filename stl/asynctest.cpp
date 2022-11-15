// future example
#include <iostream>       // std::cout
#include <future>         // std::async, std::future
#include <chrono>         // std::chrono::milliseconds

// a non-optimized way of checking for prime numbers:
bool is_prime (uint64_t x) {
  for (uint64_t i=2; i<x; ++i) if (x%i==0) return false;
  return true;
}

int main ()
{
  // call function asynchronously:
  uint64_t p = 1844674407ULL;
  std::future<bool> fut = std::async (is_prime, p); 

  // do something while waiting for function to set future:
  std::cout << "checking, please wait";
  std::chrono::milliseconds span (2000);
  while (fut.wait_for(span)==std::future_status::timeout)
    std::cout << '.' << std::flush;

  bool x = fut.get();     // retrieve return value

  std::cout << "\n444444443 " << (x?"is":"is not") << " prime.\n";

  return 0;
}