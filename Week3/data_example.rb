require('pry-byebug')
# we start with a data type of array of numbers between 1 and 10
new_array = [7, 1, 4, 3, 2, 9, 8, 10, 5, 6];
# numbers are not sorted

# function that sorts numbers
# function sorts numbers from lowest to highest into a new array, then returns it

def sort_array_numbers_from_lowest_to_highest(array)
    return array if array.size == 0
    sorted_array = []
    while(array.size > 0)
        next_smallest_number = array.min
        sorted_array.push(next_smallest_number)
        array.delete(next_smallest_number)
    end
    return sorted_array
end

new_array = sort_array_numbers_from_lowest_to_highest(new_array)
p new_array
    
    



















# # function that searches for data
# # function below looks for a specific number and states if it is there or not

# def is_number_in_array(number, array)
#     for each in array
#         if number == each
#             return true
#         end
#     end
#     return false
# end
# # function running in new_array, displayed on console
# p is_number_in_array(2, new_array)
# p is_number_in_array(111, new_array)