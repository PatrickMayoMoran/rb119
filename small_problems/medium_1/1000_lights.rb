# Problem
require 'pry'
# Goal: Given a number n, creating n lights that can be turned on and off
# From 1 to n, turn any lights to their opposit 
# Do this only for the multiples of whatever number we are on
# At the end, return which lights are on
#
# Input: positive integer, at least 1
# Out: array of integers
#
# Examples
# 
# Rules
#   Explicit
#     All lights start off
#     every iteration we change the state of some switches
#   Implicit
#     no negative numbers, not 0, only positive greater than 1
#     every iteration changes at least one switch
#     Turning all the switches is the first teration of "1"
#     the state of on and off is not given, we can make that we whatever we want
#
#
# Data Structures
#   Array for our switches
#
# Algorithm
#   create an array of size n with switches in off position
#     0 is off state, 1 is on state
#   From 1 to n, iterate through switches and change the state of every switch
#     that is a multiple of iteration number
#       initialize iteration number at 1
#       if iteration number <= n
#         if switch index + 1 is a multiple of iteration number, change state
#         increment iteration number
#   initializing an empty results array
#   iterate through all switches and adding the position of on switches to our
#     results array
#   Return our results array
#
#   HELPER METHODS
#   on_switches(array)
#    initialize an empty array
#    iterating through given array,
#     add posiiton of each on switch to result array
#   return result array
#
#   change(switch)
#     changing state to its opposite
#
# Code

def change(switch)
  switch == 0 ? 1 : 0
end

def on_switch(array)
  result = []
  array.each_with_index do |switch, index|
    result << (index + 1) if switch == 1
  end

  result
end

def brute_force!(switches, n)
  iteration = 1
  while iteration <= n
    switches.each_with_index do |switch, index|
      if (index + 1) % iteration == 0
        switches[index] = change(switch)
      end
    end
    iteration += 1
  end
end

def lights(n)
  switches = Array.new(n, 0)
  brute_force!(switches, n)
  on_switch(switches)
end

p lights(5) == [1, 4]
 p lights(10) == [1, 4, 9]
 p lights(2) == [1]
 p lights(3) == [1]
 p lights(4) == [1, 4]
 p lights(1) == [1]
