# PROBLEM: write a method that can rotate the last n digits of a
# number
# GOAL: given two numbers, rotate the last n digits of the first number
#
# INPUT: 2 integers
# OUTPUT: 1 integer, with rotation
#
# EXAMPLES
#
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917
#
# RULES
#   Explicit
#     n will always be positive
#   Implicit
#     n will always be equal to or less than the size of integer
#
# DATA STRUCTURES
#   array to hold string representation of digits
#
# ALGORITHM
#   initialize a rotated number to the array of string characters
#   add together the unrotated slice and the rotated slice
#     rotated slice: 73542, 3
#     [-3..-1]
#     unrotated slice: [0...-3]
#   convert added together slices to integer
#
# CODE
def rotate_array(array)
  return [] if array.empty? # added line to address empty array
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, spaces)
  number_string = number.to_s.chars
  rotated = number_string[0...-spaces] + rotate_array(number_string[-spaces..-1])
  rotated.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
