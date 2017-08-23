t = gets.chomp.split(" ")
a = gets.to_i
i = 1
t.each { |n|
  break if n.to_i > a
  i += 1
}
puts i
