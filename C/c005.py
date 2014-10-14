input_lines = int(raw_input())
for i in xrange(input_lines):
  s = raw_input().rstrip().split('.')
  if len(s) != 4:
    print "False"
    continue
  ans = "True"
  for ip in s:
    if ip.isdigit()==False or int(ip)<0 or int(ip)>255:
      ans = "False"
      break
  print ans
