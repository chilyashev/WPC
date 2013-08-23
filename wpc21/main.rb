# http://olimex.wordpress.com/2013/08/23/weekend-programming-challenge-issue-21-words-puzzle/
# Challenge:
# Write code which takes as input normal text and shuffles the letters inside the words to make text like this one above.


# Takes a word and shuffles its letters keeping the first and the last in their place
# Parameters:
# word - The word to shuffle
#
# Returns the shuffled word
def shuffle(word)
  if word.length <= 3
    return word
  end
  first_letter = word[0]
  last_letter = word[-1]
  rest = word[1,word.length-1]
  shuffle = rest.split(//).shuffle.join()
  first_letter + shuffle + last_letter
end

# Read the input
puts 'Enter the text to shuffle: '
a = gets

# Split the read string by words and shuffle each one
print 'Result: '
a.scan(/\w+/).collect{ |word|
  print shuffle(word) + ' '
}