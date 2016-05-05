input_lines = gets.to_i
input_lines.times{
  s = gets.chomp.split(".")
  if s.length != 4 then
    print "False", "\n"
    next
  end
  ans = "True"
  for ip in s
    if ip !~ /\d+/ or ip.to_i < 0 or ip.to_i > 255 then
      ans = "False"
      break
    end
  end
  print ans, "\n"
}
