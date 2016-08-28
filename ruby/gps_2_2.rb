
# ELECTRONIC GROCERY LIST

# Method to create a list that takes string
  # input: string of items separated by spaces (example: "carrots apples cereal pizza")
  # steps:
    # create empty hash
    # split string by spaces in an array
    # iterate through array making every element a key in the hash assign a beginning value of 1 for each key
    # print the list to the console using other defined method
  # output: hash

# ***** HINT: methods can accept other methods as arguments 
# *****       methods can be called within other methods


def create_list(string)
  list = {}
  string = string.split 

  string.each { |item| 
    list[item] = 1
    }

  printhash(list)

 list
end

# Method to add an item to a list
  # input: hash 'list', item name (as string) and optional quantity (as int)
  # steps: add item and quantity to hash
  # output: hash

def add_item(list, item, qty)
  list[item] = qty
  list
end

# Method to remove an item from the list
# input: hash and Item (key) to be removed 
# steps: identify input with element in hash & remove it
# output: updated hash

def remove_item(list, item)
  list.delete(item)
  list
end

# Method to update the quantity of an item
# input: Hash and Item (key) to be updated
# steps: Identify input with element in hash and update quantity, keeping in mind addition or subtraction
# output: Updated hash

def update_quantity(list, item, qty)
  list[item] = qty
  list
end

# Method to print a list and make it look pretty
# input: Hash
# steps: Iterate through hash adding labels and provide formatting
# output: nil

def printhash(hash)
  puts "-----------------------"
  hash.each { |item, qty| 
    puts "#{item},\n  qty: #{qty}"
    puts ""
    }
  puts "-----------------------"
end

# DRIVER CODE

#Create a new list
list = create_list("Carrots Cereal Donuts")

# Add the following items to your list
  # Lemonade, qty: 2
  # Tomatoes, qty: 3
  # Onions, qty: 1
  # Ice Cream, qty: 4
add_item(list, "Lemonade", 2)
#printhash(list)
add_item(list, "Tomatoes", 3)
#printhash(list)
add_item(list, "Onions", 1)
#printhash(list)
add_item(list, "Ice Cream", 4)
#printhash(list)

# Remove the Lemonade from your list
remove_item(list, "Lemonade")
#printhash(list)

# Update the Ice Cream quantity to 1
update_quantity(list, "Ice Cream", 1)
#printhash(list)

# Print out your list (Is this readable and nice looking)?
printhash(list)




