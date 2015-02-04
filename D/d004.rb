n = gets.to_i
print "Hello "
n.times do |i|
    s = gets.chomp
    print s
    if (i+1) == n then
        puts "."  # 最後の単語なら"."と改行
    else
        print "," # そうでなければ","
    end
end
