# Write your own method that takes a block. Your method should print out a 
# status message before and after running the block. Your block doesn't have 
# to do anything fancy -- it can just print out several of its own parameters.

def meth
	puts "Before block"
	yield("first", "second")
end

meth { |first, second| puts "first block item: #{first}, second block item: #{second}."} 

puts "After block"
puts ""

# Release 1 

# Declare an array and a hash, and populate each of them with some data.
# Demonstrate that you can iterate through each one using .each, and then using .map! (modifying the data in some way).

array = ["Bill", "Joe", "Bob"]
hash = {name: "Dan", age: 33, eye_color: "green"}

# Array each
p array
array.each { |x| puts x + " & Sally" }
p array

# Array map!
p array
array.map! { |x| x + " is an idiot"}
p array

# Hash each
p hash
hash.each { |x, y| puts y.to_s + " I think" }
p hash





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

