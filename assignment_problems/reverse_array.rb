def reverse(array)
  reversed = []
  1.upto(array.size) do |i|
    reversed << array[-i]
  end

  reversed
end

p reverse([1,2,3,4,5]) == [5,4,3,2,1]
p reverse([1]) == [1]
p reverse([]) == []
