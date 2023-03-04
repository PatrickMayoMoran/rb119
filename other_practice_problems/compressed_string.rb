# Problem: given a string, return a new string with any consecutive characters
# compressed to a single character
#
# GOAL - return a new string of same length or shorter than original by
# removing consecutive characters
#
# INPUT: string
# OUTPUT: new string
#
# EXAMPLES
# compress('bbbbbbbb') == 'b'
# compress("Whaaaat a woooooonnnnnddderfullll woooorrrrrllldd") == "What a wonderful world"
#
# RULES
#   explicit:
#   `consecutive characters removed
#
# DATA STRUCTURE
#   array of characters
#
# ALGORITHM
#   initialize an empty string
#   initialize a string of last character with nil
#   iterate through each character of the string
#     compare current character to last character
#       if they're different, add character to string
#       if they're the same, don't add
#       reassign last character to current character
#   end iteration
#
#   return empty string

def compress(string)
  compressed = ''
  last_char = nil
  string.each_char do |char|
    compressed << char if char != last_char
    last_char = char
  end

  compressed
end

p compress('bbbbbbbb') == 'b'
p compress("Whaaaat a woooooonnnnnddderfullll woooorrrrrllldd") == "What a wonderful world"
p compress('Q') == 'Q'
p compress('') == ''
