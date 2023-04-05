require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
  it 'exists' do
    park = Park.new("Indiana Dunes", 7)
    expect(park).to be_a(Park)
  end

  it 'has attributes' do
    park = Park.new("Indiana Dunes", 7)
    expect(park.name).to eq("Indiana Dunes")
    expect(park.admission_price).to eq(7)
    expect(park.vehicles).to eq([])
  end

  it 'can add vehicles' do
    park = Park.new("Indiana Dunes", 7)
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
    vehicle_2 = Vehicle.new("2007", "Ford", "Ranger")
    park.add_vehicle(vehicle_1)
    park.add_vehicle(vehicle_2)
    expect(park.vehicles).to eq([vehicle_1, vehicle_2])
  end

  it 'passenger method' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})  
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
    vehicle_1.add_passenger(charlie) 
    vehicle_1.add_passenger(jude)
    vehicle_1.add_passenger(taylor)
    park = Park.new("Indiana Dunes", 7)
    park.add_vehicle(vehicle_1)
    expect(park.passengers).to eq([charlie, jude, taylor])
  end

  it 'revenue method' do
    park = Park.new("Indiana Dunes", 7)
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
    park.add_vehicle(vehicle_1)
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})  
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    vehicle_1.add_passenger(charlie) 
    vehicle_1.add_passenger(jude)
    vehicle_1.add_passenger(taylor)
    expect(park.revenue).to eq(21)
  end

  it 'all_attendees method' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})  
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
    vehicle_1.add_passenger(taylor)
    vehicle_1.add_passenger(charlie) 
    vehicle_1.add_passenger(jude)
    park = Park.new("Indiana Dunes", 7)
    park.add_vehicle(vehicle_1)
    expect(park.all_attendees).to eq("Charlie", "Jude", "Taylor")
  end

  it 'minors method' do
    park = Park.new("Indiana Dunes", 7)
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
    park.add_vehicle(vehicle_1)
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})  
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    vehicle_1.add_passenger(taylor)
    vehicle_1.add_passenger(charlie) 
    vehicle_1.add_passenger(jude)
    expect(park.minors).to eq(["Taylor"])
  end

  it 'adults method' do
    park = Park.new("Indiana Dunes", 7)
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
    park.add_vehicle(vehicle_1)
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})  
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    vehicle_1.add_passenger(taylor)
    vehicle_1.add_passenger(charlie) 
    vehicle_1.add_passenger(jude)
    expect(park.adults).to eq("Charlie", "Jude")
  end
end