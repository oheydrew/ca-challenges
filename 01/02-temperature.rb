# 1. Write a program that asks the user for input that requests the user to input a number 
# representing a temperature. If the number entered is above 30, reply to them “It’s too HOT!” 
# or similar. Give appropriate responses for the temperatures between 20 and 30, 10 and 20, 0 
# and 10, and below zero.

puts "Please input a temperature"
temperature = gets.strip.to_i

if temperature.between?(-100, 100) == false
    puts "Are you crazy?? That isn't a temperature. Try a number between -100 and 100."
elsif temperature > 30 
    puts "It's too dang hot!!!"
elsif temperature.between?(21, 30)
    puts "Perfect weather for a stroll."
elsif temperature.between?(11, 20)
    puts "Getting chilly- Might stay indoors..."
elsif temperature < 10
    puts "It's fricken' freezing!! I'm going home!"
end