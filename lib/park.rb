class Park
  attr_reader :name,
              :admission_price,
              :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle

  end

  def passengers
    array_of_passengers = []
    @vehicles.each do |car|
      array_of_passengers.concat(car.passengers)
    end
    array_of_passengers
  end

  def revenue
    @admission_price * passengers.count
  end

  def all_attendees
    array_of_passengers = []
    passengers.each do |car|
      array_of_passengers << car.passengers.name
    end
    array_of_passengers.sort
  end

  def minors
    passengers.select do |passenger|
      if passenger.age < 18
        passenger.name.sort
      end
    end
  end

  def adults
    passengers.select do |passenger|
      if passenger.age >= 18
        passenger.name.sort
      end
    end
  end
end