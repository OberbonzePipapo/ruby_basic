# Description
# Author:: Elina Eickstaedt

require 'test/unit'
require_relative '../length_conversion'

class TestLengthConversion < Test::Unit::TestCase
  def test_conversions
    # test if conversion into suitable units works
    assert_equal(0.02209, LengthConversion.new("mm", 50).convert("Kp").round(5))
    assert_equal(8420, LengthConversion.new("km", 7.7).convert("yd"))
    assert_equal(30.59,LengthConversion.new("in", 777).convert("mm"))
  end

  def test_invalid_input
    # test if false input is handled properly
    assert_raise("Please enter valid parameters") {LengthConversion.new("C", "M").convert("l")}
  end
end