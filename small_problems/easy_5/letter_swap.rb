=begin
GOAL: return a flipped version of the string where the first and last 
characters are swapped

INPUT: string of words
OUTPUT: string of words

RULES
  Explicit
    There will always be at least one word
    each word will be at least one letter

DATA STRUCTURES
  array for words

ALGORITHM
  kind of problem
    mapping - taking each string and making a transformation to it

  helper methods
    flip string
      # if string is one letter, return it
      # if it's two letters, return last character plus first
      # if 3, slice first, last, and return them swapped over middle

  # Split string into words
  # transform each word by flipping
  # join words with spaces and return
=end

def flip(string)
#   return string if string.size == 1
#   return string[-1] + string[0] if string.size == 2
#   string[-1] + string[1...-1] + string[0]
  string[0], string[-1] = string[-1], string[0]
  string
end

def swap(string)
  words = string.split
  words.map { |w| flip(w) }.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
