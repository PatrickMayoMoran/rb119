=begin
GOAL: return a string that says what century the year is in

INPUT Integer representing a year after 0
OUTPUT: string

RULES
  Explicit
    strings should have correct ending:
      1 -> 1st
      2 -> 2nd
      3 -> 3rd
      4 -> 4th
      ....
      21 -> 21st
      etc.

  Implicit
    all years are after 0

DATA STRUCTURES
  array of integers for checking year and building string?

ALGORITHM
  Kind of problem?

  helper methods
   #  ending -> takes in single integer and returns the string ending for
      that century
    #   if 1,       'st'
    #   if 2,       'nd'
    #   if 3,       'rd'
    #   else,       'th'

  # save as digits - Split integer into digits and reverse order
  # create century specifier
  # if size of digits is less than 2, operate differently
    ??? must be 1st century
  # save last two digits as specific year
  # save everything up to last two digits as century
  # save last digit of century as century specifier
  # reassign century to integer version

  # if both of specific year don't equal 0, increase century specifier by 1
  # if both of specific year don't equal 0, increase century by 1
  # get ending for string century with specifier
  # join century with ending and return

CODE
=end

# # def ending(n)
#   case n
#     when 1 then 'st'
#     when 2 then 'nd'
#     when 3 then 'rd'
#     else        'th'
#   end
# end
# 
# def century(year)
#   digits = year.digits.reverse
#   specifier = nil
#   if digits.size <=2
#     return '1st'
#   end
# 
#   year = digits.last(2)
#   century = digits[0...-2]
# 
#   return century.join + 'th' if [11,12,13].include?(century.join.to_i)
#   specifier = century.last
#   specifier += 1 unless year.all? {|i| i == 0}
#   century = century.join.to_i
#   century += 1 unless year.all? {|i| i == 0 }
# 
#   ending = ending(specifier)
#   century.to_s + ending
# end

# PROVIDED SOLUTION
def century(year)
  return '1st' if year < 100
  last_two_digits = year % 100
  century = year / 100
  century += 1 if last_two_digits.between?(1,99)
  century.to_s + century_suffix(century.to_s)
end

def century_suffix(century)
  if century.end_with?('11','12','13')
    return 'th'
  elsif century.end_with?('1')
    return 'st'
  elsif century.end_with?('2')
    return 'nd'
  elsif century.end_with?('3')
    return 'rd'
  else
    return 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
