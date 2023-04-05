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
    @admission_price * passeengers.count
  end
end