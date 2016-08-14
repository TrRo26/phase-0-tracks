
=begin
pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres")
and creates a fake name with it by doing the following:

Swapping the first and last name.
Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
and all of the consonants (everything else besides the vowels) to the next 
consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', 
and 'd' would become 'f'.
=end

# BUSINESS LOGIC
# ---------------

# Define a method that takes a string as a perameter
def spy_name(real_name)
	# replace vowels with next vowel
	real_name.gsub!(/[aeiou]/, "a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a") 
	# reverse first and last name
	real_name = real_name.split.reverse
	real_name = real_name.join
	# split name into individual elements contained in an array
	real_name = real_name.split(//)
	p real_name
	# advance each letter to the next in the alphabet
	real_name.each do |x|
		if x == "a" || x == "e" || x == "i" || x == "o" || x == "u"
			next
		else
			x.next!
		end
	end
	# join the array together
	real_name = real_name.join
end

# USER INTERFACE & DRIVER CODE
# ---------------

# Create an array to store code names
database = []
# Prompt user for input
puts "Please enter a name (type 'quit' when finished):"
# Allow user to quit by typing 'quit
until ((real_name = gets.chomp) == "quit")
	# use method on user entry
	codename = spy_name(real_name)
	# Add code name to array
	database <<	codename
	# Display code name
	puts "Your secret code name is #{codename}. This code name has been stored to the database. Please enter another name:"
end

p database
