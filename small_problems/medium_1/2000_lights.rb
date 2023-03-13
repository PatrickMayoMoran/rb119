# PROBLEM: Given a number, return an array of all the lights that are still
# on after going through and flipping lights on and off based on their position
#
# GOAL: create X number of lights, and turn them on and off X times and then
# return which lights are on
#
# INPUT integer
#
# OUTPUT array of integers
#
# EXAMPLES
#
# RULES
#   must go through and flip lights on and off; cannot use square method
#
# DATA STRUCTURES
#   hash for our lights
#
# ALGORITHM
#   What kind of problem is this?
#
#   What helper methods can we write?
#   flip_switch -> change switch's state
#   create_lights -> creates our light data structure
#
#   create given number of lights, all off
#   from 1 up to and including the number
#   flip switch of every light that is a multiple of our iteration number
#
#   end iteration
#
#   return an array of lights that are on
#
# CODE
def create_lights(number)
  lights = {}
  (1..number).each {|n| lights[n] = "off" }

  lights
end

def flip_switch(state)
  state == "off" ? "on" : "off"
end

def flip_multiple(multiple, limit, hash)
  index = multiple
  while index <= limit
    hash[index] = flip_switch(hash[index])
    index += multiple
  end
end

def on_lights(number)
  lights = create_lights(number)
 
  (1..number).each do |n|
    flip_multiple(n, number, lights)
  end

  lights.keys.select { |k| lights[k] == "on" }
end

# def on_lights(num)
#   on_lights = []
#   (1..num).each do |n|
#     break if n**2 > num
#     on_lights << n**2
#   end
# 
#   on_lights
# end

p on_lights(5) == [1, 4]
p on_lights(10) == [1, 4, 9]
