import re
s = input().rstrip()
result = re.sub(r'[a-zA-Z]+', "", s)
print(result)