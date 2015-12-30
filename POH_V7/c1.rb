n = gets.to_i
m1 = gets.to_i
x = gets.chomp.split(" ")
x.map!(&:to_i)
m2 = gets.to_i
y = gets.chomp.split(" ")
y.map!(&:to_i)
buy = Array.new()
for book in y
  buy.push(book) if x.index(book) == nil
end
buy.sort!
if buy.length > 0 then
  flg = false
  buy.each {|s|
    print " " if flg == true
    print s
    flg = true
  }
  puts ""
else
  puts "None"
end
