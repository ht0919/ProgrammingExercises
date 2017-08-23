a = gets.chomp.split(" ")
b = a.map(&:to_i)
c = b.inject(0.0){|r,i| r+=i }/b.size
puts sprintf("%.1f", c)
