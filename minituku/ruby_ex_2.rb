def clever_print(*args)
  ary = []
  args.each { |arg|
    if Hash.try_convert(arg) then
      ary << arg.to_a
    else
      ary << arg
    end
  }
  puts ary.join(" ")
end

clever_print(["Ruby"], "the", ["Programming", "Language"])
#=> Ruby the Programming Language

clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })
#=> Agile Web Development with Rails 3.0
