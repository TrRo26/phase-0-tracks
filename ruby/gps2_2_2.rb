
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
  	p g_list
  	# output: hash of items and quantities
  	return g_list
end

wed_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name
def add_item(g_list, item)
	# add item to list
	g_list[item] = 1
	# output: updated hash list
	p g_list
	return g_list
end

add_item(wed_list, "chuck roast")

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
	p g_list
	return g_list
end

remove_item(wed_list, "apples")
remove_item(wed_list, "lettuce")

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
	p g_list
	return g_list
end
	
update_quantity(wed_list, "donuts", 5)
update_quantity(wed_list, "carrots", 15)

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

print_list(wed_list)


