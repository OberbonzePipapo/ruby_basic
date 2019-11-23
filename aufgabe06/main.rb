# Description
# Author:: Elina Eickstaedt

require_relative 'cat'

cat = Cat.new('Max', '12.2.1008')
p cat
puts cat

person = Person.new('Philip')
p person
puts person

cat.add_butler(person)