class Vehicle
  attr_reader :year,
              :make,
              :model,
              :passengers

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

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    passenger_count = 0
    @passengers.each do |passenger|
      if passenger.adult?
        passenger_count += 1
      end
    end
    passenger_count
  end
end