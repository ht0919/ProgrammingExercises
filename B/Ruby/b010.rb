XA = []
XB = []

tmp = gets.chomp.split(" ")
T = tmp[0]
U = tmp[1].to_i
tmp = gets.chomp.split(" ")
tmp.each {|x| XA << x.to_i }
tmp = gets.chomp.split(" ")
tmp.each {|x| XB << x.to_i }

if T == "A" then
    pass = XA[U-1]
    XB.sort!
    b = XB[9]
    flg = false
    num = 1
    XA.each {|a|
        if a>=55 && a>b && a>pass then
            puts num
            flg = true
        end
        num += 1
    }
    if flg == false then puts "None" end
else
    pass = XB[U-1]
    XA.sort!
    a = XA[1]
    flg = false
    num = 1
    XB.each {|b|
        if b<=55 && b<a && b<pass then
            puts num
            flg = true
        end
        num += 1
    }
    if flg == false then puts "None" end
end
