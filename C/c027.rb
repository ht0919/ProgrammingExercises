b = gets.to_i
b2 = b % 10000
b3 = b % 1000
n = gets.to_i
n.times {
  a = gets.to_i
  a2 = a % 10000
  a3 = a % 1000
  if a == b
    puts "first"
  elsif a == (b-1) || a == (b+1)
    puts "adjacent"
  elsif a2 == b2
    puts "second"
  elsif a3 == b3
    puts "third"
  else
    puts "blank"
  end
}
