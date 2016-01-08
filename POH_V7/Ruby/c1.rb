n = gets.to_i
m1 = gets.to_i
x = gets.chomp.split(" ")
x.map!(&:to_i)
m2 = gets.to_i
y = gets.chomp.split(" ")
y.map!(&:to_i)
buy = Array.new()
for i in y
  buy.push(i) if x.index(i) == nil
end
buy.sort!
if buy.size == 0 then
  puts "None"
else
  f = false
  for n in buy
    print " " if f == true
    print n
    f = true
  end
  puts ""
end
