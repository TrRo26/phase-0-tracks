# Def a class 'Santa'
class Santa
# Def method that prints "Initializing Santa instance ...".
def initialize(gender, ethnicity)
		puts ""
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	# Def method that prints "Ho, ho, ho! Haaaappy holidays!"
	def speak
		puts ""
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	# Def method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!" 
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
	def celebrate_birthday
		@age += 1
		puts "Santa is now #{@age} year(s) of age."
	end
	def get_mad_at(name)
		reindeer = @reindeer_ranking
		spot = reindeer.index(name)
		reindeer.insert(-1, reindeer.delete_at(spot))
		puts "The new higherarchy of reindeer is: #{reindeer}."
	end
	
	# Getter methods:
	def age
		@age
	end
	def ethnicity
		@ethnicity
	end
	
	# Setter method:
	def gender=(new_gender)
		@gender = new_gender
		puts "Santa's new gender is: #{@gender}."
	end
	def test
		puts @gender
	end
end

one = Santa.new("male", "white")

puts one.test
puts ""
puts one.age
puts one.ethnicity
##one.gender = "whatever"
##one.celebrate_birthday
##one.get_mad_at("Vixen")

#puts one.speak 
#puts one.eat_milk_and_cookies("chocolate chip")

#santas = []

#init_gender = ["male", "female", "neutral", "a-sexual"]
#init_ethnicity = ["White", "Black", "Asian", "Mexican"]

#init_gender.length.times do |x|
#	santas << Santa.new(init_gender[x], init_ethnicity[x])
#	puts "A Santa with a gender of #{init_gender[x]} and an ethnicity of #{init_ethnicity[x]} has been added to the 'santas' array."
#end

#reindeer.get_mad_at("Vixen")



