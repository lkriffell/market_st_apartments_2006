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

  def test_units_can_be_added
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    building.add_unit(unit1)
    building.add_unit(unit2)

    assert_equal [unit1, unit2], building.units
  end

  def test_renters_can_be_added_and_average_rent_calculation
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)
    renter1 = Renter.new("Aurora")
    unit1.add_renter(renter1)
    renter2 = Renter.new("Tim")
    unit2.add_renter(renter2)

    assert_equal ["Aurora", "Tim"], building.renters
  end


end
