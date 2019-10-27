# Class which converts temperature units into each other => Celsius, Kelvin, Fahrenheit, Smurdley
# Author:: Elina Eickstaedt

class TemperatureConversion

  @@units = %w(C F K)

  def initialize(unit, value)

    @value = 0
    case unit
    when "F"
      @value = (value.to_f - 32) * (5/9)
    when "K"
      @value = value.to_f - 273.15
    else
      # C
      @value = value.to_f
    end

  end

  def self.units
    @@units
  end

  def convert(target_unit)

    case target_unit
    when "F"
      result = (@value * 9/5) + 32
    when "K"
      result = @value + 273,15
    else
      # C
      result = @value
    end

    result
  end
end

# possible Testcase
# assert(LengthUnit.new("C", 5).convet("F"), 41)
#
#
# Hardcoded Userinput

enteredUnit = "C"
enteredValue = 5
enteredTargetUnit = "F"
unit = nil

if TemperatureConversion.units.include?(enteredUnit)
  unit = TemperatureConversion.new(enteredUnit, enteredValue)
end

puts unit.convert(enteredTargetUnit)