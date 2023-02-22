# return a new array with the same sub arrays ordered by odd number only
arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

odd_sort = arr.sort_by do |sub|
  sub.select do |num|
    num.odd?
  end
end

p odd_sort
