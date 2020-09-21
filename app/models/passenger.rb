class Passenger
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all 
        @@all
    end

    def rides
        Ride.all.select {|rides| rides.passenger == self}
    end

    def drivers
        self.rides.collect {|own_rides| own_rides.driver}
    end

    def total_distance
        distance = 0
        self.rides.each {|own_rides| distance += own_rides.distance}
        distance
    end

    def self.premium_members
        array = []
        self.all.each do |passengers|
            if passengers.total_distance >= 100
                array << passengers
            end
        end
        array
    end
end