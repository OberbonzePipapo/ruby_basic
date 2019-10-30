# Class which convert different length units into each other =>mp, Kp, Fp
# Author:: Elina Eickstaedt

class LengthConversion

  @@units = %w(mm cm m km potrzbie mp Kp Fp)

  def initialize(unit, value)
    # intializes every value into a baseline unit to convert them easier later
    @value = 0
    case unit
    when "cm"
      @value = value.to_f * 10.0
    when "m"
      @value = value.to_f * 1000.0
    when "km"
      @value = value.to_f * 1000000.0
    when "in"
      @value = value.to_f * 25.4
    when "ft"
      @value = value.to_f * 304.8
    when "yd"
      @value = value.to_f * 914.4
    # Used from wolfram alpha
    when "potrzbie"
      @value = value.to_f * 2.263348517438173216473
    when "mp"
      @value = value.to_f * 0.002263
    when "Kp"
      @value = value.to_f * 2263.0
    when "Fp"
      @value = value.to_f * 2263000.0
    when "mm"
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
    when "cm"
      @value / 10.0
    when "m"
      @value / 1000.0
    when "km"
      @value / 1000000.0
    when "in"
       @value / 25.4
    when "ft"
      @value / 304.8
    when "yd"
      @value / 914.4
    when "potrzbie"
      @value / 2.263348517438173216473
    when "mp"
      @value / 0.002263
    when "Kp"
      @value / 2263.0
    when "mm"
      @value
    else
      raise ArgumentError, "Please enter valid target unit"
    end
  end
end

# possible Testcase
# assert(LengthUnit.new("cm", 5).convet("mm"), 50)