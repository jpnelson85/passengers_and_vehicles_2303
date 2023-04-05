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
end