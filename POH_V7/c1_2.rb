n = gets.to_i
book = Array.new(n+1)
m1 = gets.to_i
x = gets.chomp.split(" ")
x.map!(&:to_i)
for i in x
  book[i] = true
end
m2 = gets.to_i
y = gets.chomp.split(" ")
y.map!(&:to_i)
buy = Array.new()
for i in y
  buy.push(i) if book[i] == nil
end
buy.sort!
if buy.length == 0 then
  puts "None"
else
  f = false
  for n in buy
    print " " if f == true
    print n
    f = true
  end
  puts
end
