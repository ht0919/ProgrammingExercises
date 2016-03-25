extension String: CollectionType {}
// 分が60以上の場合に時間を繰り上げるメソッド
func timeAdj(inout hm: [Int]) {
  if hm[1] > 59 {
    hm[0] += hm[1] / 60
    hm[1]  = hm[1] % 60
  }
}

let n: Int = Int(readLine()!)!

var st: [Int] = [10,0] // 開始時刻(時,分)
var et: [Int] = [10,0] // 終了時刻(時,分)
var lunch = false

for i in 0 ..< n {
  // データ入力(名前 時間[分])
  var tmp = readLine()!.split(" ")
  let name = tmp[0]
  let minutes = Int(tmp[1])!
  // 終了時刻の設定
  et[0] = st[0]
  et[1] = st[1] + minutes
  timeAdj(&et)

  // 終了時刻が12:01以降なら昼休みを取る
  if lunch == false && et[0] >= 12 && et[1] >= 1 {
    // 開始時刻の更新
    st[1] += 50 // すでに10分休憩しているので50分を足す
    timeAdj(&st)
    // 終了時刻の更新
    et[0] = st[0]
    et[1] = st[1] + minutes
    timeAdj(&et)
    lunch = true // 昼休みは1回だけなのでフラグをONにする
  }

  var st0 = String(st[0])
  if st[0]<10 { st0 = "0"+st0 }
  var st1 = String(st[1])
  if st[1]<10 { st1 = "0"+st1 }
  var et0 = String(et[0])
  if et[0]<10 { et0 = "0"+et0 }
  var et1 = String(et[1])
  if et[1]<10 { et1 = "0"+et1 }
  print("\(st0):\(st1) - \(et0):\(et1) \(name)")

  // 休憩を10分取って次の開始時刻を更新
  et[1] += 10
  timeAdj(&et)
  st[0] = et[0]
  st[1] = et[1]
}
