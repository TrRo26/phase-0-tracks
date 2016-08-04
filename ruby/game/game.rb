
# SPECIFICATIONS

# One user can enter a word and another user attempts to guess the word.
###### Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
###### The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
###### The user should get a congratulatory message if they win, and a taunting message if they lose.

# STILL NEED TO REFACTOR
	# Game ends upon win or loss
	# accept single guess and apply to all repeat letters (iteration?)
	# Case should not matter

# BUSINESS LOGIC

# Create new class
class Game
	attr_reader :the_word
	attr_accessor :is_over

#@the_word = @@user_word.word_adjust

# Define initial characteristics and game word to be guessed
	def initialize
		@user_word = ""
		#@the_word = ""
		@the_word_blank = "_ _ _ _ _"
		#@guess_allowed = 8
		@guess_num = 0
		#@is_over = false
		@letters_guessed = []
		puts @the_word_blank
	end

# Create method that accepts a guess and compares to word
	def guess(letter)
		@letters_guessed << letter
		@guess_num += 1

		if @the_word.include? letter
			x = @the_word.index(letter)
			@the_word_blank[x] = letter
			@guess_num -= 1
			puts "\nCorrect!\n#{@the_word_blank}\n"
			if @the_word == @the_word_blank
				puts "HOLY HELL! YOU WON!!!"
			end
		elsif @guess_num == @the_word.length
			puts "\nWrong! Guess #{@guess_num} was your last guess. GAME OVER. Try being smarter next time.\n"
		else
			puts "\nWrong! Guess #{@guess_num} - Your guess of #{letter} is incorrect. Please try again.\n #{@the_word_blank}\n"
		end

	end

# Create method that takes inputed word and returns in correct format
	def word_adjust   #@the_word = 
		@user_word.each do { |x| 
			x + " " 
		}
		end
		p @the_word
	end

# Create method that sets number of guesses allowed by word length
	#def word_length
	#	word.length.times do
	#		print "_"
	#	end
	#end

end

# USER INTERFACE / DRIVER CODE

new_game = Game.new

puts "\nWelcome to the unnamed and much crappier version of the classic game, Hangman!"
puts "Player 1, please discretely enter a word:"

@user_word = gets.chomp

new_game.word_adjust

puts "Player 2, here is your word to guess. Best of luck!\n"
puts ""


# TEST CODE 

=begin

new_game.guess("h")
new_game.guess("e")
new_game.guess("o")
new_game.guess("l")
new_game.guess("l")
new_game.guess("f")
new_game.guess("g")
new_game.guess("h")
new_game.guess("i")
new_game.guess("j")
new_game.guess("k")

=end



