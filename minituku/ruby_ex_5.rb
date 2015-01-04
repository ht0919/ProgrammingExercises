def buy_tickets(*args)
  if args.length > 3 then
    puts "Buying a group ticket for #{args.join(", ")}."
  else
    args.each do |arg|
      puts "Buying a ticket for #{arg}."
    end
  end
end

buy_tickets("Sam", "Dave", "David")
buy_tickets("John", "Paul", "Ringo", "George")
