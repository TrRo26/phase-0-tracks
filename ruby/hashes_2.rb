=begin
pseudocode and write a program that will allow an interior designer to enter the details of a given 
client: 
the client's name, age, number of children, decor theme, and so on (you can choose your own 
as long as it's a good mix of string, integer, and boolean data).
Your keys should be symbols
Your program should ...

- Prompt the designer/user for all of this information.
- Convert any user input to the appropriate data type.
- Print the hash back out to the screen when the designer has answered all of the questions.
- Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes 
users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" 
(for example), your program should ask for a new value and update the
:decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite 
handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to 
handle user errors.
Print the latest version of the hash, and exit the program.
=end

# ---------------------------

# Create hash for user data
 user_data = {}

# User enters info
puts ""
puts "Please enter client data:"
puts ""
puts "Name:"
user_data[:name] = gets.chomp
puts ""
puts "Age:"
user_data[:age] = gets.chomp.to_i
puts ""
puts "Number of children that client has:"
user_data[:number_children] = gets.chomp.to_i
puts ""
puts "Prefered decor theme:"
user_data[:decor_theme] = gets.chomp
puts ""
puts "Price ceiling:"
user_data[:price_ceiling] = gets.chomp.to_i
puts ""
puts "Likely customer will be difficult ('true' or 'false'):"
user_data[:is_difficult] = gets.chomp
if user_data[:is_difficult] == "true"
	user_data[:is_difficult] = true
else
	user_data[:is_difficult] = false
end
puts "**End of client data collection**"
puts ""
puts user_data
puts ""

# User promted to change items if needed
puts "Would you like to change anything? If so, what category? (if not, type 'none')"
update = gets.chomp

# If updates requested, updates. If none entered, exits.
if update == "none"
	puts user_data
else
	update = update.to_sym
	puts "What would you like to update this category to?"
	user_data[update] = gets.chomp
	puts user_data
end




