str = ""
n = gets.to_i
n.times {|i|
  str = str + gets.chomp
  if i < (n-1)
    str = str + "_"
  end
}
puts str
