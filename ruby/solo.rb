
# PSEUDOCODE
# --------------------------

# Will be creating a BEER class with three attributes that vary from instance to 
# instance and will define three methods, one of which takes an argument.

# define a BEER class
	# define an INITIALIZE method with the following attributes:
		# => STYLE
		# => STATE_OF_ORIGIN
		# => RANKING
	# define a method that prints that a sip of beer has been taken
	# define a method that updates the beers ranking by taking an argument
	# define a method that prints that a cab home is needed

# BUSINESS LOGIC
# --------------------------

class Beer
	attr_reader :style, :state_of_origin
	attr_accessor :ranking

	def initialize
		@style = ale
		@state_of_origin = Illinois
		@ranking = 0
	end

	def take_a_sip
		puts "*takes a sip*"
	end

	def ranking(score)
		@ranking = score
	end

	def cab_home
		puts "*hails cab home*"
	end

end

# DRIVER CODE
# --------------------------

