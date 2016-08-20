
# define a Santa class
class Santa
	# add getter & setter methods in ATTR_READER and ATTR_ACCESSOR form
	attr_reader :ethnicity
	attr_accessor :gender, :age

	# define a 'speak' method that will print "Ho, ho, ho! Haaaappy holidays!"
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	# define an 'eat_milk_and_cookies' method that takes a cookie type as a parameter and prints
	# "That was a good ..."
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	# define an 'initialize' method that prints "Initializing Santa instance ..."
	# add gender and ethnicity attributes as string parameters 
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		# add array of reindeer
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		# add age attribute
		@age = 0
	end

	# add 'celebrate_birthday' method that ages santa by one year
	def celebrate_birthday
		@age += 1
		puts "Santa had a birthday and is now #{@age}!"
	end
	
	# add 'get_mad_at' method that takes reindeer name as argument and moves to last item in array
	def get_mad_at(reindeer_name)
		# remove name passed as argument
		@reindeer_ranking.delete(reindeer_name)
		# add name to end of array
		@reindeer_ranking << reindeer_name
		# print updated array
		puts @reindeer_ranking
	end

	# add setter method for @gender and @reindeer_ranking
	# def gender=(new_gender)
	#	@gender = new_gender
	# end

	# add getter methods for @age and @ethnicity
	# def age
	#	@age
	# end

	# def ethnicity
	#	@ethnicity
	# end
end

# create empty array to store santa instances
santas = []
# define array of santa genders and array of ethnicities
list_of_genders = ["female", "male", "agender", "transgender", "unsure", "none"]
list_of_ethnicities = ["black", "Latino", "white", "alien", "asian", "N/A"]
# loop through arrays adding them to SANTAS array
list_of_genders.length.times do |i|
  santas << Santa.new(list_of_genders[i], list_of_ethnicities[i])
end

puts santas

# test above methods by initializing a Santa class instance and calling its methods
charles = Santa.new("x", "year")
charles.speak
charles.eat_milk_and_cookies("chocolate chip cookie")
charles.celebrate_birthday
charles.get_mad_at("Vixen")


