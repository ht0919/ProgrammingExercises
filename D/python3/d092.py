s = input().rstrip().split(' ')
x_1 = int(s[0])
y_1 = int(s[1])
p_1 = int(s[2])
a_1 = p_1 / (x_1 * y_1)

s = input().rstrip().split(' ')
x_2 = int(s[0])
y_2 = int(s[1])
p_2 = int(s[2])
a_2 = p_2 / (x_2 * y_2)

if a_1 < a_2:
    print('%d %d %d' % (x_1,y_1,p_1))
elif a_1 > a_2:
    print('%d %d %d' % (x_2,y_2,p_2))
else:
    print('DRAW')
