
# PSEUDOCODE
# --------------------------

# Will be creating a program that keeps track of the user's rating of beers they
# have sampled. They will be prompted to enter the following:
# 	- name
# 	- rating
# 	- whether they want to enter another beer or not

# Will define three methods, two of which take arguments
	# define a method that adds beer name to catalog - taking an argument
	# define a method that adds beer rating to catalog - taking an argument
	# define a method that combines the two beer catalogs into one as a hash

# BUSINESS LOGIC
# --------------------------

class Beer
	attr_reader 
	attr_accessor :name, :rating, :name_catalog, :rating_catalog, :full_catalog

	def initialize
		puts "Generating new empty catalog..."
		@name = name
		@rating = rating
		@name_catalog = []
		@rating_catalog = []
		@full_catalog = {}
	end

	def add_name(name)
		@name_catalog << name
	end

	def add_rating(rating)
		@rating_catalog << rating
	end

	def combine
		@full_catalog[@name_catalog] = @rating_catalog
		puts @full_catalog
	end
end

# DRIVER CODE
# --------------------------


# USER INTERFACE
# --------------------------

# prints introduction
puts "\nWelcome!"
puts "Let me help you keep track of the beers you've tried."
# create new instance
instance = Beer.new
# initate loop
loop do
	# prompt user to enter name of beer
	puts "Please enter the name of the beer you would like to add to your new catalog:"
	beer_name = gets.chomp
	
	puts "How would you rate this beer on a scale of 1 to 10?"
	beer_rating = gets.chomp.to_i
	
	instance.add_name(beer_name)
	instance.add_rating(beer_rating)
	
	puts "Would you like to enter another beer ('Y' or 'N')?"
	continue = gets.chomp.upcase
		if continue == "N"
			break
		end

end

# print the list of beer names
puts "Here is your current catelog of beers: #{instance.name_catalog} and their respective ratings #{instance.rating_catalog}"


