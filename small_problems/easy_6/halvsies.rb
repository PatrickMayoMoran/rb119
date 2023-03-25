
def halvsies(list)
  half = (list.size/2.0).ceil
  first_half = list.slice(0, half)
  second_half = list.slice(half, list.size - half)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
