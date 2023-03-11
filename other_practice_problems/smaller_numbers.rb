# Given an array of numbers, for each number find out how many numbers
# # in the array are smaller than it. When counting numbers, only count
# # unique values. That is, if a given number occurs multiple times in
# # the array, it should only be counted once.
# GOAL: creating a new array where every number is transformed into a count of how many other numbers are less than
#
# INPUT: array
# OUTPUT: new array
#
# RULES
#   Explicit
#     new array is the same length
#     only counting unique numbers
#
#   Implicit
#     1 number array is stil valid
#
# DATA STRUCTURES
#   Array
# ALGORITHM
#   What kind of problem is this?
#     Transformation - mapping a count
#     loop of counting
#   What helper methods could I write to make it easier?
#     
#   designate the number that I'm counting
#   create a counter
#   compare designated number against every number in original collection
#   iteration
#     when number is less than designated, increment counter
#   end iteration
#
#   add counter to result array
#   reset counter to 0
#
#   return result array
#
#   CODE
def less_than_count(number, array)
  array.select {|n| n < number}.uniq.count
end

def smaller_numbers_than_current(array)
  array.map { |n| less_than_count(n, array) }
end

# Examples:
#
p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]
#
# The tests above should print "true".
