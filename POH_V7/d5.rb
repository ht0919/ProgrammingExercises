s1 = gets.chomp.split(" ")
s2 = gets.chomp.split(" ")
if (s1[0].to_i/s1[1].to_i)>(s2[0].to_i/s2[1].to_i)
  print "1\n"
else
  print "2\n"
end
