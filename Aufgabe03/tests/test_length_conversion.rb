# Description
# Author:: Elina Eickstaedt

require 'test/unit'
require_relative '../length_conversion'

class TestLengthConversion < Test::Unit::TestCase
  def test
    # test if conversion into suitable units works
    input_value = rand(1..100)
    input_unit = LengthConversion.units.sample
    target_unit = LengthConversion.units.sample
    assert_equal(41,LengthConversion.new(input_unit, input_value).convert(target_unit))

    # test if NilClass is handled properly
    # test if false input is handled properly
  end
end