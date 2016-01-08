p (1..gets.to_i).inject {|s,i|
  (s*i).to_s.reverse.to_i.to_s[0,11].reverse.to_i
}.to_s.reverse.to_i.to_s[0,9].reverse.to_i
