$s = ["1111110","0110000","1101101","1111001","0110011",
      "1011011","1011111","1110010","1111111","1111011"]

def check(ap,bp)
  as = ap.join("")
  bs = bp.join("")
  if $s.include?(as) && $s.include?(bs) then
    return "Yes"
  else
    return "No"
  end
end

a = gets.chomp.split(" ")
b = gets.chomp.split(" ")
puts check(a,b)

ax = [b[0],b[5],b[4],b[3],b[2],b[1],b[6]]
bx = [a[0],a[5],a[4],a[3],a[2],a[1],a[6]]
puts check(ax,bx)

ay = [b[3],b[4],b[5],b[0],b[1],b[2],b[6]]
by = [a[3],a[4],a[5],a[0],a[1],a[2],a[6]]
puts check(ay,by)
