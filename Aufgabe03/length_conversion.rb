# Class which convert different length units into each other =>mp, Kp, Fp
# Author:: Elina Eickstaedt

class LengthConversion

  @@units = %w(mm cm m km potrzbie mp Kp Fp)

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
    # Used from wolfram alpha
    when "potrzbie"
      @value = value.to_f * 2.263348517438173216473
    when "mp"
      @value = value.to_f * 0.002263
    when "Kp"
      @value = value.to_f * 2263
    when "Fp"
      @value = value.to_f * 2263000
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
    when "mp"
      @value = value.to_f / 0.002263
    when "Kp"
      @value = value.to_f / 2263
    when "Fp"
      @value = value.to_f / 2263000
    else
      # mm
      result = @value
    end
    result
  end
end

# possible Testcase
# assert(LengthUnit.new("cm", 5).convet("mm"), 50)