=begin 
GOAL: return the next highest number formed by digits
of given number; or -1 if no next number exists
INPUT: integer
OUTPUT: integer; specifically positive or -1

RULES
Explicit 
return -1 if no next bigger number
must use same digits AND be same size
Implicit 
no worry about non integer or negative inputs 

DATA STRUCTURES 
array of the digits 
ALGORITHM
What kind of problem is this?
sorting problem - sort numbers to find "next"
permutation problem - given X digits, what are all the numbers? 


What helper methods could I make?
to_i(array)
convert an array of integers into the integer of all those numbers joined

break our number into its digits
We get an array of arrays - each array is a different combo of digits
initialize options array to be empty
[1,2,3,4]
[1,2,3,4]
[1,2,4,3]
[1,3,2,4]
[1,3,4,2]
[1,4,2,3]
[1,4,3,2]
[2,...]

iterate over digits array 
now = array.first
array[i+1..-1].each |el|
now = 


map - convert arrays into integers
sort those by size; filter out ones less than given integer
find next element
find_max(num)
split num to digits 
sort descending
convert to Integer
return that integer 
end
iterate from given number to max number 


CODE 

=end 
def get_max(num)
  to_i(num.digits.sort {|a,b| b <=> a})
end

def to_i(array)
  array.map {|i| i.to_s}.join.to_i
end

def next_bigger_num(num)
  max = get_max(num)
  return -1 if max == num

  (num+1).upto(max) do |n|
    return n if n.digits.sort == num.digits.sort
  end

  return -1
end
# def next_bigger_num(num)
# #   digits = num.digits
# #   options = digits.permutation(digits.size).to_a
# #   
# #   options.map! {|a| to_i(a) }.sort!.select! {|n| n>num}
# # 
# #   return -1 if options.empty?
# #   options.first
# # end
#
p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
