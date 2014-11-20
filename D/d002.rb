s = gets.chomp.split(" ")
if (s[0].to_i == s[1].to_i) then
    puts "eq"
else
    if (s[0].to_i > s[1].to_i) then
        puts s[0]
    else
        puts s[1]
    end
end
