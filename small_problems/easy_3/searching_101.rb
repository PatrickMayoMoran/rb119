# PROBLEM
# GOAL: solicit 5 numbers from a user and store them in an array
# Then, solicit a 6th number and report whether it is in the array
#
# INPUT: 6 strings that are numbers
# OUTPUT: 1 line result printed to screen
#
# EXAMPLES
#
# RULES
#   Explicit
#     Only integers allowed
#     Only positive numbers
#   Implicit
#
# DATA STRUCTURES
#   Array for storing numbers
#   numbers converted to integer so that
#   result array prints correctly when
#   interpolated
#
# ALGORITHM
#   What kind of problem is this?
#     Get and validate user input
#     Check for inclusion
#   What kind of helper methods can we use?
#     get_number method: solicits input and returns integer version
#     validate_number: checks if positive integer
#
#   5 times, get a number from user and store it in an array
#
#   Once, get a number from a user
#   Check if 6th number is in array
#   Report results
#
# CODE

def prompt(msg)
  puts ">> #{msg}"
end

def valid?(number)
  number.to_i.to_s == number &&
  number.to_i.positive?
end

def get_number(i=6)
  number = nil
  ord = get_ord(i)
  loop do
    prompt "Please enter the #{ord} number (positive integers only):"
    number = gets.chomp
    break if valid?(number)
    prompt "Not a positive integer - try again"
  end

  number.to_i
end

def get_ord(i)
  case i
    when 1 then "first"
    when 2 then "second"
    when 3 then "third"
    when 4 then "fourth"
    when 5 then "fifth"
    when 6 then "last"
  end
end

def number_search
  numbers = []

  1.upto(5) do |i|
    numbers << get_number(i)
  end

  last = get_number
  result = numbers.include?(last)

  if result
    prompt "The number #{last} appears in #{numbers}."
  else
    prompt "The number #{last} does not appear in #{numbers}."
  end
end

number_search
