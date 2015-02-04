word = []
num = gets.to_i
num.times do
  word << gets.chomp
end
print "Hello "
word.each do |s|
  print s
  if s != word.last then
    print ","
  else
    puts "."
  end
end
