# PROBLEM
# GOAL: given a string of input, count the number of characters excluding spaces
# and report result
#
# INPUT: string from user
# OUTPUT: integer interpolated into message
#
# EXAMPLES
#
# RULES
#   Explicit
#     Spaces don't count
#   Implicit
#     Non-alpha numeric do!
#
# DATA STRUCTURES
#
# ALGORTIHM
#
#   What kind of problem is this?
#     increasing an iterator as we go through
#     count with regex for not space?
#     delete space and then get size?
#     split into word array and then reduce size
#   helper methods
#
#   Prompt user
#   save input
#   split input and then reduce by string size
#   report count
#
#
# CODE
# OPTION 1 - split into words and then use reduce with size
def character_count
  print "Please enter a word or multiple words: "
  string = gets.chomp
  count = string.split.reduce(0) { |m, w| m + w.size }

  puts "There are #{count} character in \"#{string}\""

end

# OPTION 2: delete spaces, report string size
def character_count2
  print "Please enter a word or multiple words: "
  string = gets.chomp
  count =  string.delete(' ').size
  puts "There are #{count} character in \"#{string}\""
end

character_count2
