h = %w(A B C D E F G H I J)
s = gets.chomp.split(" ")
3.times{ |i|
  puts h.slice!(0,s[i].to_i).join()
}
