
# Add a method that takes three items as parameters and returns an array of those items
def build_array(item1, item2, item3)
	array = []
	array += [item1] + [item2] + [item3]
	p array
end

# add a method that takes an array and an item as parameters, and returns the array with the item added
def add_to_array(array, item)
	array += [item]
	p array
end

# ------------------

# 1. Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.
my_array = []
p my_array

# 2. Add five items to your array. Print the array.
my_array += ["true", true, 4, "This is an item in my array", "Bob"]
p my_array

# 3. Delete the item at index 2. Print the array.
my_array.delete_at(2)
p my_array

# 4. Insert a new item at index 2. Print the array.
my_array.insert(2, "New array item")
p my_array

# 5. Remove the first item of the array without having to refer to its index. Print the array.
my_array.delete("true")
p my_array

# 6. Ask the array whether it includes a certain item. Print the result of this method call 
#    (labeled so it prints as more than just an isolated boolean value without any context.)
answer = my_array.include?("fatso")
p "Status of 'fatso' included in 'my_array': #{answer}"

# 7. Initialize another array that already has a few items in it.
new_array = ["hi", "hello", "salutations"]

# 8. Add the two arrays together and store them in a new variable. Print the new array.
two_arrays_together = my_array + new_array
p two_arrays_together

# ------------------

# Test that method build_array works
build_array("does this", "work", 5)

# Test that method add_to_array works
add_to_array(my_array, "added!")
add_to_array(new_array, "added to this array")
add_to_array(two_arrays_together, "and to this one")








