n = gets.to_i
m = gets.to_i
while m > 0
  n.times {
    print "R"
    m -= 1
    break if m == 0
  }
  break if m == 0
  n.times {
    print "W"
    m -= 1
    break if m == 0
  }
end
puts
