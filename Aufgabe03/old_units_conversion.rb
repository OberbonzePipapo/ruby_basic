# Class which converts old units into each other => Dutzend (12), Mandel (15), Schock (60), Gross (144).
# Author:: Elina Eickstaedt
class OldUnitsConversion
  @@units = %w(Dutzend Mandel Schock)

  def initialize(unit, value)

    @value = 0
    case unit
    when "Mandel"
      @value = (value.to_f - 32) * (5/9)
    when "Schock"
      @value = value.to_f - 273.15
    else
      # Dutzend
      @value = value.to_f
    end

  end

  def self.units
    @@units
  end

  def convert(target_unit)

    case target_unit
    when "Mandel"
      result = (@value * 9/5) + 32
    when "Schock"
      result = @value + 273,15
    else
      # Dutzend
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