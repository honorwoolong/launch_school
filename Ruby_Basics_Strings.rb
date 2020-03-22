#Create a String
empty_string = ""
p empty_string
#Launch School Solution
empty_string = String.new
p empty_string

#Quote Confusion
puts 'It\'s now 12 o\'clock.' #Single-quotes don't allow for escape sequences. There is one exception, however, which is the escaping of other single-quotes.
'Hello\nworld' # => Hello\nworld. The escape sequence (\n) will be displayed instead of interpreted.
puts "It's now 12 o'clock." 
%Q(It's now 12 o'clock.) #write a string without surrounding it with double- or single-quotes.
#%Q is an alternative to double-quoted strings. There's also an alternative for single-quoted strings: %q
puts %Q('hello' "world") #both single and double quote contained in the string

#Ignoring Case
name = 'Roger'

if name.downcase == 'RoGeR'.downcase
  puts true 
else
  puts false
end

if name.downcase == 'DAVE'.downcase
  puts true 
else
  puts false
end 
#Launch School Solution
name = 'Roger'
puts name.casecmp('RoGeR') == 0 #nil is returned if the two strings have incompatible encodings, or if other_str is not a string.
puts name.casecmp('DAVE') == 0
puts name.casecmp('DAVE') # => print 1 in this case. If the value of the calling string - name - is less than the provided argument - 'RoGeR' - then #casecmp will return -1. Similarly, if the provided argument is less than the calling string, #casecmp will return 1
#Case-insensitive version of String#<=>. Currently, case-insensitivity only works on characters A-Z/a-z, not all of Unicode.

#Dynamic String
name = 'Elizabeth'
#One of the advantages of using double-quotes is the ability to use string interpolation. 
puts "Hello, #{name}!" #the invocation of it with curly braces ({}) and prepending those curly braces with the pound sign (#).

#Combining Names
first_name = 'John'
last_name = 'Doe'
full_name = "#{first_name} #{last_name}"
puts full_name
#2nd way
full_name = first_name + " " + last_name
puts full_name
#3rd way
full_name = first_name << ' ' + last_name
puts full_name
#4th way
full_name = [first_name, last_name].join(' ')
puts full_name

#Tricky Formatting
state = 'tExAs'
state.capitalize!
puts state

#Goodbye, not Hello
greeting = 'Hello!'
greeting.replace 'Goodbye!'
puts greeting
#launch school solution
greeting = 'Hello!'
#gsub: Returns a copy of str with all occurrences of pattern substituted for the second argument.
greeting.gsub!('Hello', 'Goodbye')
puts greeting

#Print the Alphabet
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('')
#another way
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.chars

#Pluralize
words = 'car human elephant airplane'
arr = words.split
arr.each do |word| 
  puts word + "s"
end

#Are You There?
colors = 'blue pink yellow orange'
puts colors.include?('yellow')
puts colors.include?('purple')
#further expolration
colors = 'blue boredom yellow'
puts colors.include?('red')
# print true, because string contains red in the bo"red"om