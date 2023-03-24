=begin
GOAL: return a string degree representation of a float number

INPUT: float
OUTPUT: string with degree, fraction of 60 minutes, fraction of 60 seconds

RULES

DATA STRUCTURES

ALGORITHM
  kind of problem?

  helper methods?
    sprintf 

assign degrees to integer of float, 360 mod
=end

DEGREE = "\xC2\xB0"

def dms(num)
  degrees = num.to_i % 360
  minutes = ((num % 1 ) * 60).truncate(2).to_i
  seconds = ((((num % 1 ) * 60)  % 1 ) * 60).to_i
  sprintf('%d%s%02d\'%02d', degrees, DEGREE, minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
