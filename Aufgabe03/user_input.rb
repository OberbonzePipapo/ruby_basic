# Description
# Author:: Elina Eickstaedt
require_relative 'length_conversion.rb'
require_relative 'mass_conversion.rb'
require_relative 'temperature_conversion.rb'
require_relative 'old_units_conversion.rb'

class UserInput
  def initialize
    @enteredUnit = 0
    @enteredValue = 0
    @targetUnit = 0
  end
  # Method to get user input and saves it in variables to convert and check later
  def get_input
    puts("Please enter the value and the unit you want to convert from, in the format 2 cm to km.")
    input =  gets
    if input.is_a?(NilClass) || (input.strip).upcase.eql?("E")
      puts("Please restart and enter something valid")
    else
      user_input = /^(?<value>[0-9.]+) ?(?<enteredUnit>[[:alpha:]]+)?(?:to)?(?<targetUnit>[[:alpha:]]+)?$/.match(input.strip)
      @enteredUnit = user_input["enteredUnit"]
      @enteredValue = user_input["value"]
      @targetUnit = user_input["targetUnit"]
    end
  end

  # method which calls the right unit converter from coversion class
  def call_converter
    if LengthConversion.units.include?(@enteredUnit) && LengthConversion.units.include?(@targetUnit)
      unit = LengthConversion.new(@enteredUnit, @enteredValue)
      puts unit.convert(@targetUnit)
    elsif MassConversion.units.include?(@enteredUnit) && MassConversion.units.include?(@targetUnit)
      unit = MassConversion.new(@enteredUnit, @enteredValue)
      puts unit.convert(@targetUnit)
    elsif TemperatureConversion.units.include?(@enteredUnit) && TemperatureConversion.units.include?(@targetUnit)
      unit = MassConversion.new(@enteredUnit, @enteredValue)
      puts unit.convert(@targetUnit)
    end
  end
end


result = (UserInput.new)
result.get_input

puts(result.call_converter)