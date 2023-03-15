=begin
Feedback that i often give:
- Think of the interview as a presentation of your process; you want to make
it transparent what you're thinking and why, and also package it in a way
that is easy for them to understand and follow. While thinking, talk through
your solution process. Once you've settled on something, state it clearly,
and then type it out. Bite-sized ideas are great. Say a sentence or two about
 each line of algorithm or code that you type, before you type. Then type in
silence to give you and the interviewer a moment of silence to process.
- When testing as you code, Always communicate what you *expect* the code to do
*before* running the code. This demonstrates that you are in control of the
code
- Test as often as possible for each unique bit of code; err on the side of
testing too much
=end

# An array of integers is a SPIRAL if the integers increase to a single max
# value, and then decreases down from there. Write a method that returns
# true if an array is a spiral, else return false.

=begin
GOAL: Return a boolean that represents whether the given array is a "spiral" or "mountain" 

INPUT: array of integers
OUTPUT: boolean 

RULES
  Explicit
    single max value ; everything before rises ; everything after decreases
  
  Implicit
    all integers are 0 or greater
    no negative

algorithm 
  What kind of problem is this?
    -Scan problem: scanning along and checking conditions, returning false if conditions are ever false

  What helper methods could I use?
    getting the max value 
    counting the max value 

    # Getting a count of the max value
    # Return false if count is greater than 1

    previous = -1
    current = nil 
    iterate through every element of the array 
      current = num 
      if num is the max 
        previous = max 
        next 
      end 

      if index of my current elemtn is less than the max index AND current greater than previous 
          previous = current
          next
      if current element index >  max  index AND current is less than previous
          previous = current
          next
      else 
        return False
      end

end iteration 

 return true 

CODE 

=end
def spiral(array)
  max = array.max
  return false if array.count(max) > 1

  previous = -1
  current = nil

  array.each_with_index do |num,i|
    current = num
    if num == max
      previous = max
      next
    end


    if i < array.index(max) && current > previous
      previous = current
      next
    elsif i > array.index(max) && current < previous
      previous = current
      next
    else
      return false
    end

  end

  return true
end

p spiral([1,2,4,3,2,1]) == true
p spiral([1,2,4,6,4,2,1]) == true
p spiral([0,3,5,4,3,2,1]) == true
p spiral([0,3,5,5,4,3,2,1]) == false
p spiral([1,2,4,6,4,2,4]) == false
p spiral([1,5,4,6,4,2,1]) == false

=begin
algo and code have to match
test frequently, including parts of a conditional
comment out parts of your algo as you code them, this will help you not skip a part of your algo
Very cool generalization part of your algo process! I'm stealing it

=end
