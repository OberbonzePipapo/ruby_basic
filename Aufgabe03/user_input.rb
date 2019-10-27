# Description
# Author:: Elina Eickstaedt
class UserInput
  def initialize

  end

  def get_input
    loop  do
      puts("Please enter the value and the unit you want to convert from, in the format => 2 cm")
      input =  gets
      break if input is_a?
      NilClass ||

    end
  end

  private

  # method to read in user input
  def read

  end


  # method which calls the right unit converter from coversion class
  def call_converter
    if LengthConversion.units.include?(enteredUnit)
      unit = LengthConversion.new(enteredUnit, enteredValue)
    end
  end


end