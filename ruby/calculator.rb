def calculate(i, o, si)
	i = i.to_i
	o = o.to_s
	si = si.to_i
	if o == "+"
		puts i + si
	elsif o == "-"
		puts i - si
	elsif o == "*"
		puts i * si
	elsif o == "/"
		puts i / si
end
end

#puts calculate(20, "+", 3)
#puts calculate(20, "-", 3)
#puts calculate(20, "*", 3)
#puts calculate(20, "/", 3)

index = 0
history = []

puts "Please enter a calculation adding/subtracting/multiplying/dividing two numbers (i.e. 3 + 2):"
until ((calc = gets.chomp.to_s) == "done")
	data = calc.split
	index += 1
	answer = calculate(data[0], data[1], data[2])
	puts answer
	equ = calc + " = #{answer}"
	history << equ
	puts "Please enter another calculation (type 'done' when finished)"
end

puts "#{index} calculations have been processed. They were:"
puts history
