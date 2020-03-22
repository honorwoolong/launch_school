#Unpredictable Weather (Part 1)
sun = ['visible', 'hidden'].sample
puts "The sun is so bright!" if sun == 'visible'
p sun

#Unpredictable Weather (Part 2)
sun = ['visible', 'hidden'].sample
puts "The clouds are blocking the sun!" unless sun == 'visible'
p sun

#Unpredictable Weather (Part 3)
sun = ['visible', 'hidden'].sample
puts "The sun is so bright!" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'
p sun

#True or False
boolean = [true, false].sample
boolean ? puts("I'm true!") : puts("I'm false!") #<condition> ? <result if true> : <result if false>
#When placing #puts within the appropriate clause, you may have run into an error.
#equal to the statement below
boolean = [true, false].sample
if boolean
  puts "I'm true!"
else
  puts "I'm false"
end

#Truthy Number
number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end
#answer
=> My favorite number is 7
#In Ruby, every expression evaluates to true when used in a condition.

#Stoplight (Part 1)
stoplight = ['green', 'yellow', 'red'].sample
case stoplight
when 'green' # when also can be used as "when <condition>" 
  puts "Go!"
when 'yellow'
  puts "Slow down!"
when 'red'
  puts "Stop!"
end

#Stoplight (Part 2)
stoplight = ['green', 'yellow', 'red'].sample
if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

#Sleep Alert
status = ['awake', 'tired'].sample
if status == 'awake'
  sleep_alert = "Be productive!" 
else 
  sleep_alert = "Go to sleep!"
end
puts sleep_alert
#Launch School Solution
alert = if status == 'awake'
          'Be productive!'
        else
          'Go to sleep!'
        end

puts alert

#Cool Numbers
number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

#Stoplight (Part 3)
stoplight = ['green', 'yellow', 'red'].sample
case stoplight
when 'green' then puts 'Go!' #when combining them on a sigle line for when, use then
when 'yellow' then puts 'Slow down' 
else puts 'Stop!' #then isn't used for else, only when
end