arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

new = arr.map { |sub| sub.select { |num| num % 3 == 0 } }
p new
