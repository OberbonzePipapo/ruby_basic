


# Conversion of different units
# Author:: Elina Eickstaedt
class LengthUnit

  @@units = %w(mm cm m km)

  def initialize(unit, value)

    @value = 0
    case unit
    when "cm"
      @value = value * 10
    when "m"
      @value = value * 1000
    when "km"
      @value = (value * 1000) * 1000
    else
      # mm
      @value = value
    end

  end

  def self.units
    @@units
  end

  def convert(target_unit)

    case target_unit
    when "cm"
      result = @value / 10
    when "m"
      result = @value / 1000
    when "km"
      result = @value / 1000 / 1000
    else
      # mm
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

if LengthUnit.units.include?(enteredUnit)
  unit = LengthUnit.new(enteredUnit, enteredValue)
end

puts unit.convert(enteredTargetUnit)


