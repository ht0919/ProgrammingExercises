count = Hash.new(0)
words = gets.chomp.split(" ")
words.each{|word|
    count[word] += 1
}
count.each{|key, value|
    print "#{key}: #{value}\n"
}
