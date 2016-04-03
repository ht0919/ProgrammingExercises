n = gets.to_i
n.times {
  z = gets.to_i
  h = 25
  m = 0
  if z > 0
    z = z / 3
    tmp = h * 60 + m
    tmp = tmp - z
    h = tmp / 60
    m = tmp % 60
  end
  if h > 23
    h = h - 24
  end
  printf("%02d:%02d\n",h,m)
}
