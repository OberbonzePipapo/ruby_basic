# Class which converts old units into each other => Dutzend (12), Mandel (15), Schock (60), Gross (144).
# Author:: Elina Eickstaedt
#
class OldUnitsConversion
  @@units = %w(Dutzend Mandel Schock)

  def initialize(unit, value)

    @value = 0
    case unit
    when "Dutzend"
      @value = value.to_f * 1.25
    when "Schock"
      @value = value.to_f * 5.0
    when "Mandel"
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
    when "Dutzend"
      @value / 1.25
    when "Schock"
      @value / 5.0
    when "Mandel"
      @value
    else
      raise ArgumentError, "Please enter valid target unit"
    end
  end

end


# Possible Testcase => Needs Adjustment
# assert(LengthUnit.new("cm", 5).convert("mm"), 50)
