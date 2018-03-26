# *Problem 11*
# Your shop sells bespoke solid wood right-angled-triangular tables (because
# you are a hipster). The client is charged for the volume of the table.

# Write a function that takes two arguments, and works out the area of the
# triangle.

# Write a second function that takes two arguments, one representing the
# area of the top of the table, and the other representing the height
# (from the ground) and returns the volume.

# Write a third method that performs no calculations, but takes three
# arguments and uses the previous two methods to return the volume of
# the table.

# Store that volume in a well-named variable.

def table_top_area(side_a, side_b)
  (side_a * side_b)/2
end

def table_volume(table_top_area, height)
  table_top_area * height
end 

def table_volume_full(side_a, side_b, height)
  table_volume(table_top_area(side_a, side_b), height) 
end

print table_volume_full(5, 10, 20).to_s, "....you hipster."
puts ''