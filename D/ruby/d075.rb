a = [ 0 ] * 5
4.times  {
  n = gets.to_i
  a[ n - 1 ] = n
}
print a.index(0)+1,"\n"
