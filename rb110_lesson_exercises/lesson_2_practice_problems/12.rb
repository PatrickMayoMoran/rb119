# without using to_h, write a method that returns a hash where the keys are
# the first value in each sub array and the values are the second value
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
def make_hash(arr)
  arr.each_with_object({}) do |sub, hash|
    hash[sub[0]] = sub[1]
  end
end

puts make_hash(arr)
