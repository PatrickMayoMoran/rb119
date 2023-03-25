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

initialize fibonacci 
set first to 1
set second to 1
append first and second to fibonacci array
while digits of the last number are less than the argument
  new is equal to first plus second
  new gets aded to fibonacci array
  second is equal to first
  first is assigned new 
end

array size

CODE
=end

def find_fibonacci_index_by_length(digits)
  sequence = []
  first = 1
  second = 1
  sequence << first << second
  while sequence.last.digits.size < digits
    new = first + second
    sequence << new
    second = first
    first = new
  end
  sequence.size
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
