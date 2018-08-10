N = int(input())
t = {}
for i in range(N):
    s = input().rstrip()
    if s in t.keys():
        t[s] += 1
    else:
        t[s] = 1

if len(t) == 3 or len(t) == 1:
    print('draw')
else:
    if 'rock' in t and 'scissors' in t:
        print('rock')
    elif 'scissors' in t and 'paper' in t:
        print('scissors')
    elif 'paper' in t and 'rock' in t:
        print('paper')
