class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak (num)
    num.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(years)
    years / 7
  end

  def hand_shake
    puts "*shakes hand*"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

# DRIVER CODE

rocky = Puppy.new
rocky.fetch("ball")
rocky.speak(3)
rocky.roll_over
p rocky.dog_years(7)
rocky.hand_shake

class Coffee

  def initialize
    puts "Brewing..."
  end

  def order(cups)
    puts "Ordering #{cups} cups of coffee"
  end

  def pay_bill
    puts "Thanks!"
  end

end

# DRIVER CODE

coffee_array = []

50.times {|x| coffee_array[x] = Coffee.new}

coffee_array.each do |cup| 
  cup.order(2)
  cup.pay_bill
end

# the following also works:
# coffee_array.each {|cup| cup.order(1)}
# coffee_array.each {|cup| cup.pay_bill}


