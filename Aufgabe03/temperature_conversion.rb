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

# assert(LengthUnit.new("cm", 5).convet("mm"), 50)

enteredUnit = "cm"
enteredValue = 5
enteredTargetUnit = "mm"
unit = nil

if LengthConversion.units.include?(enteredUnit)
  unit = LengthConversion.new(enteredUnit, enteredValue)
end

puts unit.convert(enteredTargetUnit)