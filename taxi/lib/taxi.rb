class Taxi
  attr_reader :medallion_number,
              :trips

  def initialize(medallion_number)
    @medallion_number = medallion_number
    @trips = []
  end
end
