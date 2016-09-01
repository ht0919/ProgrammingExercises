q = []
n = int(input())
for i in range(n):
    s = input()
    if "go to" in s:
        q.append(s[6:])
        print(s[6:])
    elif "use the back button" in s:
        q.pop()
        print(q[len(q)-1])
