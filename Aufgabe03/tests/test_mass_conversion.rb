# Description
# Author:: Elina Eickstaedt

require 'test/unit'
require_relative '../mass_conversion'

class TestMassConversion < Test::Unit::TestCase
  def test
    # test if conversion into suitable units works
    input_value = rand(1..1000)
    input_unit = MassConversion.units.sample
    target_unit = MassConversion.units.sample
    assert_equal(41,MassConversion.new(input_unit, input_value).convert(target_unit))

    # test if NilClass is handled properly
    # test if false input is handled properly
  end
end