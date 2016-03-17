extension String: CollectionType {}

var tmp = readLine()!.split(" ")
let T = tmp[0]
let U = Int(tmp[1])!
var XA: [Int] = readLine()!.split(" ").map { Int($0)! }
var XB: [Int] = readLine()!.split(" ").map { Int($0)! }

if T == "A" {
  let passer = XA[U-1]
  XB.sortInPlace({$0<$1})
  var b = XB[9]
  var flg = false
  var num = 1

  for var i=0; i<11; i++ {
    var a = XA[i]
    if a>=55 && a>b && a>passer {
      print(num)
      flg = true
    }
    num += 1
  }
  if flg == false {
    print("None")
  }
} else {
  let passer = XB[U-1]
  XA.sortInPlace({$0<$1})
  var a = XA[1]
  var flg = false
  var num = 1

  for var i=0; i<11; i++ {
    var b = XB[i]
    if b<=55 && b<a && b<passer {
      print(num)
      flg = true
    }
    num += 1
  }
  if flg == false {
    print("None")
  }
}
