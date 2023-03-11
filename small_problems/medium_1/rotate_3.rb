# PROBLEM: Given an integer, return the number that is its maximum
# rotated version
#
# GOAL: given an integer number, rotate it around each digit and return the 
# answer
#
# INPUT: Integer
# OUTPUT: Integer
#
# EXAMPLES
#   735291 -> 1st rotation
#             352917 -> 2nd
#   3         29175  -> 3rd
#   32        1759   -> 4th
#   321       597    -> 5th
#   3215      79     -> 6th
#   32157     9 -> nothing left to rotate
#   321579
# 
# RULES
#   First digit becomes our last;
#   new first digit gets saved;
#   repeat
#   Answer must be an integer
#   leading zeroes get dropped
#
# ALGORITHM
#   What kind of problem is this?
#   What below is a helper method to write first?
#     my_rotate
#       move the first digit of a number to the end
#       return the number
#
#   Rotate the number
#   Bank the first digit in our max rotated array
#   rotate the remainder; repeat
#
#   Loop 
#     rotate by 1
#     remove first number
#     stop if number is 1 digit
#
# CODE
def my_rotate(number)
  number << number.shift
end

def max_rotation(number)
  max_rotated = []
  number = number.digits.reverse

  while !number.empty?
    bank = my_rotate(number).shift
    max_rotated << bank
  end

  max_rotated.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
