# PROBLEM: write a method, takes two arguments - string and integer and prints
# the string as many times as the integer indicates
#
# GOAL: print a string to the screen as many times as integer given
#
# INPUT: string and an integer
# OUTPUT: no return value, output to the screen
#
# EXAMPLES
#
# RULES
#   Explicit
#     print string as many times as number
#   Implicit
#     each string should go on a new line
#
# DATA STRUCTURES
# ALGORITHM
#   n times, print string to screen
#
# CODE

def repeat(string, integer)
  integer.times do 
    puts string
  end
end

repeat('Hello', 3)

def loop_repeat(string, integer)
  counter = 0
  while counter <= integer
    puts string
    counter += 1
  end
end

def upto_repeat(string, integer)
  1.upto(integer) do
    puts string
  end
end

loop_repeat('Goodbye', 3)
upto_repeat('FolkLuhr', 5)
