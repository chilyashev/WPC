=begin
http://olimex.wordpress.com/2013/08/23/weekend-programming-challenge-issue-21-words-puzzle/
Challenge:
Write code which takes as input normal text and shuffles the letters inside the words to make text like this one above.
=end

require './shuffle'

puts 'Demo with predefined text: '
input = "According to a researcher (sic) at Cambridge University, it doesn't matter in what order the letters in a word are, the only important thing is that the first and last letter be at the right place. The rest can be a total mess and you can still read it without problem. This is because the human mind does not read every letter by itself but the word as a whole."
print 'Result: '
puts do_the_shuffle(input)


# Read the input
print 'Enter some text to shuffle: '
input = gets

puts "\nResult: "
print do_the_shuffle(input)