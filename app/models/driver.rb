class Driver
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
        Ride.all.select {|rides| rides.driver == self}
    end

    def passengers
        self.rides.collect {|own_rides| own_rides.passenger}
    end

    def self.mileage_cap(distance)
        array = []
        Ride.all.each do |rides|
            if rides.distance > distance
                array << rides.driver
            end
        end
        array.uniq
    end
end