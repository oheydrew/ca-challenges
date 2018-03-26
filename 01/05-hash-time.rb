require 'date'
require 'zodiac'
require 'pry'

# *Beast++*
# Create a Ruby application that requests the name of a classmate, and displays
#   their birthday and your birthday. Use at least one Hash and one Array in 
#   the solution.
# 1. Display the number of days between your birthdays.
# 2. Create a method to display their star sign based on their birthday.
# 3. Someone's probably already coded this date to star sign functionality - 
#   replace your method with a gem

classmates = []

menu = '''1) Input classmate details
2) Check classmate details (Now with STARSIGNS, OOOH!)
3) 💘 🗓 💘 🗓  ~~~ DATEMATCH!!!! ~~~ 🗓 💘 🗓 💘
4) Get me the heck out of here

'''

puts 'Hi, and welcome to datematch! Where you and your classmates match dates!'
puts ''

loop do
  puts menu
  main_menu = gets.strip.to_i

  case main_menu
  when 1
    2.times do |loop_num|
      puts "First, let\'s get some details from 💘 💘 CLASSMATE #{loop_num + 1}! 💘 💘"
      puts ''

      menu_input = 'n'
      classmate_input = []
      while classmates.length < 2 do
        case menu_input
        when 'n'
          classmate_input = []
          print 'Please, enter your FIRST Name: '
          classmate_input.push gets.strip.downcase.to_s
          puts ''
          print 'Please, enter your LAST Name: '
          classmate_input.push gets.strip.downcase.to_s
          puts ''

          while classmate_input[2] == nil
            birthday = []
            print  'Please, enter your birthday (DD MM YYYY): '
            birthday = gets.strip.split(' ')
            birthday = birthday.map { |string| string = string.to_i }

            if birthday.count == 3

              if (birthday[0].digits.count <= 2 && birthday[0] <= 31) &&
                (birthday[1].digits.count <= 2 && birthday[1] <= 12) &&
                birthday[2].digits.count == 4
              then
                classmate_input.push Time.new(birthday[2], birthday[1], birthday[0])
              else
                puts 'Invalid birthday formatting (Try DD MM YYYY)'
                puts ''
                classmate_input = classmate_input.first(2)
              end

            else
              puts 'Invalid birthday formatting (Try DD MM YYYY)'
              puts ''
              classmate_input = classmate_input.first(2)
            end
          end

          puts "You entered '#{classmate_input.join ', '}'. Is this correct? (y/n):"
          menu_input = gets.strip.to_s
          puts ''

        when 'y'
          classmates[loop_num] = {
                                   first_name: classmate_input[0],
                                   last_name: classmate_input[1],
                                   birthday: classmate_input[2]
                                   }

          puts "#{classmates[loop_num][:first_name].capitalize} #{classmates[loop_num][:last_name].capitalize}, #{classmates[loop_num][:birthday]} stored."
          puts ''
          break

        else
          puts 'Invalid command. 💔 💔'
          puts ''
          break
        
        end
      end
    end

  when 2
    # Check classmate details
    if classmates.length == 2
      classmates.each_with_index do |classmate, index|
        puts "Classmate #{index + 1}: "
        puts "First Name: #{classmate[:first_name].capitalize}"
        puts "First Name: #{classmate[:last_name].capitalize}"
        puts "Birthday: #{classmate[:birthday].day}, #{classmate[:birthday].month} #{classmate[:birthday].year}"
        puts "Starsign: #{classmate[:birthday].zodiac_sign}"
        puts ''
      end
    else
      puts "No classmate data entered!"
      puts ''

    end

  when 3
    # Date match
    if classmates[0][:birthday] < classmates[1][:birthday]
      older_classmate = classmates[0]
      younger_classmate = classmates[1]
    else
      older_classmate = classmates[1]
      younger_classmate = classmates[0]
    end
    
    older_classmate_age = Time.now - older_classmate[:birthday]
    older_classmate_age = older_classmate_age / 60 / 60 / 24 / 365
    younger_classmate_age = Time.now - younger_classmate[:birthday]
    younger_classmate_age =  younger_classmate_age / 60 / 60 / 24 / 365
    age_difference = older_classmate_age - younger_classmate_age

    puts ''
    puts "Woohoo! #{older_classmate[:first_name].capitalize} is the oldest!"
    puts "They are #{older_classmate_age} years old!"
    puts ''
    puts "That means, #{younger_classmate[:first_name].capitalize} is younger"
    puts "They are #{younger_classmate_age} years old!"
    puts ''
    puts "The age difference is: #{age_difference} years! WOW WOO WOW"
    puts ''
    puts "YOU'VE BEEN....."
    puts "💘 🗓 💘 🗓  ~~~ DAAAAAAAAAAATEMATCHED!!!! ~~~ 🗓 💘 🗓 💘"
    puts ''


  when 4
    puts "Until next time!"
    puts ''
    break

  else
    puts 'Invalid command. 💔 💔'
    puts ''

  end

end



    
    



