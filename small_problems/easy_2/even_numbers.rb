# Print all numbers, 1 to 99 inclusive, to the console, on their own line

# OPTION 1: upto with block
# 1.upto(99) { |n| puts n if n.even? }

# OPTION 2: iteration over an inclusive range
# (1..99).each { |n| puts n if n.even? }
#
# OPTION 3: step and substraction
# 1.step(99,2) { |i| puts (i - 1) unless i == 1 }

# OPTION 4: explicit while loop
num = 1
while num <= 99
  puts num if num.even?
  num += 1
end

# OPTION 5: other user submitted solution, only iterates over needed numbers
# by calling select on range
puts (1..99).select(&:even?)
