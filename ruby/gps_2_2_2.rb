
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
def create_list(item)
  	# seperate items into anarray of individual items 
	items = item.split(" ")
	# create a hash
	g_list = {}
	# iterate through array assigning keys and default values to hash
	items.each do |i|
  		# set default quantity
  		g_list[i] = 1
  	end
  	# print the list to the console [can you use one of your other methods here?]
  	print_list(g_list)
  	# output: hash of items and quantities
  	return g_list
end

# test create_list method
# wed_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name
def add_item(g_list, item, qty=1)
	# add item to list
	g_list[item] = qty
	# output: updated hash list
	return g_list
end

# test add_item method
# add_item(wed_list, "chuck roast")

# Method to remove an item from the list
# input: key item by name
def remove_item(g_list, item)
	# search item in hash
	if g_list.include?(item)
		# use delete method to remove item by key name
		g_list.delete(item)
	else
		puts "Sorry, item not found."
	end
	# output: updated hash list
	return g_list
end

# test remove_item method
# remove_item(wed_list, "apples")
# remove_item(wed_list, "lettuce")

# Method to update the quantity of an item
# input: hash, item and quantity
def update_quantity(g_list, item, qty)
	# search item in hash
	if g_list.include?(item)
		# update quantity associated with it
		g_list[item] = qty
	# else, if not found, print "Sorry, item not found."
	else
		puts "Sorry, item not found."
	end
	# output: updated hash list
	return g_list
end

# test update_quantity method
# update_quantity(wed_list, "donuts", 5)
# update_quantity(wed_list, "carrots", 15)

# Method to print a list and make it look pretty
# input: most updated hash list
def print_list(g_list)
	# print list title
	puts "\n** Grocery List **"
	puts ""
	# traverse the hash and print each key-value pair
	g_list.each do |item, qty|
		# output: print each key-value pair
  		puts "#{item}: #{qty}" 
  	end
end

# test print_list method
# print_list(wed_list)

# =========================
# RELEASE 3 TESTS
# =========================

# Create a new list
thurs_list = create_list("Honey Butter Avocado")

# Add specified items to the list
add_item(thurs_list, "Lemonade", 2)
add_item(thurs_list, "Tomatoes", 3)
add_item(thurs_list, "Onions")
add_item(thurs_list, "Ice Cream", 4)

# Remove the Lemonade from the list
remove_item(thurs_list, "Lemonade")

# Update the Ice Cream quantity to 1
update_quantity(thurs_list, "Ice Cream", 1)

# Print the list
print_list(thurs_list)

# =========================
# REFLECTION & COMMENTS
# =========================
=begin

- What did you learn about pseudocode from working on this challenge?
	For the first time, I finially realized how useful pseudocoding can be. It was really
	helpful to think through the entire problem before diving in. While I've always tried to
	break things down into smaller problems first, pseudocoding really prevents you from
	skipping over vital parts in your coding.

- What are the tradeoffs of using arrays and hashes for this challenge?
	Arrays are often a bit easier to manipulate while hashes may be a bit more complex, they
	provide the very usuful function of assigning key-value pairs.

- What does a method return?
	That depends on the method. Implicitly, it returns the value of the last line of code.
	If this is a calculation, it might be an integer, if it is a string, it would be a string.
	If using 'puts' it will return 'nil'. You can control this by using the keyword "return".

- What kind of things can you pass into methods as arguments?
	Just about anything: strings, integers, booleans, variables, arrays, hashes, other methods
	etc.
	
- How can you pass information between methods?
	You can pass information between methods by passing another method through the current
	method as an argument.

- What concepts were solidified in this challenge, and what concepts are still confusing?
	I had struggled significantly with the concept of passing information bewtween methods
	without using global or class structure. I feel this challenge really brough things together
	for me and really increased my confidence and understanding of how methods can interact
	on the most basic level.

=end