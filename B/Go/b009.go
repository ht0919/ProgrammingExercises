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

// 分が60以上の場合に時間を繰り上げるメソッド
func timeAdj(hm [2]int) [2]int {
  if hm[1] > 59 {
    hm[0] += hm[1] / 60
    hm[1]  = hm[1] % 60
  }
  return hm
}

func main() {

  sc.Split(bufio.ScanWords)

  st := [2]int{10,0} // 開始時刻(時,分)
  et := [2]int{10,0} // 終了時刻(時,分)
  lunch := false

  n := nextInt()

  for i := 0; i < n; i++ {
    // データ入力(名前 時間[分])
    name := nextLine()
    minutes, _ := strconv.Atoi(nextLine())

    // 終了時刻の設定
    et[0] = st[0]
    et[1] = st[1] + minutes
    et = timeAdj(et)

    // 終了時刻が12:01以降なら昼休みを取る
    if lunch == false && et[0] >= 12 && et[1] >= 1 {
      // 開始時刻の更新
      st[1] += 50 // すでに10分休憩しているので50分を足す
      st = timeAdj(st)
      // 終了時刻の更新
      et[0] = st[0]
      et[1] = st[1] + minutes
      et = timeAdj(et)
      lunch = true // 昼休みは1回だけなのでフラグをONにする
    }

    fmt.Printf("%02d:%02d - %02d:%02d %s\n",st[0],st[1],et[0],et[1],name)

    // 休憩を10分取って次の開始時刻を更新
    et[1] += 10
    et = timeAdj(et)
    st[0] = et[0]
    st[1] = et[1]
  }
}
