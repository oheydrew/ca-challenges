# *Problem 8*
# Define a method that takes an array of numbers, and returns the total of 
# the addition of all the numbers in the array. 

# Store the result of a call to this method in a well-named variable.
def add_all_the_things(array)
  array.reduce { |sum, number| sum + number }
end

result = add_all_the_things [1,2,3,4,5,6,7,8,9,0]
puts result
