//object Main extends App {

  // 分が60以上の場合に時間を繰り上げるメソッド
  def timeAdj(hm: Array[Int]): Array[Int] = {
    if (hm(1) > 59) {
      hm(0) += hm(1) / 60
      hm(1)  = hm(1) % 60
    }
    return hm
  }

  var st = Array(10,0)  // 開始時刻(時,分)
  var et = Array(10,0)  // 終了時刻(時,分)
  var lunch = false

  val n = scala.io.StdIn.readLine().toInt

  for (i<-0 to n-1) {

    var tmp = scala.io.StdIn.readLine().split(" ")

    // データ入力(名前 時間[分])
    val name = tmp(0)
    val minutes = tmp(1).toInt
    // 終了時刻の設定
    et(0) = st(0)
    et(1) = st(1) + minutes
    et = timeAdj(et)

    // 終了時刻が12:01以降なら昼休みを取る
    if (lunch == false && et(0) >= 12 && et(1) >= 1) {
      // 開始時刻の更新
      st(1) += 50 // すでに10分休憩しているので50分を足す
      st = timeAdj(st)
      // 終了時刻の更新
      et(0) = st(0)
      et(1) = st(1) + minutes
      et = timeAdj(et)
      lunch = true // 昼休みは1回だけなのでフラグをONにする
    }

    printf("%02d:%02d - %02d:%02d %s\n",st(0),st(1),et(0),et(1),name)

    // 休憩を10分取って次の開始時刻を更新
    et(1) += 10
    et = timeAdj(et)
    st(0) = et(0)
    st(1) = et(1)
  }
//}
