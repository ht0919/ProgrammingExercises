s = gets.chomp.split(" ")
w = s[0].to_i
h = s[1].to_i
n = s[2].to_i
s = gets.chomp.split(" ")
x = s[0].to_i
y = s[1].to_i
n.times{
  s = gets.chomp.split(" ")
  case s[0]
  when "U"
    y += s[1].to_i
  when "D"
    y -= s[1].to_i
  when "R"
    x += s[1].to_i
  when "L"
    x -= s[1].to_i
  end
  x %= w
  y %= h
}
print x," ",y,"\n"
