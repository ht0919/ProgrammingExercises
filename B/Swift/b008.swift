extension String: CollectionType {}

let tmp = readLine()!.split(" ")
let N = Int(tmp[0])!
let M = Int(tmp[1])!
var max = 0
var incom = Array(count: M, repeatedValue: 0)

if M>0 && N>0 {
  for i in 0 ..< M {
    var sum = 0
    var tmp: [Int] = readLine()!.split(" ").map { Int($0)! }
    for j in 0 ..< N {
      sum += tmp[j]
    }
    incom[i] = sum
  }
  for i in 0 ..< M {
    var n = incom[i]
    if n>0 {
      max += n
    }
  }
}
print(max)
