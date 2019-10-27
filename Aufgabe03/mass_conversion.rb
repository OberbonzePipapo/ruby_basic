# Class to convert mass units into to each other => g, kg, Zentner, Tonne, ounce, pound, ton
#Author:: Elina Eickstaedt
class MassConversion
  @@units = %w(g kg ztr t oz lb tn)

  def initialize(unit, value)

    @value = 0
    case unit
    when "kg"
      @value = value.to_f * 1000
    when "ztr"
      @value = value.to_f * 100000
    when "t"
      @value = value.to_f * 1e+6
    when "oz"
      @value = value.to_f * 28.35
    when "lb"
      @value = value.to_f * 453.592
    else
      # g
      @value = value.to_f
    end

  end

  def self.units
    @@units
  end

  def convert(target_unit)

    case target_unit
    when "kg"
      @value = value / 1000
    when "ztr"
      @value = value / 100000
    when "t"
      @value = value / 1e+6
    when "oz"
      @value = value / 28.35
    when "lb"
      @value = value / 453.592
    else
      # g
      @value = value
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