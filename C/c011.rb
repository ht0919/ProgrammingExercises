o = gets.chomp
len = 0
word = []
n = gets.chomp.to_i
n.times {
    l = gets
    len += l.length
    s = l.chomp.split(" ")
    s.each { |str|
        word << str
    }
}
if o.include?("w") then puts word.length end
if o.include?("c") then puts len end
