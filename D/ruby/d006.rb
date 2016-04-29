line = gets.chomp.split(/ /)
n = line[0].to_i
s = line[1]
if    s == "cm" then n *= 10
elsif s == "m"  then n *= 1000
elsif s == "km" then n *= 1000000
end
puts n
