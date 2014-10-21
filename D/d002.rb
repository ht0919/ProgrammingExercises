s = gets.chomp.split(/ /)
if s[0].to_i > s[1].to_i then
    puts s[0]
elsif s[0].to_i < s[1].to_i then
    puts s[1]
else
    puts "eq"
end
