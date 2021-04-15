class Ride
  attr_reader :name,
              :cost

  def initialize(ride)
    @name = ride[:name]
    @cost = ride[:cost]
  end

end
