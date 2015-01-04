def show
  puts "Enjoy!"
end
show { puts "Programming!" }  #=> Enjoy!

def show
  puts "Enjoy!"
  yield
end
show { puts "Programming!" }  #=> Enjoy! Programming!

def double
  yield
  yield
end
double { puts "Two" }

def foo
  yield "Hello!"
end
foo {|x| puts x}  #=> Hello!

def foo
  yield "Hello!", "Enjoy", 42 + 23
end
foo {|x, y, z| puts x, y, z }
  
