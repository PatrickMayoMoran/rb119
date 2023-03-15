# PROBLEM: 2 argument function
# GOAL: return true if any letters from string 1 can be rearranged to
# form string 2; otherwise false
#
# INPUT - two strings
# OUTPUT - boolean
#
# EXAMPLES
#
# RULES
#   Explicit: 
#     lower case only; no numbers
#     checking if first string can be rearranged to make 2nd; don't care about
#       the inverse
#
#   Implicit: 
#     one 'word'
#
# DATA STRUCTURE
#   potentially arrays of characters?
#
# ALGORITHM
#   What kind of problem is this?
#   What helper methods can we write?
#   
#   Create a bank of possible letters
#   create string we're trying to build
#   iterate through match string
#     check if bank includes that character
#     if so, remove character from bank and
#       append to build string
#     if bank does not include char, return false
#     end iteration
#   return value of built string against match string
#
# CODE
def scramble(str1, str2)
  bank = str1.chars
  match = ''

  str2.each_char do |c|
    match << c if bank.include?(c)
    
  end

  match == str2

end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false

