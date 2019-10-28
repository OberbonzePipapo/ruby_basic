# Description
# Author:: Elina Eickstaedt

require 'test/unit'
require_relative '../mass_conversion'

class TestMassConversion < Test::Unit::TestCase
  def test_conversion
    # test if conversion into suitable units works
    assert_equal(0.05, MassConversion.new("g", 50).convert("kg"))
    assert_equal(13779, MassConversion.new("ztr", 125).convert("lb"))
    assert_equal(856.5,MassConversion.new("t", 777).convert("tn"))
  end
  def test_invalid_input
    # test if false input is handled properly
    assert_equal("Please enter valid parameters", MassConversion.new("C", "M").convert("l"))
  end
end