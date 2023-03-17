# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.
=begin
GOAL: return the longest substring from the given string where every letter in the sequence comes later in the alphabet than the one before it 

input: lowercase string
OUTPUT: lowercase string 

RULES
  Explicit
    if multiple solutions; return the first one in the string 
    sequence defined by every letter coming later in the alphabet than one before 
    sequences can be one letter long 

  Implicit


DATA STRUCTURES
  range or array of all characters in alphabet 
  array of substrings 

ALGORITHM
  What kind of problem is this?
    generating all possible substrings 
    selection problem - only alphabetic 
    choosing - largest sub & one that appears first

  What helper methods could I use?
    get_substrings
    selection 
    is_alphabetic?

  
create array of all possible substrings 
# create an array of substrings 
# iterate from 0 to string.size - 1 for starting index of slice 
    # iterate from iterator to ending index of string for slice 
      #slice variable assigned to slice from starting to ending index 
      #add slice to array of substrings 

  #return that array of substrings 

# filter array down to only one with alphabetic sequences 
choose substring of largest size 
if there are multiple substrings sharing largest size, choose the one that appears first in the given string 

CODE

=end
def get_substrings(string)
  substrings = []
  (0...string.size).each do |i|
    (i...string.size).each do |ii|
      slice = string[i..ii]
      substrings << slice
    end
  end

  substrings
end

def longest(string)
  get_substrings(string)
end

p longest('asd') #== 'as'
# p longest('nab') == 'ab'
p longest('abcdeapbcdef') #==  'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') == 'fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'