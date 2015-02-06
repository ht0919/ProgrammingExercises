def puta(a)
  if a.empty? then
    puts "-"
  else
    a.each do |s|
      print s
      if s == a.last then
        puts
      else
        print " "
      end
    end
  end
end

def hanoi(n, a, b, c)
  if n>0 then
    hanoi(n-1, a, c, b)
    # puts "move #{n} #{a} => #{b}"
    tmp = a.pop
    b.push tmp
    $t -= 1
    # p n,$t,$A,$B,$C
    if $t == 0 then
      puta($A)
      puta($C)
      puta($B)
      exit(0)
    end
    hanoi(n-1, c, b, a)
   end
end

$A = []
$B = []
$C = []
s = gets.chomp.split(" ")
n  = s[0].to_i
$t = s[1].to_i
n.times do |i|
  $A.push n-i
end
hanoi(n,$A,$B,$C)
