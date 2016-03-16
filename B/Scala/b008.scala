//object Main extends App {
  var tmp = scala.io.StdIn.readLine().split(" ")
  val N = tmp(0).toInt
  val M = tmp(1).toInt
  var max = 0
  var incom = new Array[Int](M)

  if (M>0 && N>0) {
    for (i<-0 to M-1) {
      var sum = 0
      var tmp = scala.io.StdIn.readLine().split(" ")
      for (j<-0 to N-1) {
        sum += tmp(j).toInt
      }
      incom(i) = sum
    }
    for (i<-0 to M-1) {
      var n = incom(i)
      if (n>0) {
        max += n
      }
    }
  }
  println(max)
//}
