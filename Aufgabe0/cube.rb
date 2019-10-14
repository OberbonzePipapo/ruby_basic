# Class to represent a cube and returns randomly sides of it.
# Author: : Elina Eickstaedt
class Cube
  def initialize(number_of_sides = 6)
    @number_of_sides = number_of_sides
  end
  def roll()
    rand(1..@number_of_sides)
  end
end






