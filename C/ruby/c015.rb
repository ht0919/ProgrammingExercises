point = 0
input_lines = gets.to_i
input_lines.times {
  s = gets.chomp.split(" ")
  date  = s[0]
  price = s[1].to_i

  if date.index("3") != nil then
    point += (price * 0.03).to_i
  elsif date.index("5") != nil then
    point += (price * 0.05).to_i
  else
    point += (price * 0.01).to_i
  end
}
puts point
