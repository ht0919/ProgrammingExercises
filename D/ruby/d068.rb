n = gets.to_i
s = gets
ss = 0
rr = 0
n.times { |i|
  if s[i] == 'S'
    ss += 1
  else
    rr += 1
  end
}
puts "#{ss} #{rr}"
