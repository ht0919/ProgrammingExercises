leet = {"A"=>"4","E"=>"3","G"=>"6","I"=>"1","O"=>"0","S"=>"5","Z"=>"2"}
s = gets.chomp
s.chars {|ch|
  c = leet[ch]
  if c != nil
    print c
  else
    print ch
  end
}
puts
