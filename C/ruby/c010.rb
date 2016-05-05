s = gets.chomp.split(" ")
a = s[0].to_i
b = s[1].to_i
r = s[2].to_i
n = gets.chomp.to_i
n.times {
    s = gets.chomp.split(" ")
    x = s[0].to_i
    y = s[1].to_i
    if ((x-a)**2) + ((y-b)**2) >= r**2 then
        puts "silent"
    else
        puts "noisy"
    end
}
