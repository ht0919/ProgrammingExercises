s = gets.chomp
a = [s.count("c"),s.count("a"),s.count("t")]
puts a.min
puts a.max - a[0]
puts a.max - a[1]
puts a.max - a[2]
