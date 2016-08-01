class Dancer
	attr_reader :name
	attr_writer :age

	def initialize(name, age)
		@name = name.to_s
		@age = age.to_i
		@card = []
		@sl_col = "white"
	end

	def name
		@name
	end 

	def age
		@age
	end

	def pirouette
		p "*twirls*"
	end

	def bow
		p "*bows*"
	end

	def queue_dance_with(partner)
		@card << partner
	end

	def card
		@card
	end

	def begin_next_dance
		"Now dancing with #{@card.delete_at(0)}."
	end

	def slipper_color(color)
		@sl_col = color
		p "The color of ballet slippers have been changed to #{color}."
	end

end