=begin 

write a program that will allow an interior designer to enter the details of a 
given client: the client's name, age, number of children, decor theme, and so on 
(you can choose your own as long as it's a good mix of string, integer, and boolean 
data).

Your program should ...

Prompt the designer/user for all of this information.

Convert any user input to the appropriate data type.

Print the hash back out to the screen when the designer has answered all of the questions.

Give the user the opportunity to update a key (no need to loop, once is fine). 
After all, sometimes users make mistakes! If the designer says "none", skip it. 
But if the designer enters "decor_theme" (for example), your program should ask for 
a new value and update the :decor_theme key. (Hint: Strings have methods that 
will turn them into symbols, which would be quite handy here.) You can assume the 
user will correctly input a key that exists in your hash -- no need to handle user 
errors.

Print the latest version of the hash, and exit the program.

Be sure to pseudocode, and leave your pseudocode in as comments.

=end

# Create a hash
personal_data = {
}

# User prompted to enter client data

puts "Please enter client data:"

# User enters client's data

puts "Name:"
	personal_data[:name] = gets.chomp
puts "Age:"
	personal_data[:age] = gets.chomp.to_i 
puts "Number of children:"
	personal_data[:children] = gets.chomp.to_i 
puts "Prefered decor theme:"
	personal_data[:decor] = gets.chomp

# Print data

puts personal_data

# User prompted to select field to make updates to if needed

puts "Do you need to update anything? If so which field? (if none, type 'none')"
update = gets.chomp.to_sym

# User prompted to enter new value for chosen field

puts "What would you like to update this field to?"
new = gets.chomp
personal_data[update] = new

# Print final data

p personal_data








str.intern => symbol
str.to_sym => symbol


