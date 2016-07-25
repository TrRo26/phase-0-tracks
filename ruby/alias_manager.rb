
# Name Method

def spy_name(realname)
	
	#consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l"] etc.
	#realname = realname.chars
	
	# Swap first and last
	#p realname.split.reverse(' ')

	# replace vowels with next vowel
	realname.gsub!(/[aeiou]/, "a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a") 
	# print result
	#puts realname
end

database = []

puts "Please enter a name (type 'quit' when finished):"
until ((realname = gets.chomp) == "quit")
	codename = spy_name(realname)
	database <<	codename
	puts "Your secret code name is #{codename}. This code name has been stored to the database. Please enter another name:"
end

p database