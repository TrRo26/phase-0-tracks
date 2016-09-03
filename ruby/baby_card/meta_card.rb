

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
# BUSINESS LOGIC
#-------------------------------------------------------------------------------

def user_name

end

def card

end

def approval(card_name, request_num)
	num_cards = card_name.length * 2
	if request_num >= num_cards
		puts "I'm sorry, you have been denied."
	else
		puts "Congratulations! You have been approved!"
	end
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


#-------------------------------------------------------------------------------
# DRIVER CODE & TEST CODE
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# COMMENTED OUT TEST CODE
#-------------------------------------------------------------------------------
=begin


=end

