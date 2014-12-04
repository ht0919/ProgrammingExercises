s = gets.chomp.split(" ")
t = s[0].to_i
n = s[1].to_i
m = Array.new(n)
sum = 0
i = 0
t.times {
    m[i] = gets.to_i
    sum += m[i]
    i += 1
}
max = sum
l = n - i
l.times {
    m[i] = gets.to_i
    sum += m[i]
    sum -= m[i-t]
    if sum>max then max=sum end
    i += 1
}
puts max
