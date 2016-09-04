#===============================================================================
#                    *** THE METAPHORICAL CARD PLAYER ***
#===============================================================================

#-------------------------------------------------------------------------------
# PSEUDOCODE
#-------------------------------------------------------------------------------
=begin
The metaphorical card player program will allow a user to 'apply' for a desired
name and number of metaphorical cards (i.e. a baby card). They will either be 
approved or denied for that number of cards. Once approved, they will be able to 
enter the reason/excuse for playing the card (the card played will theoretically 
allow them to get out of various social events with no questions asked). The 
program will store this information in the associated database.

The individual process will transpire as follows:
- user will be provided with an introduction and asked for name of card for which
	they are applying
- user will be asked for the number of cards they would like to apply for
- user will be approved if they request less than twice the number of characters 
	in the card, otherwise they will be denied (i.e. 'baby' would be approved if 
	the user requests 7 or fewer
- user will have the option to play a card, or quit. If playing a card:
	- user will be prompted to enter the situation/reason for playing the card
	- program will automatically quit after reason has been entered
	- card name, total number of cards and reason card was played is stored in
		database

Features that may be added at a later date:
- user will be asked for their first and last name
- make the original number of approved cards persistant when re-accessing the program.
- record date and time cards are played and include expiry date of one year

=end

#-------------------------------------------------------------------------------
# DATABASE
#-------------------------------------------------------------------------------

# require gems
require 'SQLite3'

# create SQLite3 database
@meta_db = SQLite3::Database.new("meta_card_db.db")

# create database if doesn't already exist
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS meta_card_db(
    id INTEGER PRIMARY KEY,
    card_name VARCHAR(255),
    request_num INT,
    reason VARCHAR(255)
  )
SQL

# run create database command
@meta_db.execute(create_table_cmd)

#-------------------------------------------------------------------------------
# BUSINESS LOGIC
#-------------------------------------------------------------------------------

# define a method that takes name of card and number applying for as arguments
def approval(card_name, request_num)
	@approved = false
	@card_name = card_name
	@request_num = request_num.to_i
	@num_cards = card_name.length * 2
	if request_num >= @num_cards
		puts "I'm sorry, your request for #{request_num} cards has been denied. Please re-apply later and request fewer cards."
	else
		puts "Congratulations! You have been approved for #{request_num} #{card_name} cards!"
		@approved = true
	end
end

# define a method that collects user reason for playing card
def play_card
	puts "Please describe your reason for playing this card:"
	@reason = gets.chomp
	puts "You have used 1 of your #{@request_num.to_s} #{@card_name} cards."
	@meta_db.execute("INSERT INTO meta_card_db (card_name, request_num, reason) VALUES (?, ?, ?)", [@card_name, @request_num, @reason])
	puts "This information has been recorded."
	puts "See you at the next social invitation you want to weasle your way out of!"
end

#-------------------------------------------------------------------------------
# USER INTERFACE
#-------------------------------------------------------------------------------

puts "*** THE METAPHORICAL CARD PLAYER ***"
puts
puts "Welcome! Please enter the metaphorical card you would like to apply for (please do not type the word 'card'):"
@card_name = gets.chomp
puts "How many cards would you like to apply for?"
@num_cards = gets.chomp.to_i
puts "Assessing your request..."
approval(@card_name, @num_cards)
if @approved == true
	puts "Would you like to play one of your cards (y/n)?"
	if gets.chomp.downcase == "n"
		abort("See you at the next social invitation you want to weasle your way out of!")
	else
		play_card
	end
end

# test database recall
=begin
test = @meta_db.execute("SELECT * FROM meta_card_db")
	test.each do |x|
	puts
	puts "CARD NAME: #{x['card_name']}"
	puts "TOTAL CARDS AVAILABLE: #{x['request_num']}"
	puts "REASON FOR USING CARD: #{x['reason']}"
	puts
end
=end


