class Carnival
  attr_reader :name,
              :rides,
              :attendees

  def initialize(name)
    @name = name
    @rides = []
    @attendees = []
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

  def admit(attendee)
    @attendees << attendee
  end

  def attendees_by_ride_interest
    interest_arrays #will need to iterate over nested array somehow
    interest_log = Hash.new(nil)
    # @rides.find do |ride|
    #   if ride.name == "Ferris Wheel"
    #   end
    # end
  end

  def interest_arrays #helper
    ferris_wheel = []
    bumper_cars = []
    scrambler = []
    @attendees.find do |attendee|
      attendee.interests.each do |interest|
        if interest == "Ferris Wheel"
          ferris_wheel << attendee
        elsif interest == "Bumper Cars"
          bumper_cars << attendee
        elsif interest == "Scrambler"
          scrambler << attendee
        end
      end
    end
    #create and call nested array of all 3 arrays
  end



  #For `attendees_by_ride_interest`, this method takes no arguments and returns
  #a Hash where each key is a Ride. The value associated with that Ride is an Array
  #of all the Attendees that have an interest in that ride.

end
