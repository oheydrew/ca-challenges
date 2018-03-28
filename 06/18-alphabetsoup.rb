# Have the function AlphabetSoup(str) take the str string parameter being 
# passed and return the string with the letters in alphabetical order (ie. 
# hello becomes ehllo). Assume numbers and punctuation symbols will not be 
# included in the string.

def alphabet_soup(string)
  string_lettersonly = string.delete("0-9!#$%&'()*+,-./:;<=>?@[]^_`{|}~")
  words = string_lettersonly.split(' ')
  reversed_words = []
  words.each do |word|
    letters = word.split('')
    reversed_words.push letters.sort.join
  end
  reversed_words.join(' ')
end

puts alphabet_soup('zx**y! c..ba!?')