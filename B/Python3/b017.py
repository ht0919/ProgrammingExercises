a = {}
wild = False
s = input()
for i in range(len(s)):
    if s[i] == '*':
        wild = True
    elif s[i] in a:
        a[s[i]] = a[s[i]] + 1
    else:
        a[s[i]] = 1

if len(a) == 1:
    print("FourCard")
else:
    if wild == True:   # *あり
        if len(a) == 2:
            print("ThreeCard")
        else:   # len(a) == 3
            print("OnePair")
    else:
        if len(a) == 2:
            t = list(a.values())
            if 3 in t:
                print("ThreeCard")
            else:
                print("TwoPair")
        elif len(a) == 3:
            print("OnePair")
        else:
            print("NoPair")
