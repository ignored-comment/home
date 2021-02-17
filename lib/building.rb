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

  def rented_units
    sorted = []
    @units.each do |unit|
      if unit.renter != nil
        sorted << unit
      end
    end
    sorted
  end

  def renter_with_highest_rent
    rented = []
    @units.each {|unit| rented << unit if unit.renter != nil}
    result = rented[0]
    rented.each do |unit|
      if unit.monthly_rent > result.monthly_rent
        result = unit
      end
    end
    result.renter
  end
end
