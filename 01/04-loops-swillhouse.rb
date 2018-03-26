# this first bit: defines a method (We're not up to them yet, but I got sick of 
# having the same piece of code over and over again. I'm basically creating 
# the method "scroll_print"- it is not a default ruby method)

# makes a method called "scroll_print" that takes 'string' as an argument
def scroll_print string 
    string.each_char do |character| # each_char is a string method to iterate characters in strings
        print character # prints one character
        sleep 0.01 # and waits for 0.01 of a second
    end
    puts "" # then adds a new line at the end for flavour
    puts ""
    sleep 1
end

greeting = """

          ==================================================
          ==                                              ==
          ==  **** WELCOME TO THE SALTY SWILLHOUSE *****  ==
          ==                                              ==
          ==  * WHERE IT'S ALL CHEAP, BUT NOTHIN'S FREE * ==
          ==                                              ==
          ==================================================

"""
scroll_print greeting # this is the first time I use the 'scroll_print' method I made above, to print the greeting

# store my menu here for easy repeating
menu = """1) Order a drink
2) Cancel a drink
3) View your order
p) Pay your bill
x) Exit
h) Help
"""

drinks = [] # my main drinks order array, initialized here so the program can refer to it
 
while true
    scroll_print menu
    menu_selection = gets.strip
    
    case menu_selection
        when '1'
            puts ""
            scroll_print "** the bartender doesn't even notice you as you walk in **"
            scroll_print "** they look up as you cough, and give you a dirty look **"
            scroll_print "'Whaddya want?'"
            drink_selection = ""
            
            while drink_selection != "x"
                drink_selection = gets.strip.downcase
                case drink_selection
                    when "x"
                        scroll_print "'That's just great. Got any more ways you can waste my time?"

                    else # sassy_response time! weew
                        drinks.push drink_selection if drink_selection != "x"

                            sassy_responses = [
                                "EVERYONE orders #{drinks.last}. Peh...", 
                                "If I have to order one more #{drinks.last}, I swear I'll...",
                                "** mumblegrumble ** #{drinks.last} ** grumblemumble... **",
                                "#{drinks.last.upcase}??!! OH FOR CRYIN' OUT.... *sigh* fine, fine...",
                                "** mockingly ** 'OOH! I'M SO INTERESTING! I DRINK #{drinks.last.upcase}!!' **grumbles**"
                                ]

                        scroll_print "'#{drink_selection}, huh.'"
                        scroll_print "** the bartender groans, and grumbles **"
                        puts ""
                        # Here's where it picks a random sassy response
                        scroll_print "'#{sassy_responses[rand(sassy_responses.length)]}'"
                        puts ""
                        scroll_print "'So, y'all have ordered here... #{drinks.join(", ")}'"
                        scroll_print "'Ya want anythin' else? Type 'x', when you're done.'"

                end
            end

        when '2'
            if drinks.length == 0
                scroll_print "'pal, you ain't ordered nothin'. Stop wasting my time! I got customers to serve!'"

            else 
                scroll_print "** the bartender eyes you with an exasperated look **"
                scroll_print "'You wanna WHAT? CANCEL? Oh for...'" 
                scroll_print "** sigh ** '....fine.'"
                
                drink_selection = ""

                while drink_selection != "x"
                    scroll_print "Whaddya wanna cancel? ( type exactly: #{drinks.join(", ")} )"
                    drink_selection = gets.strip.downcase
                    if drink_selection == "x"
                        scroll_print "'That's just great. Any other ways you can waste my time?"
                    elsif drinks.include?(drink_selection)
                        drinks.each do |drink|
                            if drink = drink_selection
                                drinks.delete(drink)
                                scroll_print "'You don't want #{drink}? Fine. Saves me time. Takin' it off the list.'" 
                            end
                        end
                        drink_selection = "x"
                    else drinks.include?(!drink_selection)
                        scroll_print "'Mate- you ain't ordered that. Stop messin' around."
                    end
                end
            end

        when "3"
            if drinks.length == 0
                scroll_print "'pal, you ain't ordered nothin'. Stop wasting my time! I got customers to serve!'"
            else
                scroll_print "'Here's what you're gettin'. #{drinks.join(", ")}"
            end

        when "p"
            scroll_print "'About bloody time.'"
            scroll_print "'Ok...' *sigh* 'Ya bought: #{drinks.join(", ")}. Hope it didn't kill ya.'"
            scroll_print "'Ya bought #{drinks.size} drinks. $5 bucks a drink. Them's the rules...'" 
            scroll_print "'* they tally it up *'"
            payment_total = drinks.size * 5
            scroll_print "'that comes to $#{payment_total}'"
            scroll_print "'pay up.'"
            sleep 1
            puts ""
            sleep 1
            puts ""
            scroll_print "'then, get out."
            break

        when "x"
            scroll_print "...Leavin'? ....Fine. Don't let the door hit ya on the way out."
            break

        when "h"
            puts menu
            puts ""
            
        else
            scroll_print "What the heck are you on about? Enter a valid option, jeez..."
            puts ""
    end
end

# **** DUNDUNDUNNNNN ***Beast Mode*** ****

# Give the user a list of options: 1. Add dish, 2. Delete dish, 3. View selected
# drinks, p. Pay, and x. Exit.
# In your Ruby file, run a while loop that presents these options, gets input
# from a user (as a number), and then acts on this input. For example, if the user
# selects 1, you will add a dish, and so you will take further input from the user
# and add that into an array. Do a similar job for the rest of the options with the
# appropriate inputs from the user, or the appropriate output
# *Extra Beast
# Take the code from the problem above, and refactor it using a switch statement