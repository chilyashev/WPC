# Remove all non-letters
def strip(word)
  word.tr('^a-zA-Z', '')
end

# Gets the first alphabet character in a string
# Used for words surrounded with quotes
# Returns the character and its position
def get_first_char(word)
  index = 0
  ret = word[0]
  word.split(//).each { |char|
    index+=1
    if char.match(/[a-zA-Z]/)
      ret = char
      break
    end
  }
  return ret, index
end

# Takes a word and shuffles its letters keeping the first and the last in their place
# Parameters:
#   word - The word to shuffle
#
# Returns the shuffled word
def shuffle(word)
  # We can't shuffle "the" or "or" or other similar to those
  if strip(word).length <= 3
    return word
  end

  # Get the first letter and its position
  first_char, first_char_ind = get_first_char(word)
  # Get the last letter and its position
  last_char, last_char_ind = get_first_char(word.reverse)

  last_char_ind = (word.length - 1) - word.reverse.index(last_char)
  rest = word[first_char_ind, last_char_ind-2]

  shuffled = rest.split(//).shuffle.join

  word[0, first_char_ind] + shuffled + word[last_char_ind-1, word.length]
end

# Does the shuffle
def do_the_shuffle(input)
  ret = ''
  # Split in words
  input.split(/\s/).collect { |word|
    if word.match(/\d/) # I don't care about shuffling numbers
      ret += word + ' '
    else
      # Do the actual shuffle
      ret += shuffle(word) + ' '
    end
  }
  ret # Return the shuffled input
end
