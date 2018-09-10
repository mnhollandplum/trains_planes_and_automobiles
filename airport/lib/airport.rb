class Airport
  attr_reader :queue,
    :flights,
    :passengers,
    :suitcases

  def initialize
    @flights    = []
    @queue      = []
    @passengers = []
    @suitcases  = []
  end
end
