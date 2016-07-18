
def encrypt(password)
	#puts "Enter Password:"
	#password = gets.chomp

	index = 0
	puts ""
	puts "Your encrypted password:"
	puts ""
	while index < password.length
		puts password[index].next
		index += 1
	end	
end

def decrypt(password)
	#puts "Enter Encryption:"
	#password = gets.chomp

	index = 0
	alpha = "abcdefghijklmnopqrstuvwxyz"
	puts ""
	puts "Your decrypted password:"
	puts ""
	while index < password.length
		decrypt = alpha.index(password[index])
		decrypt = decrypt - 1
		puts alpha[decrypt]
		index +=1
	end
end

puts "Would you like to encrypt or decrypt your password?"
action = gets.chomp
if action == "encrypt"
    puts "What is the password?"
    password = gets.chomp
    puts encrypt (password)
elsif action == "decrypt"
    puts "What is the password?"
    password = gets.chomp
    puts decrypt(password)
end

#decrypt(encrypt("swordfish"))
# This didn't work with my code. It would give me an undefined method length for line #25.


#encrypt("abc") 
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")
	
