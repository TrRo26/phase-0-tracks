
# ELECTRONIC GROCERY LIST

# Method to create a list that takes string
  # input: string of items separated by spaces (example: "carrots apples cereal pizza")
  # steps:
    # create empty hash
    # split string by spaces in an array
    # iterate through array making every element a key in the hash assign a beginning value of 1 for each key
    # print the list to the console using other defined method
  # output: hash

def create_list(string="")
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

def add_item(list, item)
  list[item] = 1
end

# Method to remove an item from the list
# input: hash and Item (key) to be removed 
# steps: identify input with element in hash & remove it
# output: updated hash

def remove_item(list, item)
  list.delete(item)
end

# Method to update the quantity of an item
# input: Hash and Item (key) to be updated
# steps: Identify input with element in hash and update quantity, keeping in mind addition or subtraction
# output: Updated hash

def update_quantity(list, item, qty)
  list[item] = qty
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

#create_list("carrots apples cereal pizza")
#add_item(create_list("carrots apples cereal pizza"), "eggs")
#remove_item(create_list("carrots apples cereal pizza"), "pizza")
#update_quantity(create_list("carrots apples cereal pizza"), "pizza", 6)

create_list("Lemonade Tomatoes Onions IceCream")
#update_quantity(create_list("Lemonade Tomatoes Onions IceCream"), "Lemonade", 2)
#update_quantity(create_list("Lemonade Tomatoes Onions IceCream"), "Tomatoes", 3)
#update_quantity(create_list("Lemonade Tomatoes Onions IceCream"), "IceCream", 4)
#remove_item(create_list("Lemonade Tomatoes Onions IceCream"), "Lemonade")

