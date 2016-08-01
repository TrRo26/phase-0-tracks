
# SPECIFICATIONS

# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

# CLASS CODE

# Create new class
class Game
	attr_reader :guess_count
	attr_reader :is_over

# Define initial characteristics and accepts word
	def initialize
		@the_word = "hope"
		@the_word2 = "____"
		@guess_num = 0
		@is_over = false
		@guesses = []
		#@display = @display.word_length
	end

# Create method for calling the word
	def word
		@the_word
	end

# Create method that sets number of guesses allowed by word length
	def word_length
		word.length.times do
			print "_"
		end
	end

# Create method that accepts a guess and compares to word
	def guess(guess)
		@guesses << guess
		@guess_num += 1
		if @the_word.include? guess
			@the_word2.sub(the_word.index(guess), guess)
		elsif @guess_num == @the_word.length * 2
			p "Sorry, you're out of guesses. Game over."
		else
			p "That guess is incorrect. Please try again."
		end
	end

end

# USER INPUT


# DRIVER CODE 

#test = Game.new




