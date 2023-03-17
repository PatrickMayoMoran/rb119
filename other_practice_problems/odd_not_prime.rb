# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.
=begin
GOAL: return the count of numbers that are NOT prime numbers, but that ARE odd 
between (and including) 1 and the number

INPUT: positive integer
OUTPUT: positive integer

RULES
  Explicit
    1 is not prime
    numbers are prime if they are only divisible by 1 and themselves

  Implicit

ALGORITHM
  What kind of problem?
    selection 

  What helper methods could I use?
    select
    prime?
      # return false if the number is 1
      # create a limit variable of half num's size
      # iterate from 2 to half numbers size
        # return false if the number is cleanly divisible by iterator

#      return true

# create a collection of all numbers from 1 to given number
# select only numbers that are odd AND not prime
# count numbers in that collection

CODE

=end

def prime?(num)
  return false if num == 1
  limit = num / 2
  (2..limit).each do |divisor|
    return false if num % divisor == 0
  end

  return true
end

def odd_not_prime(num)
  (1..num).to_a.select { |n| n.odd? && !(prime?(n)) }.size
end


p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20
