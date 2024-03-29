package main

import "fmt"
import "os"
import "strconv"
import "math/rand"

func f(n uint) uint {
  v := make([]uint, 0)
  var c uint = 0
  for ; c < n; c++ {
    v = append(v, c) 
  }
  return v[rand.Intn(int(n))]
}

func main() {
  n, err := strconv.ParseUint(os.Args[1], 10, 64)
  if err != nil {
    return
  }

  r, err := strconv.ParseUint(os.Args[2], 10, 64)
  if err != nil {
    return
  }

  v := make([]uint, 0)
  var c uint64 = 0
  for ; c < r; c++ {
    v = append(v, f(uint(n)))
  }

  fmt.Println(v[0]) 
}
