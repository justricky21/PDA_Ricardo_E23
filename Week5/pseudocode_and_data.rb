require('pry')

# write a function that
# - takes in two integers
# - add them together
# - divide them by two (2)
# - show the result

def add_two_things_then_halve(int1, int2)
    to_halve = int1 + int2
    p (to_halve / 2)
end

# ask users name and print it out

def get_users_name
    p 'Hello, what is your name?'
    name = gets.chomp
    p "Great! Hello #{name}!"
    return name
end

def save_users_name
    name = get_users_name
    open("name.txt","w") do |file|
        file.puts name;
    end
    p 'Your name has been saved to name.txt!'
end

save_users_name