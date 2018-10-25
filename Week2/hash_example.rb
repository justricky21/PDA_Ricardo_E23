require('pry-byebug')
# This file serves to serve the week 2 requirements of my PDA
# Standard method of construction
new_hash = {}
# Calling hash as an object
new_hash2 = Hash.new()
# Setting up an Hash
new_hash3 = {
    one: 1,
    string_one: '1',
    ten: 10,
    string_ten: 'ten',
    true: true
}

# Using a hash in a function
def return_keys_in_hash_if_values_are_integers(hash)
    array_to_return = []
    hash.each_pair do |key, value|
        array_to_return.push(key) if value.is_a? Integer
    end
    return array_to_return
end

# Usage of said function, as run on the console.
p return_keys_in_hash_if_values_are_integers(new_hash3)
