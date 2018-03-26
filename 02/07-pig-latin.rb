require 'pry'

# 1. Implement methods that perform all of the basic arithmetic functions.
# 2. Write function that translates a text to Pig Latin and back. English is 
#   translated to Pig Latin by taking the first letter of every word, moving it 
#   to the end of the word and adding ‘ay’. “The quick brown fox” becomes “Hetay 
#   uickqay rownbay oxfay”.

def pig_word_convert(vanilla_word)
  pig_word = vanilla_word.split('')
  pig_word.push(pig_word.shift)
  pig_word.push('ay')
  pig_word.join
end

def pig_latin(vanilla_phrase)
  pig_phrase = vanilla_phrase.split(' ')
  pig_phrase.map! do |vanilla_word|
    pig_word_convert(vanilla_word) + ' '
  end
  pig_phrase.join
end

def vanilla_word_convert(pig_word)
  vanilla_word = pig_word.split('')
  vanilla_word.pop(2)
  vanilla_word.unshift(vanilla_word.pop)
  vanilla_word.join
end

def vanilla(pig_latin_phrase)
  vanilla_phrase = pig_latin_phrase.split(' ')
  vanilla_phrase.map! do |pig_word|
    vanilla_word_convert(pig_word) + ' '
  end
  vanilla_phrase.join
end

def scroll_text(string)
  string.each_char do |char|
    print char
    sleep(0.01)
  end
  puts '', ''
end

print 'PIG LATIN CONVERTER! Say somethin\': ' 
original_string = gets.strip
new_pig_latin = pig_latin(original_string)
scroll_text('~*~*~*~*~ WHOOOAAARRRRGGGHHHHHH MAGIC PIG LATIN!!!!! ~*~*~*~*~')
print new_pig_latin
puts ''

print 'Wanna put it back?' 
answer = gets.strip
case answer
when 'y' || 'yes'
  scroll_text('~*~*~*~*~ PHEW!!!!! BACK TO ENGLISH!! ~*~*~*~*~')
  print vanilla(new_pig_latin)
  puts ''
else
  puts pig_latin('your loss!')
end
