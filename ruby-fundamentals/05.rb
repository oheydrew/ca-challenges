# *Problem 5*
# Define a method five_times which takes a number as an argument and returns 
# the value that results when the argument is multiplied by 5. 

# Define a method hund_times, which takes and argument and returns the result 
# of that argument being multiplied by 100. 

# Define a method div_seven which takes an argument and returns the result of 
# that argument divided by 7. 

# Define a method number_mangle which takes one argument and which uses only 
# those previously defined functions to multiply that argument by 5, 100, and 
# then divide by 7 - that is, number_mangle will contain no direct 
# calculations. Store that result in a variable.
def five_times(number)
  number * 5
end

def hund_times(number)
  number * 100
end

def div_seven(number)
  number / 7
end

def number_mangle(number)
  div_seven(hund_times(five_times(number)))
end

result = number_mangle(25)
puts result