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


def is_alphabetic?(string)
  string.chars.sort == string.chars
end

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
  substrings = get_substrings(string)
  alphabetic_subs = substrings.select { |s| is_alphabetic?(s)}
  alphabetic_subs.max_by { |s| s.size }
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') ==  'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'

=begin
# input: string
  # output:string
    # where string is the longest alpabetical substring from input

# Observations:
  # if two substrings match, return the earlier one in the string
#

# Logic:
  # create a container for alphabetical substrings: []
  # create selector
  # iterate through the string with index
    # if current char.ord is greater than next char.ord store: alphabetical_substr << string[selector..current_index]
    # reassign selector to current_index + 1
    # proceed to next char
  # 
  # To select largest
    # get max size array.map { |e| e.size }.max => store return in variable max
    # select alphabetical substrings of that size: array.select { |e| e.size == max }[0] (RETURNS FIRST OCCURANCE IF MULTIPLES)
  #
#

def longest(string)
  alpha_bits = []
  loc = 0
  string.chars.each_with_index do |ltr, idx|

    if string[idx + 1] == nil
      alpha_bits << string[loc..idx]
      break
    end

    if ltr.ord > string[idx + 1].ord
      alpha_bits << string[loc..idx]
      loc = idx + 1
    end

  end
  max = alpha_bits.map { |e| e.size }.max
  alpha_bits.select { |e| e.size == max }[0]
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') #== 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'
=endt