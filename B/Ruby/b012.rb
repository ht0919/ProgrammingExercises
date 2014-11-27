lines = gets.chomp.to_i
lines.times {
    digit = gets.chomp.split(//)
    col   = 16
    even  = 0
    odd   = 0
    digit.each { |d|
        if d == "X" then break end
        if col % 2 == 0 then
            tmp = d.to_i * 2
            if tmp > 9 then tmp = (tmp/10)+(tmp%10) end
            even = even + tmp
        else
            odd  = odd + d.to_i
        end
        col -= 1
    }
    x = 10 - (( even + odd ) % 10)
    if x == 10 then x = 0 end
    puts x
}
