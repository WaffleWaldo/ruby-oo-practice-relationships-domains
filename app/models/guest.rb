class Guest
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trips| trips.guest == self}
    end

    def listings
        self.trips.collect {|trips| trips.listing}
    end

    def trip_count
        self.trips.count {|trips| trips}
    end

    def self.pro_traveller
        pro_travellers = []
        self.all.each do |trip|
            if trip.trip_count > 1
                pro_travellers << trip
            end
        end
        pro_travellers
    end

    def self.find_all_by_name(name)
        self.all.select {|guests| guests.name == name}
    end
end

