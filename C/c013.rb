n = gets.chomp
flag = false
m = gets.chomp.to_i
m.times {
    r = gets.chomp
    if r.include?(n) == false then
        puts r
        flag = true
    end
}
if  flag == false then
    puts "none"
end