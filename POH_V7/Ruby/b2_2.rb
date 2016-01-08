s = gets.chomp.split(" ")
x = s[0].to_i
y = s[1].to_i
z = s[2].to_i
n = s[3].to_i
t = [[0,x],[0,y]]
n.times {
  s = gets.chomp.split(" ")
  a = s[0].to_i
  b = s[1].to_i
  t[a] << b
}
ans = z * t.map { |e|
  e.sort.each_cons(2).map { |x,y|
    y-x
  }.min
}.reduce(:*)
p ans
