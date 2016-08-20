
=begin
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!! Yay!"
	end
end

puts Shout.yell_angrily("Hey, you suck")
puts Shout.yelling_happily("Hey, you're awesome")
=end

# ==================================================

# Make a mixin version of the Shout module
# Write two classes representing anything that might shout, and include the Shout module in those classes
# Test your work by adding driver code at the bottom of the file that instantiates instances of your classes 
#   and calls the two module methods on each instance.

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + "!! Yay!"
	end
end

class Audiences
	include Shout
end

class Mobs
	include Shout
end

audience = Audiences.new
puts audience.yell_happily("So good, Encore")
puts audience.yell_angrily("Your performance sucked")

mob = Mobs.new
puts mob.yell_angrily("Don't even tell us you're out of fried chicken")
puts mob.yell_happily("You do have more fried chicken")





