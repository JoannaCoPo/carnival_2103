class Carnival
  attr_reader :name,
              :rides

  def initialize(name)
    @name = name
    @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def recommend_rides(attendee) #refactor if time
    rec = []
    attendee.interests.find_all do |interest|
      @rides.find_all do |ride|
        if ride.name == interest
          rec << ride
        end
      end
    end
    rec
  end

end
