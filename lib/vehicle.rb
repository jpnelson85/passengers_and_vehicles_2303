class Vehicle
  attr_reader :year,
              :make,
              :model

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeder = false
    @passengers = []
  end

  def speed
    @speeder = true
  end

  def speeding?
    @speeder
  end

  def num_adults
    
  end
end