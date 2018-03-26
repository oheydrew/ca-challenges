# *Problem 12*
# Write a method that takes two arrays of numbers, both of the same 
# length. 

# It will return an array in which each element is the result of the 
# corresponding elements in the two array arguments added together. 

# Make a call to your method, and store the result in a well-named variable.

# long solve
# def sum_corresponding(arr1, arr2)
#   # transpose assumes it's an array of arrays, and transposes the elements into 2 arrays
#   step1 = [arr1, arr2].transpose 
#   # map iterates through each element in an array, runs a block on it, and returns an array of results 
#   step2 = step1.map do |array_pair|
#     array_pair.reduce(:+)
#   end
# end

#tidy solve
def sum_corresponding(arr1, arr2)
  [arr1, arr2].transpose.map { |array_pair| array_pair.reduce(:+) }
end

print sum_corresponding([1,2,3],[4,5,6])
puts ''