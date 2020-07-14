require './lib/renter'
require 'minitest/autorun'
require 'minitest/pride'
class RenterTest < Minitest::Test
  def test_renter_has_name
    renter1 = Renter.new("Jessie")

    assert_equal "Jessie", renter1.name
  end
end
