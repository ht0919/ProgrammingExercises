s = gets.chomp.split(" ")
n = s[0].to_i
m = s[1].to_i
page = m / n
if m%n > 0 then page += 1 end
if page % 2 == 0 then
    pos = m - ( page - 1 ) * n
    ed = ( page - 1) * n
    ans = ed - ( pos - 1 )
else
    pos = m - ( page - 1 ) * n
    st = page * n + 1
    ans = st + ( n - pos )
end
puts ans
