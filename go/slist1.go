package main

import "fmt"
import "os"
import "strconv"
import "math/rand"
import "container/list"

func f(n uint) uint {
  l := list.New();

  var c uint = 0
  for ; c < n; c++ {
    l.PushFront(c)
  }
  return uint(rand.Intn(int(n)))
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

  l := list.New();
  var c uint64 = 0
  for ; c < r; c++ {
    l.PushFront(f(uint(n)))
  }

  fmt.Println(l.Front().Value) 
}
