require('pry-byebug')
# This file serves to serve the week 2 requirements of my PDA
# Standard method of construction
new_array = []
# Calling array as an object
new_array2 = Array.new()

# Setting up an Array
new_array3 = [1, "one", 10, "ten", true]

# Using an array in a function
def remove_element_from_array(array, element)
  for each in array
    if each == element
      array.delete(element)
    end
  end
  return nil
end

# Usage of said function, as run on the console.
p new_array3
remove_element_from_array(new_array3, 10)
p new_array3
