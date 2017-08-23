a = gets.chomp.split(" ")
b = a.map(&:to_i)
c = (b[0] / b[1].to_f).ceil
puts c * b[2]
