
=begin
GOAL: return true or false if the year is or is not a leap year

INPUT integer year
OUTPUT boolean

RULES
  Explicit
    divisible by 100 and 400 is a leap year
    divisible by 100 and 4 not a leap year
    divisible by 4 (not 100 or 400) is a leap year

  Implicit

DATA STRUCTURES

ALGORITHM
  Kind of problem?

  Helper methods?
  # return true if year is divisible by 100 and 400
  return false if year is divisible by 100, but not 400
  return true if year is divisible by 4
  return false otherwise

CODE

=end

def leap_year?(year)
  if year < 1752
    year % 4 == 0
  end

  return true if (year % 100 == 0) && (year % 400 == 0)
  return false if year % 100 == 0
  return true if year % 4 == 0
  return false
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
