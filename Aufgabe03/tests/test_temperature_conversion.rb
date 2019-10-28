# Class to test if the temperature conversion class works properly
# Author:: Elina Eickstaedt

require 'test/unit'
require_relative '../temperature_conversion'
class TestTemperatureConversion < Test::Unit::TestCase
  def test
    # test if conversion into suitable units works
    input_value = rand(1..100)
    input_unit = TemperatureConversion.units.sample
    target_unit = TemperatureConversion.units.sample
    assert_equal(41,TemperatureConversion.new(input_unit, input_value).convert(target_unit))

    # test if NilClass is handled properly
    # test if false input is handled properly
  end
end