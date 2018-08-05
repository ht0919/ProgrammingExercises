S = input().rstrip()
for i in range(len(S)):
    if S[i] == 'I' or S[i] == 'l' or S[i] == 'i':
        print('caution')
        exit()
print(S)