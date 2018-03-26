*Terminal*
*One: Terminal —*
Using only terminal, navigate your file system to:
   1. Create a file structure that matches your family tree e.g. a root folder with 2 grandparents, 2 parent directories in each with child folders within those
   2. Create a folder called students. Inside the folder, create a few student text files 'jane.txt', etc
   3. Rename one of the student files to include full names ('jane doe.txt') - note what happens if you try to use a space. How can you get around this?
   4. Delete one student
*Two: Running Ruby —*
   1. Open IRB from your command line by running `irb`
   2. Try some basic math (1+1 *enter*)
   3. Quit IRB by sending the `exit` command
*Three: Running Ruby from a file —*
   1. Use terminal to create a new file (e.g. `touch my-cool-app.rb`)
   2. Open the file in your code editor (e.g. `atom my-cool-app.rb`)
   3. Write the same Ruby code (1+1) and save + close the file.
   4. Run the code! We can do this with the `ruby` command. (e.g. `ruby my-cool-app.rb`)
   5. The code runs, but nothing is returned on the screen. Add `puts` to the start of your code and try running the code again! (e.g. `puts 1+1`)
   6. Experiment with some basic ruby!
*Extras*
*One: Man —*
   1. Google some interesting commands
   2. Use the ‘man’ command to read about the command you have found
   3. Experiment with this command, and its flags
*Two: Help —*
   1. Repeat the above process, but use the —help flag to get info on the command


*Strings and Numbers*
*One:*
In IRB calculate —
   1. How many hours are in a year.
   2. How many minutes are in a decade?
   3. How many seconds old are you?
*Two:*
What do you think happens when you combine the following floats and integers?
Is the result a float or an integer?
Try computing these in irb —
   1. 3.0 / 2
   2. 3 / 2.0
   3. 4 ** 2.0
   4. 4.1 % 2
Why is 4.1 % 2 => 0.099. Look up in the ruby docs or google modulo
*Three:*
put "Hello world!" onto the screen 
Make a new variable called 'name', set it's value to your name (as a string)
*Beast Mode*
   1. Use interpolation to put your name on the screen
   2. Make a new variable called 'siblings', set it's value to the number of siblings you have (integer) Use code to put your number of siblings on the screen. Use interpolation to pretty it up, E.g.: “Total Siblings: 3” Use code to increase your number of siblings by one.
   3. Use interpolation again to put your new number of siblings on the screen

    01-beastmode.rb     

*Extras*
1. Describe in words the following code:
   - this_var = 0
   - this_string = "a string"
   - x = 5.5
   - badly_named = x * 7
   - fergus = “christmas tree”
   - nigel = “one “ + “ “two “ + “three.”
   - beer = fergus
2. Take the calculations from earlier, and store them in variables. That is, as you do the mathematics, store each line of the calculation in a variable, and use this on the next line to calculate the next step. (edited)