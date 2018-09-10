class Flight
  attr_reader :origin,
              :destination,
              :number,
              :plane

  def initialize(origin, destination, number, plane)
    @origin = origin
    @destination = destination
    @number = number
    @plane  = plane
  end

  def summary
    "Flight #{@number} from #{@origin} to #{@destination}"
  end
end
