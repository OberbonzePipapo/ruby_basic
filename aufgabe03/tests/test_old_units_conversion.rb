#Description
#Author:: Elina Eickstaedt

require 'test/unit'
require_relative '../old_units_conversion'
class TestOldUnitsConversion < Test::Unit::TestCase

  def test_conversion
    # test if conversion into suitable units works
    assert_equal(1, OldUnitsConversion.new("Mandel", 5).convert("Schock"))
    assert_equal(60, OldUnitsConversion.new("Schock", 15).convert("Dutzend"))
    assert_equal(33.6,OldUnitsConversion.new("Dutzend", 42).convert("Mandel"))
  end

  def test_invalid_input
    # test if false input is handled properly
    assert_raise(ArgumentError, "Please enter valid parameters") {OldUnitsConversion.new("C", "M").convert("l")}
  end
end