class Building
  attr_reader :units, :renters

  def initialize()
    @units = []
    @renter_names = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    units.each do |unit|
      @renter_names << unit.renter.name
    end
    @renter_names
  end

  def average_rent
    avg_rent = 0
    units.each do |unit|
      avg_rent += unit.monthly_rent
    end
    avg_rent = (avg_rent.to_f / units.size.to_f)
    avg_rent
  end

  def rented_units
    units_rented = []
    units.each do |unit|
      if unit.renter != nil
        units_rented << unit
      end
    end
    units_rented
  end
end
