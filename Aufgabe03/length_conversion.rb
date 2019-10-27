# Class which convert different length units into each other
# Author:: Elina Eickstaedt

class LengthConversion

  @@units = %w(mm cm m km)

  def initialize(unit, value)
    # intializes every value into a baseline unit to convert them easier later
    @value = 0
    case unit
    when "cm"
      @value = value.to_f * 10
    when "m"
      @value = value.to_f * 1000
    when "km"
      @value = (value.to_f * 1000) * 1000
    when "in"
      @value = value.to_f * 25.4
    when "ft"
      @value = value.to_f * 304.8
    when "yd"
      @value = value.to_f * 1609344
    when "potrzbie"
      @value = value.to_f * 2.263348517438173216473
    else
      # mm
      @value = value.to_f
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
    when "in"
      @value = value / 25.4
    when "ft"
      @value = value / 304.8
    when "yd"
      @value = value / 1609344
    when "potrzbie"
      @value = value / 2.263348517438173216473
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

if LengthConversion.units.include?(enteredUnit)
  unit = LengthConversion.new(enteredUnit, enteredValue)
end

puts unit.convert(enteredTargetUnit)