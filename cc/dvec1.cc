#include <string>
#include <iostream>
#include <vector>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

unsigned long f(unsigned long n)
{
  vector<unsigned long> v;

  for (unsigned long c = 0; c < n; ++c) {
    v.push_back(c);
  }

  return v[(size_t)rand() % v.size()];
}

int main(int argc, char **argv) {
  long n = atol(argv[1]);
  long r = atol(argv[2]);
  vector<unsigned long> v;

  for (unsigned long c = 0; c < r; ++c) {
    v.push_back(f(n));
  }

  cout << v[0] << endl;
}
