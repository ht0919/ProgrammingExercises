s = gets.chomp.split(" ")
x = s[0].to_i
y = s[1].to_i
z = s[2].to_i

xxx = []
z.times {
  xx = []
  y.times { |i| xx[i]="." }
  x.times {
    tmp = gets.chomp.split("")
    y.times { |i|
      if tmp[i] == "#" then
        xx[i] = "#"
      end
    }
  }
  xxx << xx
  ss = gets.chomp # "--" skip
}

xxx.reverse!
xxx.each { |xx|
  puts xx.join
}
