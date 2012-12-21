#include <string>
#include <iostream>
#include <vector>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

string f(unsigned long n)
{
  vector<string> v;

  char buffer[32];

  for (unsigned long c = 0; c < n; ++c) {
    snprintf(buffer, 32, "%lu", c); // convert integer to string
    v.push_back(string(buffer) + "x");
  }

  return v[(size_t)rand() % v.size()];
}

int main(int argc, char **argv) {
  long n = atol(argv[1]);
  long r = atol(argv[2]);
  vector<string> v;

  for (unsigned long c = 0; c < r; ++c) {
    v.push_back(f(n));
  }

  cout << v[0] << endl;
}
