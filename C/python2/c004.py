from collections import Counter
words = raw_input().rstrip().split(' ')
counter = Counter(words)
for word, cnt in counter.items():
    print word, cnt
