max = 0
incom = []
s = gets.chomp.split(" ")
N = s[0].to_i
M = s[1].to_i
if M>0 && N>0 then
    M.times {
        e = gets.chomp.split(" ")
        sum = 0
        e.each { |n|
            sum += n.to_i
        }
        incom << sum
    }
    incom.each { |n|
        if n > 0 then max += n end
    }
end
puts max
