

# Write a Ruby program that uses persistent data to make your life better, or 
# makes someone else's life better. Find several opportunities to try something 
# not explicitly shown in the video. Can users create data? Retrieve it? 
# Manipulate it? It's up to you. Push yourself, and decide with integrity when 
# you are finished. Note that you do not need to use classes in this assignment 
# -- keeping a class instance and a database row in sync is a lot of work, so 
# that might be too much to tackle.

#===============================================================================
#                               *** THE METAPHORICAL CARD PLAYER ***
#===============================================================================

#-------------------------------------------------------------------------------
# PSEUDOCODE
#-------------------------------------------------------------------------------
=begin
The metaphorical card player program will allow a user to 'apply' for a desired
name and number of metaphorical cards (i.e. a baby card). They will either be approved for that number or
denied. Once approved, they will be able to enter in the date that each card was played
and for what reason (the card played will allow them to get out of various social
events with no questions asked). The program will store this information in the associated database.

The individual process will transpire as follows:
- user will be provided with an introduction and asked for name of card they are applying
- user will be asked for the number of cards they would like to apply for
- user will be approved if they request twice the number of characters in the card
	name entered or less. Otherwise they will be denied (i.e. 'baby' would be
	approved if the user requests 8 or fewer.
- user will have the option to play a card, or quit. If playing a card:
	- date and time will automatically be recorded
	- user will be prompted to enter the situation/reason for playing the card.
	- number of remaining cards will be displayed.
	- user will be asked to play another card or quit.
	- date and reason card was played is stored (associated with users name) in a database)


Features that may be added at a later date:
- user will be asked for their first and last name
- Make the original number of approved cards persistant when re-accessing the program.
- Year time limit from first applying?

=end

#-------------------------------------------------------------------------------
# DATABASE
#-------------------------------------------------------------------------------

# require gems
require 'SQLite3'

# create SQLite3 database
meta_db = SQLite3::Database.new("meta_card_db.db")
meta_db.results_as_hash = true

# 
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS meta_card_db(
    id INTEGER PRIMARY KEY,
    card_name VARCHAR(255),
    num_cards INT,
    reason VARCHAR(255)
  )
SQL

#
meta_db.execute(create_table_cmd)

#-------------------------------------------------------------------------------
# BUSINESS LOGIC
#-------------------------------------------------------------------------------

# define a method that takes name of card and number applying for as arguments
def approval(card_name, request_num)
	@approved = false
	@card_name = card_name
	@request_num = request_num
	num_cards = card_name.length * 2
	if request_num.to_i >= num_cards
		puts "I'm sorry, your request for #{request_num} cards has been denied. Please try requesting fewer cards."
	else
		puts "Congratulations! You have been approved for #{request_num} #{card_name} cards!"
		@approved = true
	end
end

def play_card
	puts "Please describe your reason for playing this card:"
	@reason = gets.chomp
	puts "You have used 1 of your #{@request_num} #{@card_name} cards."
	puts "This information has been recorded."
	puts "See you at the next social invitation you want to weasle your way out of!"
end

def record_card(db, card_name, num_cards, reason)
	meta_db.execute("INSERT INTO meta_card_db (card_name, num_cards, reason) VALUES (?, ?, ?)", [card_name, num_cards, reason])
end


#-------------------------------------------------------------------------------
# USER INTERFACE
#-------------------------------------------------------------------------------

puts "*** THE METAPHORICAL CARD PLAYER ***"
puts
puts "Welcome! Please enter the metaphorical card you would like to apply for (please do not type the word 'card'):"
card_name = gets.chomp
puts "How many cards would you like to apply for?"
num_cards = gets.chomp
puts "Assessing your request..."
approval(card_name, num_cards)
if @approved == true
	puts "Would you like to play one of your cards (y/n)?"
	unless gets.chomp.downcase == "y"
		abort("See you at the next social invitation you want to weasle your way out of!")
	end
end
play_card

#-------------------------------------------------------------------------------
# DRIVER CODE & TEST CODE
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# COMMENTED OUT TEST CODE
#-------------------------------------------------------------------------------
=begin


=end

