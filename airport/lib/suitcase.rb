class Suitcase
  attr_reader :weight,
              :owner

  def initialize(weight, owner)
    @weight = weight
    @owner  = owner
  end
end
