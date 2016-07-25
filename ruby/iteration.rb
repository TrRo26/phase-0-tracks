# ------------------------------------------------------------------------------------------
# Release 0

# Write your own method that takes a block.

=begin
def my_method
	puts "This is before running the block."
	yield("uno", "dos")
end

my_method { |first, second| puts "This is the first thing in the block: #{first}, and this is the second: #{second}."} 

puts "This is after running the block."
=end

# ------------------------------------------------------------------------------------------
# Release 1 

# Declare an array and a hash, and populate each of them with some data.
# Demonstrate that you can iterate through each one using .each, and then using .map! (modifying the data in some way).

=begin
arr = ["Los Angeles", "Chicago", "New York", "San Francisco"]

hash = {
	europe: "Stockholm",
    africa: "Cape Town",
    asia: "Tokyo"
}

p "Array before: #{arr}"
puts ""
p "Hash before: #{hash}"
puts ""

arr.each do |i|
    puts i + " is my city in the U.S.A."
end

puts ""
puts "Array after .each: #{arr}"
puts ""

arr.map! do |i|
    puts i
    i + ", USA"
end

puts ""
puts "Array after .map!:"
p arr
puts ""

hash.each do |x, y|
	puts y + " is not in the US"
end

puts ""
puts "Hash after .each:"
p hash
puts ""
=end

# ------------------------------------------------------------------------------------------
# Release 2

# Use the documentation to find other Array and Hash methods that take blocks, and that can accomplish the tasks below, 
# then add sample calls to phase-0-tracks/ruby/iteration.rb -- one for the array, and one for the hash.
# You can use simple (nonmeaningful) data for your example calls -- an array of integers or letters would be fine.

arr = [1,2,3,4,5,12,15,13,27,33,45]

hash = {
	first: "a",
	second: "b",
	third: "c",
}

# A method that iterates through the items, deleting any that meet a certain condition 
# (for example, deleting any numbers that are less than 5).

arr.each do |i|
	puts i
    arr.reject! {|i| i < 10}
end

p arr

hash.each do |x, y|
	hash.reject! {|x, y| y == "b"}
end

p hash

# A method that filters a data structure for only items that do satisfy a certain condition 
# (for example, keeping any numbers that are less than 5).

arr.each do |i|
	puts i
    arr.select! {|i| i < 10}
end
    
p arr

hash.each do |x, y|
	hash.select! {|x, y| y == "b"}
end

p hash

# A different method that filters a data structure for only items satisfying a certain condition 

arr.each do |i|
	puts i
    arr.delete(3)
end

p arr

hash.each do |x, y|
	hash.delete(:first)
end

p hash

# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops 
# (you may not find a perfectly working option for the hash, and that's okay).
# arr = [1,2,3,4,5,12,15,13,27,33,45]

arr.each do |i|
	puts i
    while arr.reject! {|i| i < 10}
    end
end

p arr

hash.each do |x, y|
	while hash.reject! {|x, y| y == "b"}
	end
end

p hash

