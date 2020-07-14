class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter
  def initialize(apt = {})
    @number = apt[:number]
    @monthly_rent = apt[:monthly_rent]
    @bathrooms = apt[:bathrooms]
    @bedrooms = apt[:bedrooms]
    @renter = apt[:renter]
  end
end
