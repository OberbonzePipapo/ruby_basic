# Script to play around and test different Pet classes
# Author:: Elina Eickstaedt

require_relative 'cat'
require_relative 'person'

cat = Cat.new('Max', '12.2.2008')
p cat
puts cat

person = Person.new('Philip')
p person
puts person

cat.add_butler(person)

puts cat.hash