hash = Hash.new
s = gets.chomp.split(" ")
s.each { |n|
    if hash.include?(n) then
        hash[n] += 1
    else
        hash[n] = 1
    end
}
hash.each { |key,value|
    puts "#{key} #{value}"
}
