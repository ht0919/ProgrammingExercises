y=0
n=0
5.times{
  s=gets.chomp
  if s=="yes"
    y+=1
  else
    n+=1
  end
}
if y>n
  print "yes"
else
  print "no"
end
