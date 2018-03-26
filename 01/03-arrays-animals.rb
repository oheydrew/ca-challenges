# 1. Create an array called four_letter_animals with the following animals (in this order):
#       * Calf
#       * Duck
#       * Elephant
#       * Goat
#       * Lamb
#       * Lion
#       * Mule
#       * Dog
four_letter_animals = ["Calf", "Duck", "Elephant", "Goat", "Lamb", "Lion" ,"Mule", "Dog"]

#   2. Add Puma to the end of the array
four_letter_animals.push("Puma")
puts "Add puma:"
print four_letter_animals
puts ""
puts ""
puts ""

#   3. Insert Joey after Goat and before Lamb
four_letter_animals.insert(four_letter_animals.index("Lamb"), "Joey")
puts "Insert Joey:"
puts four_letter_animals
puts ""
puts ""
puts ""

#   4. Delete Dog

four_letter_animals.delete("Dog")

puts "Delete dog:"
puts four_letter_animals
puts ""
puts ""
puts ""

#   5. Reverse the order of the array
four_letter_animals.reverse!
puts "Reverse the array"
print four_letter_animals
puts ""
puts ""
puts ""

#   6. Replace Elephant with Foal
puts "Replace Elephant with Foal"
search_animal = "Elephant"
replace_animal = "Foal"
search_animal_index = four_letter_animals.index(search_animal)

four_letter_animals[search_animal_index].replace(replace_animal)
print four_letter_animals
puts ""
puts ""
puts ""

#   7. Add Bear to the end of the array
puts "Add Bear to the end"
four_letter_animals.push("Bear")
print four_letter_animals
puts ""
puts ""
puts ""



