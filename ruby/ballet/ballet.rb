class Dancer
	attr_reader :name
	attr_writer :age

	def initialize(name, age)
		@name = name.to_s
		@age = age.to_i
	end

	def name
		@name
	end 

	def age
		@age
	end

end