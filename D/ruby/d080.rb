a = gets.chomp.split(" ")
b = a.map(&:to_i)
puts b[0] * 6000 + b[1] * 4000
