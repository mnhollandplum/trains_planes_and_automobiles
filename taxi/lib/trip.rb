class Trip
  attr_reader :fare,
              :tip,
              :passenger

  def initialize(fare, tip, passenger)
    @fare      = fare
    @tip       = tip
    @passenger = passenger
  end
end
