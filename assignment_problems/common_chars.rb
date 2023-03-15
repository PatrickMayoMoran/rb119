# GOAL: given an array of strings, return an array of letters shared by every string
# INPUT array of strings
# OUTPUT array of chars
#
# RULES
#   Implicit:
#     copies matter - if letter appears more than once, should be in result more
#       than once
#     no uppercase or non-numeric
#     nothing shared returns empty array
# DATA STRUCTURES - array for chars
#
# ALGORITHM
#   create all_string_chars empty array
#   create an intersection array
#   iterate through strings in array
#   assign result of string.chars intersection with block argument to intersection
#
#   This creates the intersection of letters in all strings
#
#   Now, to adjust for frequency
#   create count array
#   iterate through each letter of intersection
#     for each letter, iterate through array of strings
#     append count to count array
#     end string iteration
#   count times, append letter to result array
#   end letter iteration

def common_chars(array)
  intersection = array[0].chars
  array.each do |s|
    intersection = intersection.intersection(s.chars)
  end

  result = []
  intersection.each do |l|
    array.map {|s| s.count(l)}.min.times {|_| result << l}
  end

  result
end

p common_chars(["bella", "label", "roller"]) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(["hello", 'goodbye', 'booya', 'random']) == ['o']
p common_chars(['aabbaaaa', 'ccddddd', 'eeffeee', 'ggrrrr', 'yyzzzz']) == []
