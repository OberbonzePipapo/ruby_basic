# Class to convert mass units into to each other => g, kg, Zentner, Tonne, ounce, pound, short ton, blintz,
#Author:: Elina Eickstaedt
class MassConversion
  @@units = %w(g kg ztr t oz lb tn)

  def initialize(unit, value)

    @value = 0
    case unit
    when "kg"
      @value = value.to_f * 1000.0
    when "ztr"
      @value = value.to_f * 100000.0
    when "t"
      @value = value.to_f * 1e+6.to_f
    when "oz"
      @value = value.to_f * 28.35
    when "lb"
      @value = value.to_f * 453.592
    when "tn"
      @value = value.to_f * 907185.0
    when "b"
      @value = value.to_f * 36.43
    when "g"
      @value = value.to_f
    else
      raise ArgumentError, "Please enter valid parameters"
    end

  end

  def self.units
    @@units
  end

  def convert(target_unit)

    case target_unit
    when "kg"
      @value/ 1000
    when "ztr"
      @value / 100000
    when "t"
      @value / 1e+6
    when "oz"
      @value / 28.35
    when "lb"
      @value / 453.592
    when "g"
      @value
    else
      raise ArgumentError, "Please enter valid target unit"
    end
  end
end

# possible test case
# assert(LengthUnit.new("kg", 5).convert("lb"), 11,0231)