puts "**** DUNDUNDUNNNNN ***Beast Mode*** ****"
puts ""
puts ""
puts ""

# Ask the user for three or more grocery items, store them in a list (array). 

puts "Welcome to THE BEAST OF GROCERIES."
puts ""
puts "Please enter 3 or more items (max. 10). Type 'SHOP' when done!"

groceries = []
puts "Please enter item #{groceries.length + 1}:"
grocery 
groceries.push(gets.strip)
puts "You selected '#{groceries.last}'. We'll send a BEAST to COLLECT THE HECK OUT OF IT."
puts ""

puts "Please enter item #{groceries.length + 1}:"
groceries.push(gets.strip)
puts "You selected '#{groceries.last}'. We'll send a BEAST to COLLECT THE HECK OUT OF IT."
puts ""

puts "Please enter item #{groceries.length + 1}:"
groceries.push(gets.strip)
puts "You selected '#{groceries.last}'. We'll send a BEAST to COLLECT THE HECK OUT OF IT."
puts ""

puts "Please enter item #{groceries.length + 1}:"
groceries.push(gets.strip)
puts "You selected '#{groceries.last}'. We'll send a BEAST to COLLECT THE HECK OUT OF IT."
puts ""

puts "Please enter item #{groceries.length + 1}:"
groceries.push(gets.strip)
puts "You selected '#{groceries.last}'. We'll send a BEAST to COLLECT THE HECK OUT OF IT."
puts ""

puts "Please enter item #{groceries.length + 1}:"
groceries.push(gets.strip)
puts "You selected '#{groceries.last}'. We'll send a BEAST to COLLECT THE HECK OUT OF IT."
puts ""

puts "Please enter item #{groceries.length + 1}:"
groceries.push(gets.strip)
puts "You selected '#{groceries.last}'. We'll send a BEAST to COLLECT THE HECK OUT OF IT."
puts ""

puts "Please enter item #{groceries.length + 1}:"
groceries.push(gets.strip)
puts "You selected '#{groceries.last}'. We'll send a BEAST to COLLECT THE HECK OUT OF IT."
puts ""

puts "Please enter item #{groceries.length + 1}:"
groceries.push(gets.strip)
puts "You selected '#{groceries.last}'. We'll send a BEAST to COLLECT THE HECK OUT OF IT."
puts ""

puts "Please enter item #{groceries.length + 1}:"
groceries.push(gets.strip)
puts "You selected '#{groceries.last}'. We'll send a BEAST to COLLECT THE HECK OUT OF IT."
puts ""

puts "That's it! You've entered the maximum of 10 items! We haven't any more BEASTS left. We'll list out your items."
puts ""
puts "Items collected:"
puts groceries


# It's OK to ask three times. Show the list to the user. Can’t remember how to use a specific 
# ruby feature/syntax? That’s normal! Google + Ruby docs :slightly_smiling_face:
# ** Finish the challenge before moving onto any bonus points **
#   * Bonus 1: Try using the `.length` method to tell the user how many items are in their list.
#   * Bonus 2: Sort the list alphabetically before showing it to the user
#   * Bonus 3: Are you using gets.chomp multiple times? A 3.times loop might tidy your code.
#   * Bonus 4: If the user tries to add 'Ice Cream', secretly replace it with 'Broccoli'
#   * Bonus 5: Ask the user for quantities too. You'll need to use a hash. Show a nice looking list back to the user.

