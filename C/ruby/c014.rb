s = gets.chomp.split(" ")
n = s[0].to_i
r = s[1].to_i * 2
n.times { |i|
    s = gets.chomp.split(" ")
    h = s[0].to_i
    w = s[1].to_i
    d = s[2].to_i
    if h>=r && w>=r && d>=r then
        puts i+1
    end
}
