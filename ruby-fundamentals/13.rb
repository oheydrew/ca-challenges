# *Problem 13*
# Write a method that takes a number that represents Fahrenheit, and returns
# a number equivalent to it’s value in Celsius.

# Write a second method that takes an array of numbers in Fahrenheit, and
# that returns that an array with the numbers in celsius using your first
# function to make the calculation.

# In this instance, try to do this without forming a temporary array. (Hint:
# use a variation on the .each loop.)

def faren_to_cels(farenheit)
  (farenheit.to_f - 32.0) * 5/9
end

def faren_to_cels_array(array)
  array.map { |farenheit_temp| faren_to_cels(farenheit_temp).round(2) }
end

print faren_to_cels_array([72, 43, 110])