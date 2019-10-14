# Class to represent a biased cube and return radom biased numbers
# Author: : Elina Eickstaedt

class CubeBiased
  def initialize(number_of_sides = 6, bias)
    @number_of_sides = number_of_sides
    @bias = bias
  end
  def roll
    bias_grade = rand((1.0/6)..1)
    if (bias_grade <= @bias)
      return(6)
    else
      rand(1..5)
    end
  end
end