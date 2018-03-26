require 'pry'

# *Define a Cat/Dog class*
# 1. Each cat/dog should have a name
# 2. Implement a speak method to say meow/woof.
# 3. Add each cat/dog’s name to the speak method (Pixie says meow).
# 4. Give the cat/dog an age
# 5. We've got name and age, let's give each cat/dog a location too. Test your 
  #   location works by printing the cat/dog's location.
  #   doggo = Dog.new('Rover', 2, 'Brisbane')
  #   puts doggo.location # -> Brisbane (You might get a no method error, 
  #   remember attr_accessor?)
# 6.  Create a walk method (or similar for a cat). This should say "I have been 
#     for X walks.". Every time you call walk, the number should increase by one 
#     E.g:
#       doggo = Dog.new(...)
#       doggo.walk # -> I have been for 1 walks today
#       doggo.walk # -> I have been for 2 walks today
# 7.  Update the walk method so it only increases the walk count. Create a new 
#     method to display walks. E.g.: doggo = Dog.new(...)
#       doggo.walk # -> Shouldn't print anything on screen
#       doggo.walk # -> Shouldn't print anything on screen
#       doggo.display_walks # -> I have been for 2 walks today
# 8. Update the walk method so you can chain walk commands. E.g.: 
#       doggo = Dog.new(...)
#       doggo.walk.walk.display_walks # -> I have been for 2 walks today

# *Beast Mode*
# 1.  Improve the walk method. Accept a location and a distance. e.g. 
#     doggo.walk('Brisbane', 20)
# 2.  Update your display_walks method to show all of the walk details.
# 3.  Implement a total_distance method to calculate the total distance of all 
#     the walks.
# 4.  Track the time each walk is created. Update display_walks to show it back 
#     to your user in a readable format.
# 5.  Research ruby gems. Use a gem to geocode a location and store it's latitude 
#     + longitude. E.g. "Brisbane" stores -27.44888,153.00531

# *Beast++*
# 1.  Define a continent class. Give this class a couple of attributes, one of 
#     which should be countries. This will be an attribute that is an array of 
#     country objects. 
#     Define a country class, state, and a city class. 
#     Make some objects relating to each class, and assign them to the relevant 
#     classes array attribute. Eg, cities would be in an array relating to the 
#     ‘cities’ attribute of a state or country object. 
# 2.  Think about then define a bank class. Have the bank perform the typical 
#     bank operations and contain the relevant data. Extend this by defining a 
#     customer class, and have this class interact with your bank class.

class Cat
  attr_accessor(:pet_name, :breed, :color, :sex, :pronoun, :home_location, :birthday, :age)

  def initialize(cat)
    @pet_name = cat[:pet_name]
    @breed = cat[:breed]
    @color = cat[:color]
    @sex = cat[:sex]
    @pronoun = cat[:pronoun]
    @home_location = cat[:home_location]
    @current_location = @home_location
    @walks = []
    @birthday = cat[:birthday]
    @age = (Time.now.year - @birthday.year)
    @number_of_walks = 0

  end

  def yell
    puts "#{@pet_name} yells! " + ('*YELL* ' * 3)
  end 

  def walk(walk_destination, distance)
    walk_origin = @current_location
    walk_destination = walk_destination
    @walks.push({ origin: walk_origin, destination: walk_destination, distance: distance })

    puts "You try to walk #{@pet_name} on a leash. #{@pronoun.capitalize} just kinda sits there."
    puts "#{@pronoun.capitalize} eventually mews, grumbles, and walks from #{walk_origin}"
    puts "to #{walk_destination}. That was a #{distance} metre walk!"

    @number_of_walks += 1
    @current_location = walk_destination
    return self
  end

  def display_walk
    total_walk_distance = 0
    @walks.each do |walk|
      puts "#{pet_name} has walked from #{walk[:origin]}, to #{walk[:destination]}."
      puts "#{@pronoun.capitalize} walked #{@walk[:distance]} this time!"
      total_walk_distance += @walk[:distance]
    end
    puts "#{pet_name} has been on a total of #{@number_of_walks} walks, and walked a"
    puts "whole #{total_walk_distance}!"
  end
end

breq = Cat.new( pet_name: 'Breq', 
                breed: 'Devon Rex',
                color: 'Beige', 
                sex: 'Female',
                pronoun: 'she',
                home_location: 'Cook St',
                birthday: Time.new(2013,06,15)
              )

puts breq.birthday
breq.yell

puts breq.age


breq.walk('the front yard', 20).walk('the back porch', 5).walk('the backyard', 10).display_walk

# breq.walk.walk.display_walks
