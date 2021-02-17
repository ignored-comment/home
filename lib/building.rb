class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    sorted = []
    @units.each do |unit|
      if unit.renter != nil
        sorted << unit.renter.name
      end
    end
    sorted
  end

  def average_rent
    sum = 0.0
    @units.each do |unit|
      sum += unit.monthly_rent
    end
    results = sum / @units.count
  end
end
