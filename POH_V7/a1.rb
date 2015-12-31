def fact(n)
  m = 1
  for x in 2 .. n
    m *= x
  end
  m
end
n = gets.to_i
  print "0 ",Time.now.strftime("%H:%M:%S"),"\n"
#t1 = (1..n).inject(:*).to_s
#t1 = (1..n).reduce(&:*).to_s
t1 = fact(n).to_s
  print "1 ",Time.now.strftime("%H:%M:%S"),"\n"
p2 = t1.rindex(/[^0]/)
p1 = p2 - 8
p1 = 0 if p1<0
t2 = t1.slice(p1..p2)
p1 = t2.index(/[^0]/)
ans = t2.slice(p1,t2.length-p1)
puts ans
