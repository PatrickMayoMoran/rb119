# return new array with same structure, but each value incremented by 1
arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
plus_one = arr.map do |hash|
              hash.map { |k, v| [k, v + 1] }.to_h
            end

p plus_one
