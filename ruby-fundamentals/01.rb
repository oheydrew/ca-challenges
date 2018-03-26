# *Problem 1*
# Define 4 methods. 

# The first takes a string, and then returns the string + “ will 
# be”, 

# the second takes a string, and returns the string + “ won’t be”, 

# the third takes a string and returns the string + “ impeached.” 

# and the fourth is called trump_predictor. 

# trump_predictor takes a string, but then you must use the previous functions 
# to get from this method call trump_predictor(“Trump”) to whatever outcome you 
# think is more likely, but using only the previously defined functions. 

# Store the output of trump_predictor in a well named variable. (For 
# example, if you think he won’t be impeached, only call the methods that matter,
# so the output string will be “Trump won’t be impeached.”.) (edited)

def will_be string
  string + ' will be'
end

def wont_be string
  string + ' won\'t be'
end

def impeached string
  string + ' impeached.'
end

def trump_predictor string
  impeached(wont_be(string))
end

trump_is_corrupt = trump_predictor('Trump')

puts "#{trump_is_corrupt} But he bloody well should be."
