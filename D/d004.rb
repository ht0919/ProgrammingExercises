n = gets.to_i
print "Hello "
n.times do |i|
    s = gets.chomp
    print s
    if (i+1) == n then  # 最後の単語なら "."と改行
        puts "."
    else                # そうでなければ ","
        print ","
    end
end
