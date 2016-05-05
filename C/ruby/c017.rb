s = gets.chomp.split(" ")
a = s[0].to_i
b = s[1].to_i
n = gets.to_i
n.times do
  s = gets.chomp.split(" ")
  an = s[0].to_i
  bn = s[1].to_i
  if (a > an || (a == an && b < bn)) then
    puts "High"
  else
    puts "Low"
  end
end
