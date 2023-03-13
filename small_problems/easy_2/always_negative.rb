# PROBLEM
# GOAL: return the negative version of a given number OR the number itself
# if it is already 0 or negative
#
# INPUT: Integer
# OUTPUT: Integer
#
# EXAMPLE
#
# RULES
#   Explicit
#     returning a negative version
#     0 or negative numbers get returned as is
#   Implicit
#     Only dealing with integers
#
# DATA STRUCTURES
#
# ALGORITHM
#   Helper Methods?
#   What kind of problem?
#     Reassignment/ternary operator
#
#   See if number is less than or equal to 0
#   -- if so, return the number
#   -- otherwsie, return negative number
#
# CODE
def negative(number)
  number <= 0 ? number : -number
end

# Other user solution - uses positive?
def other_negative(number)
  number.positive? ? number * -1 : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
