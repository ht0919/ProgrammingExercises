a = gets.chomp.split(" ")
b = a.map(&:to_i)
c = b[0] * b[1]
if c < 10000
  puts c
else
  puts "NG"
end
