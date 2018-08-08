s = input().rstrip().split(' ')
d = s[0].split('/')
t = s[1].split(':')
m = int(d[0])
d = int(d[1])
h = int(t[0])
s = int(t[1])

while h>=24:
    h = h - 24
    d = d + 1

#print("%02d"%m+"/%02d"%d+" %02d"%h+":%02d"%s)
print("{:02}/{:02} {:02}:{:02}".format(m,d,h,s))
