n = gets.to_i
print "0 ",Time.now.strftime("%H:%M:%S"),"\n"
m = (1..n).inject(:*)
print "1 ",Time.now.strftime("%H:%M:%S"),"\n"
t1 = m.to_s
print "2 ",Time.now.strftime("%H:%M:%S"),"\n"
p2 = t1.rindex(/[^0]/)
print "3 ",Time.now.strftime("%H:%M:%S"),"\n"
p1 = p2 - 8
p1 = 0 if p1<0
t2 = t1.slice(p1..p2)
print "4 ",Time.now.strftime("%H:%M:%S"),"\n"
p1 = t2.index(/[^0]/)
print "5 ",Time.now.strftime("%H:%M:%S"),"\n"
ans = t2.slice(p1,t2.length-p1)
print "6 ",Time.now.strftime("%H:%M:%S"),"\n"
puts ans
