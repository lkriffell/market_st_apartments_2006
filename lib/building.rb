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
end
