def multiple_max?(arr)
  arr.count(arr.max) > 1
end

def ascending?(a)
  a.each.with_index.all? do |el, i|
    break true if i >= (a.size - 1)
    el < a[(i + 1)]
  end
end

def spiral(arr)
  return false if multiple_max?(arr)

  first =  arr[..arr.index(arr.max)]
  second = arr[ (arr.index(arr.max) + 1)..].reverse

  [first, second].all? { |a| ascending?(a) }
end

p spiral([1,2,4,3,2,1]) == true
p spiral([1,2,4,6,4,2,1]) == true
p spiral([0,3,5,4,3,2,1]) == true
p spiral([0,3,5,5,4,3,2,1]) == false
p spiral([1,2,4,6,4,2,4]) == false
p spiral([1,5,4,6,4,2,1]) == false
