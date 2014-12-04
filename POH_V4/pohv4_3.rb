max = 0
m = Array.new(300000)
s = gets.chomp.split(" ")
t = s[0].to_i
n = s[1].to_i
n.times { |i| m[i] = gets.to_i }
l = n - (t-1)
l.times { |i|
    sum = 0
    t.times { |j| sum += m[i+j] }
    if sum>max then max=sum end
}
puts max
