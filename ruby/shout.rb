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