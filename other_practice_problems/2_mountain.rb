def multiple_max?(arr)
  arr.count(arr.max) > 1
end

def ascending?(a)
  a.each.with_index.all? do |el, i|
    break true if i >= (a.size - 1)
    el < a[(i + 1)]
  end
end

def mountain(arr)
  return false if multiple_max?(arr)

  first =  arr[..arr.index(arr.max)]
  second = arr[ (arr.index(arr.max) + 1)..].reverse

  [first, second].all? { |a| ascending?(a) }
end

=begin
A mountain is an array that:
- starts with any integer
- every integer after that is increasing until the peak
- has a single peak
- every value after the peak is decreasing

Please write a method, mountain, that returns true or false
based on whether or not the given array is a mountain.
=end

p mountain([1,2,4,3,2,1]) == true
p mountain([1,2,4,6,4,2,1]) == true
p mountain([0,3,5,4,3,2,1]) == true
p mountain([0,3,5,5,4,3,2,1]) == false
p mountain([1,2,4,6,4,2,4]) == false
p mountain([1,5,4,6,4,2,1]) == false
