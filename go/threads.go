package main

import "os"
import "strconv"

func start_thread(id int, ch chan int) {
  for {
    cmd := <- ch
    if cmd == -1 {
      return
    }
  }
}

func f(n int) {
  var ch chan int
  ch = make(chan int)
  for i := 0; i < n; i++ {
    go start_thread(i, ch)
  }
  for i := 0; i < n; i++ {
    ch <- -1
  }
}

func main() {
  n, _ := strconv.ParseInt(os.Args[1], 10, 64)
  r, _ := strconv.ParseInt(os.Args[2], 10, 64)

  for i := 0; i < int(r); i++ {
    f(int(n))
  }
}
