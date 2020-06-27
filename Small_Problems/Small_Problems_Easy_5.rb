# ASCII String Value
def ascii_value(string)
  value_sum = 0
  string.chars.each do |char|
    value_sum += char.ord
  end
  value_sum
end
# Launch School Solution
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end
##
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# After Midnight (Part 1)
def time_transformer(time)
  if time < 10
    "0" + time.to_s
  else
    time.to_s
  end
end

def time_of_day(mins)
  after_minutes = mins % 1440
  hh, mm = after_minutes.divmod(60)
  "#{time_transformer(hh)}:#{time_transformer(mm)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

#After Midnight (Part 2)
HOURS_A_DAY = 24
MINS_A_HOUR = 60
MINS_A_DAY = HOURS_A_DAY * MINS_A_HOUR

def after_midnight(time_string)
  hh = time_string[0..1].to_i
  mm = time_string[3..4].to_i
  total_minutes = hh * MINS_A_HOUR + mm
  total_minutes % MINS_A_DAY
end

def before_midnight(time_string)
  hh = time_string[0..1].to_i
  mm = time_string[3..4].to_i
  total_minutes = hh * MINS_A_HOUR + mm
  before_minutes = MINS_A_DAY - total_minutes
  before_minutes % MINS_A_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

# Letter Swap
def swap(string)
  words = string.split(' ')
  words.map! do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# Clean up the words
def cleanup(string)
  string.gsub(/[^a-z]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
