# Description
# Author:: Elina Eickstaedt
require_relative 'length_conversion.rb'
require_relative 'mass_conversion.rb'
require_relative 'temperature_conversion.rb'
require_relative 'old_units_conversion.rb'

entered_unit = 0
entered_value = 0
target_unit = 0

# Method to get user input and saves it in variables to convert and check later
def get_input
  puts("Please enter the value and the unit you want to convert from, in the format 2 cm to km.")
  input =  gets
  if input.is_a?(NilClass) || (input.strip).upcase.eql?("E")
    puts("Please restart and enter something valid")
  else
    user_input = /^(?<value>[0-9.]+) ?(?<enteredUnit>[[:alpha:]]+)?(?: to)?(?<targetUnit> [[:alpha:]]+)?/.match(input.strip)
    entered_unit = user_input["enteredUnit"]
    entered_value = user_input["value"]
    target_unit = user_input["targetUnit"]
  end
end

# method which calls the right unit converter from coversion class
def call_converter
  if LengthConversion.units.include?(entered_unit) && LengthConversion.units.include?(target_unit)
    unit = LengthConversion.new(entered_unit, entered_value)
    puts unit.convert(target_unit)
  elsif MassConversion.units.include?(entered_unit) && MassConversion.units.include?(target_unit)
    unit = MassConversion.new(entered_unit, entered_value)
    puts unit.convert(target_unit)
  elsif TemperatureConversion.units.include?(entered_unit) && TemperatureConversion.units.include?(target_unit)
    unit = MassConversion.new(entered_unit, entered_value)
    puts unit.convert(target_unit)
  end
end



