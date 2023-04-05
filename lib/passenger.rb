class Passenger
  attr_reader

  def intialize(details)
    @name = details("name")
    @age = details("age")
  end
end