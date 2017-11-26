a = gets.chomp.split(" ")
b = a.map(&:to_i)
x = gets.to_i
y = b.inject(0.0){|r,i| r+=i } / b.size
if y >= x
  puts "pass"
else
  puts "failure"
end
