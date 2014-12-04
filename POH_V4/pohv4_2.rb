sum = 0
n = gets.to_i
n.times {
    s = gets.chomp.split(" ")
    a = (s[0].to_i - s[1].to_i)
    if (a>0) then sum += a * s[2].to_i end
}
puts sum
