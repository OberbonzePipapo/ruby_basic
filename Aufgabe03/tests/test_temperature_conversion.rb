# Class to test if the temperature conversion class works properly
# Author:: Elina Eickstaedt

require 'test/unit'
require_relative '../temperature_conversion'
class TestTemperatureConversion < Test::Unit::TestCase

  def test_conversion
    # test if conversion into suitable units works
    assert_equal(41, TemperatureConversion.new("C", 5).convert("F"))
    assert_equal(278.15, TemperatureConversion.new("C", 5).convert("K"))
    assert_equal(258.15,TemperatureConversion.new("F", 5).convert("K"))
  end
  def test_invalid_input
    # test if false input is handled properly
    assert_equal("Please enter valid parameters", TemperatureConversion.new("C", "M").convert("l"))
  end
end