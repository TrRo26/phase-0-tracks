
# Method to create a list that takes string
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create empty hash
  # Split string by spaces in an array
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
  #return list

end

# Method to add an item to a list
# input: hash 'list', item name (as string) and optional quantity (as int)
# steps: add item and quantity to hash
# output: hash

def add_item(list, item)
  list[item] = 1 # gets.chomp
end
  
=begin
puts "What do you want to add to your list?"
input = gets.chomp
add_item(list, input)
=end

# Method to remove an item from the list
# input: Hash and Item (key) to be removed 
# steps: Identify input with element in hash & remove it
# output: updated hash

# Method to update the quantity of an item
# input: Hash and Item (key) to be updated
# steps: Identify input with element in hash and update quantity, keeping in mind addition or subtraction
# output: Updated hash

# Method to print a list and make it look pretty
# input: Hash
# steps: Iterate through hash adding labels and provide formatting
# output: nil

def printhash(list)
  list.each{|item, qty| puts "#{item}, qty: #{qty}"}
end

=begin
Lemonade, qty: 2
Tomatoes, qty: 3
Onions, qty: 1
Ice Cream, qty: 4
=end


create_list("carrots apples cereal pizza")

add_item(, "eggs")


