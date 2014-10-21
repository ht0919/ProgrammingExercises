s = gets.chomp.to_i
1.upto(9) { |n|
    print s*n
    if n < 9 then
        print " "
    else
        puts
    end
}
