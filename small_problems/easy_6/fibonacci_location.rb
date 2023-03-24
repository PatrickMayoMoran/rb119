=begin
GOAL: Find the index + 1 of the first number in the Fibonacci sequence that 
has the same number of digits as the provided integer argument

INPUT: Integer (representing number of digits)
OUTPUT: Integer (representing index of matching number)

RULES
  Explicit
  
  Implicit
    Not using 0 indexing - 1 indexing

ALGORITHM
  Kind of problem?
    generate sequence

  Helper methods?
    gen_Fibonacci -> generate the fibonacci sequence
    digits.length for number of decimal places

CODE
=end

def find_fibonacci_index_by_length(digits)
end

p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
# p find_fibonacci_index_by_length(100) #== 476
# p find_fibonacci_index_by_length(1000) #== 4782
# p find_fibonacci_index_by_length(10000) #== 47847
