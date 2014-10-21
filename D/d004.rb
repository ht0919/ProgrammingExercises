word = []
num = gets.to_i
num.times {
  word << gets.chomp
}
first = true
word.each { |s|
    if first then
        print "Hello "
        first = false
    else 
        print ","
    end
    print s
}
puts "."
