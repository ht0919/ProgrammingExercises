# -*- coding: cp932 -*-
def search_x(n1,x)
    # puts "search_x n1=#{n1},x=#{x}"
    i = n1
    if $line[i].index(x) != nil then return true end
    begin
        $line[i].each { |j|
            if $line[j].index(x) != nil then return true end
            i = $line[j][0] # ここを複数個にしたい！
            if i == nil then next end
        }
    end while i != nil 
    return false
end

tmp = gets.chomp.split(/ /)
n = tmp[0].to_i
k = tmp[1].to_i
x = tmp[2].to_i

$line = Array.new(n+1) { Array.new() }
k.times {
    tmp = gets.chomp.split(/ /)
    a = tmp[0].to_i
    b = tmp[1].to_i
    $line[a] << b
}
p $line
cnt = 0
$line[1].each { |e|
    if e == x || search_x(e,x) == true then
        cnt += 1
    end
}
puts cnt
