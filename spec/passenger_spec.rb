require './lib/passenger'

RSpec.describe Passenger do
  it 'exists' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie).to be_a(Passenger)
  end

  it 'has name and age attributes' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
  end

  it 'adult? method' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    expect(charlie.adult?).to eq(true)
    expect(taylor.adult?).to eq(false)
  end

  it 'driver? method' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.driver?).to eq(false)
    charlie.drive
    expect(charlie.driver?).to eq(true)
  end
end