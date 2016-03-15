package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
  sc.Scan()
  return sc.Text()
}

func nextInt() int {
  sc.Scan()
  i, e := strconv.Atoi(sc.Text())
  if e != nil {
    panic(e)
  }
  return i
}

func main() {

  sc.Split(bufio.ScanWords)

  max := 0
  N := nextInt()
  M := nextInt()
  incom := make([]int, M)

  if M>0 && N>0 {
    for i := 0; i < M; i++ {
      sum := 0
      for j := 0; j < N; j++ {
        sum += nextInt()
      }
      incom[i] = sum
    }
    for i := 0; i < M; i++ {
      n := incom[i]
      if n>0 {
        max += n
      }
    }
  }
  fmt.Println(max)
}
