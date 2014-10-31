s = gets.chomp.split(" ")
a = s[0].to_i
b = s[1].to_i
c = s[2].to_i
total = a+b+c
limit = 8*60+59
start = limit - total
start_a = start + a
N = gets.chomp.to_i
N.times {
    s = gets.chomp.split(" ")
    h = s[0].to_i
    m = s[1].to_i
    train = h*60+m
    if train > start_a then break end
    start = train - a
}
hh = start / 60
mm = start % 60
printf("%02d:%02d\n",hh,mm)
