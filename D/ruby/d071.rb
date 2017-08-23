a = gets.chomp.split(" ")
b = a.map(&:to_i)
if b[0]>=25 || b[1]<=40
  if b[0]>=25 && b[1]<=40
    puts "No"
  else
    puts "Yes"
  end
else
  puts "No"
end
