//object Main extends App {

  var XA = new Array[Int](11)
  var XB = new Array[Int](11)

  var tmp = scala.io.StdIn.readLine().split(" ")
  val T = tmp(0)
  val U = tmp(1).toInt

  tmp = scala.io.StdIn.readLine().split(" ")
  for (i<-0 to 10) { XA(i)=tmp(i).toInt }
  tmp = scala.io.StdIn.readLine().split(" ")
  for (i<-0 to 10) { XB(i)=tmp(i).toInt }

  if (T == "A") {
    val passer = XA(U-1)
    XB = XB.sorted
    var b = XB(9)
    var flg = false
    var num = 1
    for (i<-0 to 10) {
      var a = XA(i)
      if (a>=55 && a>b && a>passer) {
        println(num)
        flg = true
      }
      num += 1
    }
    if (flg == false) {
      println("None")
    }
  } else {
    val passer = XB(U-1)
    XA = XA.sorted
    var a = XA(1)
    var flg = false
    var num = 1
    for (i<-0 to 10) {
      var b = XB(i)
      if (b<=55 && b<a && b<passer) {
        println(num)
        flg = true
      }
      num += 1
    }
    if (flg == false) {
      println("None")
    }
  }
//}
