
# PSEUDOCODE
# --------------------------

# Will be creating a program that keeps track of the user's rating of beers they
# have sampled. They will be prompted to enter the following:
# 	1. name of beer
# 	2. rating of beer on a scale of 1 to 10
# 	3. whether they want to enter another beer or not

# User input 1 and 2 will be added to two seperate arrays (one for names and one for rankings).
# After each newely entered beer name and ranking, the user will be prompted to either enter
# another beer or to quit. The full catalog of entered beers is printed neatly upon quiting.

# Will define four methods, two of which take arguments
	# define a method that adds a beer name to the user's catalog (takes an argument)
	# define a method that adds a beer rating to the user's catalog - (takes an argument)
	# define a method that combines the two beer catalogs into one as a hash
	# define a method that prints a clean list of beer names and their respective ratings


# BUSINESS LOGIC
# --------------------------

# define class
class Beer
	attr_accessor :name, :rating, :name_catalog, :rating_catalog, :full_catalog

	# define initalize method and attributes
	def initialize
		puts "*** Generated new empty catalog ***"
		@name = name
		@rating = rating
		@name_catalog = []
		@rating_catalog = []
		@full_catalog = {}
	end

	# define add_name method (takes an argument)
	def add_name(name)
		@name_catalog << name
	end

	# define add_rating method (takes an argument)
	def add_rating(rating)
		@rating_catalog << rating
	end

	# define combine method that comines the two arrays
	def combine
		@name_catalog.each_with_index do |name, rating| 
			@full_catalog[name] = @rating_catalog[rating]
		end
	end

	# define a print method that clearly prints the finished catelog
	def print_catalog
		puts "\n** Your Catelog of Beers **"
		puts "---------------------------"
		# traverse the hash and print each key-value pair
		@full_catalog.each do |beer, rating|
			# output: print each key-value pair
  			puts "#{beer}: #{rating}"
  		end 
	end
end

# USER INTERFACE & DRIVER CODE
# --------------------------

# prints introduction
puts "\nWelcome!"
puts "Let me help you keep track of the beers you've tried."
puts ""
# create new instance
instance = Beer.new
# initate loop
loop do
	# prompt user to enter name of beer
	puts "\nPlease enter the name of the beer you would like to add to your new catalog:"
	beer_name = gets.chomp
	
	# prompt user for rating of beer
	puts "\nHow would you rate this beer on a scale of 1 to 10?"
	beer_rating = gets.chomp.to_i
	
	# Add name and rating to arrays
	instance.add_name(beer_name)
	instance.add_rating(beer_rating)
	
	# prompt user if they would like to enter another beer
	puts "\nWould you like to enter another beer ('Y' or 'N')?"
	continue = gets.chomp.upcase
		if continue == "N"
			break
		end
end

# combine beer names and ratings array into hash 
instance.combine
# print the list of beer names
instance.print_catalog
#puts "Here is your catelog of beers and their respective ratings:\n #{instance.full_catalog}"


