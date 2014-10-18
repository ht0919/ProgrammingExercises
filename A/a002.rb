# -*- coding: cp932 -*-
def search_x(n1,x)
    # puts "search_x n1=#{n1},x=#{x}"
    $line[n1].each { |nn|
        if nn == x then
            # puts "true"
            return true
        else
            return search_x(nn,x)
        end
    }
    # puts "false"
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
# p $line
cnt = 0
$line[1].each { |e|
    if e == x || search_x(e,x) == true then
        cnt += 1
    end
}
puts cnt
