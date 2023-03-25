def reverse!(list)
  return list if list.empty?
  ii = list.size - 1
  (0...(list.size/2)).each do |i|
    list[i], list[ii - i] = list[ii - i], list[i]
  end
  list
end

def reverse!(list)
  l_i = 0
  r_i = -1

  while l_i < list.size/2
    list[l_i], list[r_i] = list[r_i], list[l_i]
    l_i += 1
    r_i -= 1
  end
  list
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
p reverse!(list) == [] # true
list == [] # true
