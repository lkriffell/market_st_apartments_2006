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

  # def renter_with_highest_rent
  #   previous = 0
  #   rented_units.each do |unit|
  #     require "pry"; binding.pry
  #     if unit.monthly_rent > previous
  #       previous == unit.monthly_rent
  #     end
  #   end
  # end

  def units_by_number_of_bedrooms
    units_by_beds = {}
    units.each do |unit|
      if units_by_beds[unit.bedrooms] == nil
        units_by_beds[unit.bedrooms] = [unit.number]
      else
        units_by_beds[unit.bedrooms] << unit.number
      end
    end
    require "pry"; binding.pry
    units_by_beds.reverse
  end
end
