puts "      *"
sp1 = 5
sp2 = 1
1.step(6) {
    print " " * sp1 + "*"
    print " " * sp2 + "*" + "\n"
    sp1 -= 1
    sp2 += 2
}
sp1 = 1
sp2 = 9
5.step(1,-1) {
    print " " * sp1 + "*"
    print " " * sp2 + "*" + "\n"
    sp1 += 1
    sp2 -= 2
}
puts "      *"
