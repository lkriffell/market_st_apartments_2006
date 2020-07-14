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
    units.find_all do |unit|
      unit.renter != nil
    end
  end

  def renter_with_highest_rent
    monthly_rents = []
    units.each do |unit|
      monthly_rents << unit.monthly_rent
    end
    units.each do |unit|
      if unit.monthly_rent == monthly_rents.max
        return unit.renter.name
      end
    end
  end

  def units_by_number_of_bedrooms
    units_by_beds = {}
    units.each do |unit|
      if units_by_beds[unit.bedrooms] == nil
        units_by_beds[unit.bedrooms] = [unit.number]
      else
        units_by_beds[unit.bedrooms] << unit.number
      end
    end
    units_by_beds
  end

  def annual_breakdown
    breakdown = {}
    rented_units.each do |unit|
      breakdown[unit.renter.name] = unit.monthly_rent * 12
    end
    breakdown
  end
end
