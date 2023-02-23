# PROBLEM: Given an array of positive integers, return a new, 2 element
# array with the two numbers that have the smallest difference between them
# INPUT: array of integers
# OUTPUT: new, two element array
# EXAMPLES
#closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
#closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
#closest_numbers([12, 7, 17]) == [12, 7]
# RULES
#   numbers should be in order found in given array
#   arrays won't be empty
#   no negative numbers
#   take the first two numbers that meet the condition - if a later pair
#     has the same difference, it does not supersede an earlier pair
# DATA STRUCTURE
#   Array - used for final result and for intermediate data because order 
#   matters
# ALGORITHM
#   Make an array of all possible pairs of numbers from the given array
#   Create an empty array for smallest difference
#   put first pair in the smallest difference array
#   Iterate through all array pairs
#     if pair's difference is less than smallest diff pair, that becomes
#       new smallest diff pair
#   return smallest diff array
#   HELPER METHOD
#   pairs
#     Make an array of all possible pairs of numbers from the given array
#     initialize empty pairs array
#     iterate through every number
#       for each number, iterate through all following numbers
#         add pair of number and each following number to pairs array
#     return pairs array
# CODE
def pairs(arr)
  pairs = []
  arr.each_with_index do |num, index|
    ending = arr.size - 1
    starting = index + 1
    if starting < arr.size
      for number in (starting..ending)
        pair = [num, arr[starting]]
        pairs << pair
        starting += 1
      end
    end
  end

  pairs
end

def closest_numbers(arr)
  pairs = pairs(arr)
  smallest = pairs.first
  pairs.each do |pair|
    current_diff = (pair[0] - pair[1]).abs
    smallest_diff = (smallest[0] - smallest[1]).abs
    smallest = pair if current_diff < smallest_diff
  end

  smallest
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
