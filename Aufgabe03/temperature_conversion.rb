# Class which converts temperature units into each other => Celsius, Kelvin, Fahrenheit, Smurdley
# Author:: Elina Eickstaedt

class TemperatureConversion

  @@units = %w(C F K)

  def initialize(unit, value)

    @value = 0
    case unit
    when "F"
      @value = (value.to_f - 32.0) * (5.0/9.0)
    when "K"
      @value = value.to_f - 273.15
    when "C"
      @value = value.to_f
    else
      puts("Please enter valid parameters")
    end

  end

  def self.units
    @@units
  end

  def convert(target_unit)

    case target_unit
    when "F"
      result = (@value * 9.0/5.0) + 32.0
    when "K"
      result = @value + 273.15
    else
      # C
      result = @value
    end

    result
  end
end

# possible Testcase
# assert(TemperatureUnit.new("C", 5).convert("F"), 41)
