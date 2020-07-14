require './lib/renter'
require './lib/apartment'
require 'minitest/autorun'
require 'minitest/pride'
class ApartmentTest < Minitest::Test
  def test_apartment_has_attributes
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal "A1", unit1.number
    assert_equal 1200, unit1.monthly_rent
    assert_equal 1, unit1.bathrooms
    assert_equal 1, unit1.bedrooms
  end

  def test_renter_can_be_added
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    renter1 = Renter.new("Jessie")

    assert_equal nil, unit1.renter

    unit1.add_renter(renter1)

    assert_equal "Jessie", unit1.renter
  end
end
