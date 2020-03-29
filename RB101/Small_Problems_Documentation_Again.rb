#Class and Instance Methods
#File::path(Class Method): Returns the string representation of the path
#File#path(Instance Method): Returns the pathname used to create file as a string. Does not normalize the name.
puts File.path('bin') #class Methods are called on the class, while instance methods are called on object.
f = File.new('my-file.txt')
puts f.path #calls the instance method File#path since we're calling it on an object of the File class, namely f.

#Optional Arguments Redux
require 'date'

puts Date.new               #=>
puts Date.new(2016)         #=>
puts Date.new(2016, 5)      #=>
puts Date.new(2016, 5, 13)  #=>

#Default Arguments in the Middle
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
#=> [4, 5, 6, nil]

#Mandatory Blocks
#Multiple Signatures
#Keyword Arguments
#Parent Class
#Included Modules
#Down the Rabbit Hole