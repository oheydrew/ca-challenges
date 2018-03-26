# *Problem 10*
# Write a method that takes one argument, a number, and that returns true 
# if the number is divisible by three, and false otherwise. 

# Write another method that takes an array (of numbers) as an argument. This
# method will return two arrays, in one array (an array of arrays), the first
# array containing the numbers that are divisible by 3, and the other of the
# rest of the numbers. use the first function to achieve this. 

# For example, if you pass the second number [9, 4, 3, 5, 30, 2, 8] it
# would return [[9, 3, 30],[4, 5, 2, 8]].

def divisible_by_3(number)
  (number % 3).zero?
end

# def sort_divisibles(number_ary)
#   divisibles_ary = number_ary.clone
#   number_ary.delete_if { |number| divisible_by_3(number) }
#   result = [divisibles_ary-number_ary, number_ary]
# end

def sort_divisibles(divisibles_ary)
  remainder_ary = divisibles_ary.clone
  divisibles_ary.select! { |number| divisible_by_3(number) }
  result = [divisibles_ary, remainder_ary-divisibles_ary]
end

print sort_divisibles([9, 5, 2, 12])