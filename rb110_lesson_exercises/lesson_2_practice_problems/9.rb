# return new array with sub arrays ordered accordingly in descending order
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
new = arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end

p new
