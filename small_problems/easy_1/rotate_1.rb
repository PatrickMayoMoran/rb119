# PROBLEM: write a method that rotates an array by moving the first element
# to the end
#
# GOAL: given an array with at least one element, create a new array with
# the same contents as the original, except the first element from the 
# original should now be the last element
#
# BONUS - let's also handle an array with 0 elements
#
# INPUT: Array
# OUTPUT: new array
#
# EXAMPLES
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']
#
# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true
#
# RULES
#   Explicit
#     new array must be returned
#     original array must remain unmodified
#     cannot use rotate or rotate! in implementation
#
#   Implicit
#     elements could be of any type
#     may have 0, 1, or more elements
#
# DATA STRUCTURES: new array
#
# ALGORITHM
#   initialize a new array
#   iterate through given array, appending each element to new array
#   initialize new_last to be value of first array element popped off
#   append new last to new array
#   return a new array
#
# CODE
# def rotate_array(array)
#   rotated = []
#   return rotated if array.empty?
# 
#   array.each { |el| rotated << el }
#   new_last = rotated.shift
#   rotated << new_last
#   rotated
# end

# ALGORITHM PT 2
#   initialize new array to be clone of first array
#   remove first element and append to end
#
# def rotate_array(array)
#   rotated = array.clone
#   rotated << rotated.shift unless array.empty?
# 
#   rotated
# end

# ALGORITHM PT 3
# initialize an empty array
# iterate through given array with index
#   if index is 0, append first element
#   insert all other elements at size-1, unless index is 0
# end iteration
#
# return new arrary

def rotate_array(array)
  rotated = []
  array.each_with_index do |el, i|
    rotated << el if i == 0
    rotated.insert(rotated.size-1, el) unless i == 0
  end

  rotated
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
p rotate_array([]) == []

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
