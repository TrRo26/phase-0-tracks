
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
	attr_reader #:user_word
	attr_accessor #:the_word

# Define initial characteristics and game word to be guessed
	def initialize
		@the_word = ""
		@the_word_blank #= @user_word   # .method to equal "_ _ _ _ _"
		@guess_num = 0
		#@is_over = false
		@letters_guessed = []
		@the_word_blank
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

# Def method that adds spaces to user word
	@@user_word.to_a.each do |x|
		temp = []
		temp << x + " "
		@the_word = temp.join
	end

# Def method that changes user input word to blanks
	def user_word_to_blanks   #@the_word = 
		#@user_word.each do { |x| 
		#	x + " " 
		#}
		#end
		#p @the_word
	end

end

# USER INTERFACE / DRIVER CODE

puts "\nWelcome to the unnamed and much crappier version of the classic game, Hangman!"
puts "Player 1, please discretely enter a word:"

new_game = Game.new

@@user_word = gets.chomp

puts "Player 2, here is your word to guess. Best of luck!\n"
p @the_word


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



