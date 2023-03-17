=begin
A pangram is a sentence that contains every single letter of the alphabet at 
least once. For example, the sentence "The quick brown fox jumps over the lazy 
dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, 
False if not. Ignore numbers and punctuation

GOAL: return true if given string is a pangram; otherwise false

INPUT: string
OUTPUT: boolean

RULES
  Explicit
    case is irrelevant
    pangram has every letter of the alphabet at least once

  Implicit

DATA STRUCTURES
Array/Range of letters of alphabet
array of characters in string
hash of letters and their frequency

ALGORITHM
  What kind of problem is this?
    count problem - each letters frequency
    selection problem - what letters appear


  What helper methods could I use?
    select
    all?

 # lowercase string, strip punctuation/spaces/aka anything that's not a letter
  
 #  make alphabet array, lowercase
 #  make str an array and remove non letters
  # maybe \w
  # create an array from string 
  # remove duplicates from array
  # save de duped result to local variable
  sort uniq letters
  compare output array with alphabet array - test for equality

CODE

=end

def pangram?(str)
  # ('a'..'z').all? { |l| str.downcase.include?(l) }

  str = str.downcase
  alphabet = ('a'..'z').to_a
  uniq_letters = str.chars.reject { |c| !alphabet.include?(c) }.uniq.sort
  uniq_letters == alphabet
end

p pangram?("The quick brown fox jumps over the lazy dog.") #== true

p pangram?("This is not a pangram.") #== false

