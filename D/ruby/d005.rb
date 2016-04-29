s = gets.chomp.split(/ /)
m = s[0].to_i
n = s[1].to_i
sum = m
10.times { |i|
    print sum
    sum += n
    if i < 9 then print " "
    else puts end
}
