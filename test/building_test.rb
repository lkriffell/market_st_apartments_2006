require './lib/renter'
require './lib/apartment'
require './lib/building'
require 'minitest/autorun'
require 'minitest/pride'
class BuildingTest < Minitest::Test
  def test_building_exists_and_units_start_empty
    building = Building.new

    assert_instance_of Building, building
    assert_equal [], building.units
  end
end
