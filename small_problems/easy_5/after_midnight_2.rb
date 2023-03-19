def get_hours_mins(time)
  hours, mins = time.split(':')
end

def after_midnight(time)
  hours, mins = get_hours_mins(time)
  hours = hours.to_i % 24
  minutes_after = hours * 60 + mins.to_i
end

def before_midnight(time)
  hours, mins = get_hours_mins(time)
  hours = hours.to_i % 24
  mins = mins.to_i
  minutes_before = 0
  minutes_before = 1440 - (hours * 60 + mins) unless hours + mins == 0
  minutes_before
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
