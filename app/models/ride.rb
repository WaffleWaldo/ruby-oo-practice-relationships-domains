class Ride
    attr_reader :passenger, :driver, :distance

    @@all = []
    
    def initialize(distance, passenger, driver)
        @distance = distance
        @passenger = passenger
        @driver = driver

        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        num = 0
        self.all.each do |rides|
            num += rides.distance
        end
        average_distance = num / self.ride_count
        return average_distance
    end

    def self.ride_count
        self.all.count {|rides| rides}
    end
end