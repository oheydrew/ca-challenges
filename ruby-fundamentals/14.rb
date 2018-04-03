# *Problem 14*
# You are the dodgy head of a construction company. You jam in the most
# number of apartments per floor that regulations will allow. 

# You write one method that calculates the area of floorspace from two
# arguments, the length and width. 

# You write a second method that takes an area, and calculates the number 
# of apartments you can fit within a given floorspace (you can fit one 
# apartment in every 28 square meters, and this should be rounded down - 
# you can’t have a partial apartment). 

# You write a third method that takes a number of floors, a length, and 
# a width as arguments, and that returns a hash of the total number of 
# apartments you can jam into the building, and the total money made 
# (assuming each apartment is worth $120,000) using the previous two methods.

def floorspace(length, width)
  length * width
end

def max_apartments(available_space)
  (available_space % 28).to_i
end

def show_me_the_money(length, width, floors)
  per_floor = max_apartments(floorspace(length, width))
  total_floors = per_floor * floors
  total_floors * 120000
end

puts show_me_the_money(100, 50, 10)