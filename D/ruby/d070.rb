a = gets.chomp.split(" ")
b = a.map(&:to_i)
puts b[0] - b[1]
