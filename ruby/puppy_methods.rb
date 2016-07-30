class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    return toy
  end
  
  def speak(nmbr)
    puts "Woof!"*nmbr
  end
    
  def roll_over
    puts "*Roll over!*"
  end
    
  def dog_years(years)
    years = years / 7
    puts "This how old: #{years}" 
  end 
  
  def trick(command)
    puts "#{command}"
  end
  
  def initialize
  puts "Initializing new puppy instance..."
  end
    
end

=begin 
one = Puppy.new
one.fetch("ball")
one.speak(6)
one.roll_over
one.dog_years(25)
one.trick("stay")
=end

class Dog
  
  def initialize
    puts "Initializing new Dog instance..."
  end
  
  def test1
    puts "hello"
  end

  def test2
    puts "whatever"
  end
  
  storage = []
  
  10.times do
    storage << Dog.new
    puts storage
  end
  
  storage.each do |x|
    x.test1
    x.test2
  end
    
end 