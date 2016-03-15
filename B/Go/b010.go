package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
  "sort"
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

  XA := []int{0,0,0,0,0,0,0,0,0,0,0}
  XB := []int{0,0,0,0,0,0,0,0,0,0,0}
  T := nextLine()
  U, _ := strconv.Atoi(nextLine())

  for i := 0; i < 11; i++ {
    XA[i] = nextInt()
  }
  for i := 0; i < 11; i++ {
    XB[i] = nextInt()
  }

  if T == "A" {
    passer := XA[U-1]
    sort.Sort(sort.IntSlice(XB))
    b := XB[9]
    flg := false
    num := 1
    for i := 0; i<11; i++ {
      a := XA[i]
      if a>=55 && a>b && a>passer {
        fmt.Println(num)
        flg = true
      }
      num += 1
    }
    if flg == false {
     fmt.Println("None")
    }
  } else {
    passer := XB[U-1]
    sort.Sort(sort.IntSlice(XA))
    a := XA[1]
    flg := false
    num := 1
    for i := 0; i<11; i++ {
      b := XB[i]
      if b<=55 && b<a && b<passer {
        fmt.Println(num)
        flg = true
      }
      num += 1
    }
    if flg == false {
      fmt.Println("None")
    }
  }
}
