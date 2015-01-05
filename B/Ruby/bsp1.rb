s = gets.chomp.split(" ")
n = s[0].to_i
m = s[1].to_i
str = []
n.times {
  str << gets.chomp
}
kami = ""
m -= 1
s1 = str[m]
n.times { |i|
    if m == i then next end
    s2 = str[i]
    tmp = ""
    (s1.length).times { |j|
      if s1[j] == s2[j] then
        tmp << s1[j]
      else
        break
      end
    }
    if kami.length < tmp.length then kami = tmp end
}
kami << s1[kami.length]
puts kami
