q = Array.new
n = gets.to_i
n.times{
  q << gets.chomp.split(" ")
}

p = Array.new
m = gets.to_i
m.times{
  p << gets.chomp.split(" ")
}

s = q.size - p.size + 1
t = false
s.times {|i|
  s.times {|j|
    r = Array.new
    (p.size).times {|k|
      r << q[i+k].slice(j,p.size)
    }
    if r == p
      puts "#{i} #{j}"
      t = true
      break
    end
  }
  break if t == true
}
