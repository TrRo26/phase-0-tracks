# Def a class 'Santa'
class Santa
	attr_reader :ethnicity
	attr_accessor :age, :gender

	# Def method that prints "Initializing Santa instance ..."
	def initialize(gender, ethnicity)
		puts ""
		puts "Initializing Santa instance ..."
		puts ""
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Current reindeer hierarchy: #{@reindeer_ranking}"
		puts ""
	end

	# Def method that prints "Ho, ho, ho! Haaaappy holidays!"
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
		puts ""
	end
	
	# Def method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!" 
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
		puts ""
	end
	
	def celebrate_birthday
		@age += 1
		puts "Santa had a birthday and is now #{@age} year(s) of age."
		puts ""
	end
	
	def get_mad_at(name)
		reindeer = @reindeer_ranking
		spot = reindeer.index(name)
		reindeer.insert(-1, reindeer.delete_at(spot))
		puts "The new higherarchy of reindeer is: #{reindeer}."
		puts ""
	end

=begin 	** Getter Methods **
	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

		** Setter Methods **
	def gender=(new_gender)
		@gender = new_gender
	end
=end

end

# TEST/DRIVER CODE

one = Santa.new("x", "x")

# Use array of example genders and example ethnicities to create (and print) Santas at random
init_gender = ["male", "female", "neutral", "asexual"]
init_ethnicity = ["White", "Black", "Asian", "Mexican"]

100.times do |x|
	randgen = init_gender.sample
	randeth = init_ethnicity.sample
	age = (0..140).to_a.sample
	puts "A Santa with a gender of #{randgen}, an ethnicity of #{randeth} and an age of #{age} has been created."
end

puts ""

one.speak 
one.eat_milk_and_cookies("chocolate chip")
one.get_mad_at("Vixen")
one.celebrate_birthday




