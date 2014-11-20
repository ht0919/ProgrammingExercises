input_lines = gets.to_i
input_lines.times {
    s = gets.to_i
    print s," "

    flag = false

    if (s % 4 == 0) then
        flag = true
        if (s % 100 == 0) then
            flag = false
            if (s % 400 == 0) then
                flag = true
            end
        end
    end

    if ( flag ) then
        puts "is a leap year"
    else
        puts "is not a leap year"
    end
}
