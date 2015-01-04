class Planet
  def life?
    puts "Who knows?"
  end
end

pluto = Planet.new()
earth = Planet.new()
mars = Planet.new()

def earth.life?()
  puts "Positively!"
end
def pluto.life?()
  puts "Probably not."
end

pluto.life?()  #=> Probably not.
earth.life?()  #=> Positively!
mars.life?()   #=> Who knows?
