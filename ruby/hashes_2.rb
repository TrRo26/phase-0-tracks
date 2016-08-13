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

# BUSINESS LOGIC
# ---------------------------

# Create hash of user data with correct datatype
 user_data = {
 	name: "",
 	age: "",
 	number_children: "",
 	decor_theme: "",
 	price_ceiling: "",
 	is_difficult: false
 }


# Create method that updates hash value (or accepts 'none' to skip)


# USER INTERFACE
# ---------------------------

# User enters info
puts ""
puts "Please enter client data:"
puts ""
puts "Name:"
user_data[:name] = gets.chomp
puts "Age:"
user_data[:age] = gets.chomp.to_i
puts "Number of children that client has:"
user_data[:number_children] = gets.chomp.to_i
puts "Prefered decor theme:"
user_data[:decor_theme] = gets.chomp
puts "Price ceiling:"
user_data[:price_ceiling] = gets.chomp.to_i
puts "Likely customer will be difficult:"
user_data[:is_difficult] = gets.chomp     #Is there a to_b for boolean?
puts "**End of client data collection**"
puts ""
puts "Would you like to change anything? (if not, type 'none')"

change = gets.chomp.to_sym
user_data[change]

puts user_data

# User prompted to update anything if needed (otherwise types 'none')


# DRIVER CODE
# ---------------------------
























