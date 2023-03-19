=begin
GOAL: return the 24-hour time of day when given a positive or negative integer
  indicating the number of minutes before/after midnight

INPUT: positive or negative integer
OUTPUT: string formatted as "hh:mm"

RULES

DATA STRUCTURES
  array for divmod of number of hours and number of minutes

ALGORITHM
  Kind of problem?
    conversion - turn one thing into another and format it properly

  Helper methods?
    adjust hours for when they're more than 24
    format the string

  # save the hour and minutes as the divmod of the given number and 60
  # modify hours to be remainder of dividing by 24 amd positive
  format numbers to have padded zero if one digit
    # convert num to string
    if string size is 1, prepend 0
    # return string
  return each number together in string with colon separator

CODE
=end
def format_time(num)
  time = num.to_s
  time.prepend('0') if time.size == 1
  time
end

def time_of_day(time)
  hours, minutes = time.divmod(60)
  hours = (hours % 24).abs
  # hours = format_time(hours)
  # minutes = format_time(minutes)
  # hours + ':' + minutes
  sprintf('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
