cat = 0
dog = 0
for i in range(3):
    s = input().rstrip()
    if s == 'cat':
        cat += 1
    else:
        dog += 1

if cat > dog:
    print('cat')
else:
    print('dog')