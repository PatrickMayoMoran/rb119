# return an array with only the hashes where all numbers are even
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

only_even = arr.select do |hash|
              hash.values.flatten.all? { |num| num.even? }
            end

p only_even

only_even = arr.select do |hash|
              hash.values.all? do |sub|
                sub.all? do |num|
                  num.even?
                end
              end
            end

p only_even
