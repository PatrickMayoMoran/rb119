=begin
GOAL: Implemenet bubble sort to return a sorted array

INPUT: array
OUTPUT: same array, sorted

RULES
  start at the beginning and compare two items at a time
  if 2nd is greater than first, swap
  go through entire array
  only when you go through every pair without swapping are you done!

DATA STRUCTURES

ALGORITHM
  swapped as a flag whether or not a swap has happened
    initialized to true
    then, while true, bubble
      flag assigned to false
      iterate through array with index
        break if index > array.size - 2
        first is our el at index
        second is our el at index + 1
        if first is greater than 2nd
          set swap to true
          swap first and 2nd in array
        end

CODE
=end

def bubble_sort!(array)
  swap_happened = true
  while swap_happened
    swap_happened = false
  end

  array
end

array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
