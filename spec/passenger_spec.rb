require './lib/passenger'

RSpec.describe Passenger do
  it 'exists' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    expect(charlie).to be_a(Passenger)
  end

  it 'has name and age attributes' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
  end

  it 
end