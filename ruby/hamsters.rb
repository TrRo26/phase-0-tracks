puts "Hamster's name?"
name = gets.chomp.to_s
puts "Hamster's volume level (from 1 to 10)?"
volume = (gets.chomp.to_i)
puts "Hamster's fur color?"
fur = gets.chomp.to_s
puts "Good canididate for adoption?"
adopt = gets.chomp.to_s
puts "Hamster's age?"
age = gets.chomp.to_i
 	if age == 0
 		age = nil
end

puts "#{name} has a volume level of #{volume}, with fur #{fur} in color and an approximate age of #{age}. Should we adopt: #{adopt}!"