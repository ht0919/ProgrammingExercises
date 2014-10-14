s = gets.chomp.split(/ /)
L = s[0].to_i
n = s[1].to_i
m = s[2].to_i
# puts "L=#{L} n=#{n} m=#{m}" # debug
amida = Array.new(L) {Array.new(n){0}}
m.times { |i|
    s = gets.chomp.split(/ /)

    c1 = s[0].to_i - 1
    c2 = c1 + 1
    l1 = s[1].to_i - 1
    l2 = s[2].to_i - 1

    amida[l1][c1] = i+1
    amida[l2][c2] = i+1
}
# amida.length.times {|i| p amida[i] } # debug
line = L-1
colm = 0
begin
    b = amida[line][colm]
    # puts "b=#{b} line=#{line} colm=#{colm}" # debug
    if b == 0 then
        line -= 1
    else
        amida.length.times { |i|
            if colm < n-1 && amida[i][colm+1] == b then
                colm = colm + 1
                line = i - 1
                break
            end
            if colm > 0 && amida[i][colm-1] == b then
                colm = colm - 1
                line = i - 1
                break
            end
        }
    end
end while line >= 0
puts colm+1
