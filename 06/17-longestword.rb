# Return the length of the longest word in the provided sentence.
# Your response should be a number.

# Here’s a starting point:

# function findLongestWord(str) {
# …………
# }

# findLongestWord(“Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
# sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
# ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
# ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
# velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
# cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
# laborum.“);

def longest_word(string)
  string_stripped = string.delete(',.')
  words = string_stripped.split(' ')

  words.sort_by!(&:length)
  words[-1]
end

# thanks franky
def longest_word_one_line(string)
  string.delete(',.').split(' ').sort_by!(&:length)[-1]
end

string = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

puts longest_word(string)
puts longest_word_one_line(string)