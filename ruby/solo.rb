
# PSEUDOCODE
# --------------------------

# Will be creating a program that keeps track of the user's ranking of beers they
# have sampled. They will be prompted to enter the following:
# 	- name
#  	- brewery
# 	- ranking

# Will define three methods, one of which takes an argument.
	# define a method that prints that a sip of beer has been taken
	# define a method that updates the beers ranking by taking an argument
	# define a method that prints that a cab home is needed

# BUSINESS LOGIC
# --------------------------

class Beer
	attr_reader :country_of_origin
	attr_accessor :ranking, :name, :history

	def initialize
		@history = {}
		@name
		@ranking
		@country_of_origin
		puts "Initializing new beer instance..."
	end

	def how_many
		
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


# USER INTERFACE
# --------------------------

# prints introduction
puts "\nWelcome!"
puts "Let me help you keep track of what beers you've tried."
# prompt user to enter name of beer

=begin
puts "Please enter the name of the beer (or type 'done'):"
until @name = "done"
	@name = gets.chomp
	puts "How would you rate this beer on a scale of 1 to 10?"
	@ranking = gets.chomp
	@history[@name] = @ranking
end
=end

puts "How many new beers would you like to enter?"
number_of_beers = gets.chomp.to_i
number_of_beers.times do
	# prompt user to enter name of beer
	puts "Please enter the name of the beer:"
	x = gets.chomp
	# prompt user to enter score
	puts "How would you rate this beer on a scale of 1 to 10?"
	y = gets.chomp.to_i
	@history[x] = y
end


# print the list of beer names and their respective brewery and ranking
puts "Here is your current catelog of beers: #{@history}"

