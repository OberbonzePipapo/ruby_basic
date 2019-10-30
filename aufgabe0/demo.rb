# File to demonstrate created classes
# Author: : Elina Eickstaedt

require_relative 'cube'
require_relative 'cube_biased'

my_cube = Cube.new

puts(my_cube.roll())


my_biased_cube = CubeBiased.new(6,2)
puts(my_biased_cube.roll)