#First Car
car =  { type: "sedan", color: "blue", mileage: 80_000 }
p car

#Adding the Year
car =  { type: "sedan", color: "blue", mileage: 80_000 }
car[:year] = 2003
p car
#This means we're selecting the key :year if it exists. If it doesn't exist, however, we need to provide a value, like 2003, so that it will be created.

#Broken Odometer
car = { type: 'sedan', color: 'blue', mileage: 80_000, year: 2003 }
car.delete(:mileage)
p car

#What Color?
car = { type: 'sedan', color: 'blue', year: 2003 }
puts car[:color]

#Labeled Numbers
numbers = { high: 100, medium: 50, low: 10 }
numbers.each do |k,v|
  puts "A #{k} number is #{v}."
end

#Divided by Two
numbers = { high: 100, medium: 50, low: 10 }
#Enumerable#map returns a new array with the results of running block once for every element in enum.
half_numbers = numbers.map do |k,v| 
                 v / 2 
               end
p half_numbers

#Low, Medium, or High?
numbers = { high: 100, medium: 50, low: 10 }
low_numbers = numbers.select { |k,v| v <25 }
##select returns a new hash consisting of entries for which the block returns true.
p low_numbers

#Low or Nothing
numbers = { high: 100, medium: 50, low: 10 }
low_numbers = numbers.select { |k,v| v <25 }
##select returns a new hash consisting of entries for which the block returns true.
p low_numbers
p numbers
low_numbers = numbers.select! { |k,v| v <25 }
##select! becomes a destructive method
p low_numbers
p numbers

#Multiple Cars
{ 
  Car:   { type: 'sedan', color: 'blue', year: 2003 }, 
  Truck: { type: 'pickup', color: 'red', year: 1998 } 
}

#Which Collection?
car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]
