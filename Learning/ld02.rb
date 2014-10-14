s = []
input_lines = gets.to_i
input_lines.times{ |i|
    s[i] = gets.chomp.to_i
}
s.sort!
s.each { |n|
    puts n
}
