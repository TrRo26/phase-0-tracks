
puts ""
puts "How many employees would you like to process?"
numemp = gets.chomp.to_i

numemp.times do 
	puts ""
	puts "What is your name?"
	name = gets.chomp.downcase

	puts ""
	puts "How old are you in years?"
	age = gets.chomp.to_i

	puts ""
	puts "What year were you born?"
	birthyr = gets.chomp.to_i

	agebirthyr = (age == (2016 - birthyr))

	puts ""
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (Please enter 'Yes' or 'No')"
	garlic = gets.chomp.downcase

	case garlic
		when "yes"
			garlic = true
		when "no"
			garlic = false
		else
			puts ""
			puts "*** Learn how to follow instructions. We're going to assume you entered 'Yes' ***"
			puts ""
	end

	puts ""
	puts "Would you like to enroll in the company's health insurance? (Please enter 'Yes' or 'No')"
	ins = gets.chomp.downcase

	case ins
		when "yes"
			ins = true
		when "no"
			ins = false
		else
			puts ""
			puts "*** Learn how to follow instructions. We're going to assume you entered 'Yes' ***"
	end

	case
		when zero = (name == "drake cula") || (name == "tu fang")
			puts ""
			puts "Definitely a vampire."
		when first = ((garlic || ins) && agebirthyr)
			puts ""
			puts "Probably not a vampire."
		when second = ((garlic == ins) == false)
			puts ""
			puts "Probably a vampire."
		when third = ((garlic || ins) == agebirthyr)
			puts ""
			puts "Almost certainly a vampire."
		else
			puts ""
			puts "Results inconclusive."
	end
end


__END__

wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

TRUE puts (wolves_like_garlic && wolves_like_sunshine)
TRUE puts (wolves_like_garlic || vampires_like_garlic)
FALSE puts (wolves_like_garlic && vampires_like_garlic)
FALSE puts (wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic))
TRUE puts ((wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine)
FALSE puts (vampires_like_garlic)
TRUE puts (!vampires_like_garlic)
FALSE puts (!(wolves_like_sunshine && wolves_like_garlic))

