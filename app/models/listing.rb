class Listing
    attr_accessor :listing, :city

    @@all = []

    def initialize(listing, city)
        @listing = listing
        @city = city

        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        self.trips.collect {|listings| listings.guest}
    end

    def trips_count
        self.trips.count {|listings| listings}
    end

    def self.find_all_by_city(city)
        Trip.all.select {|trip| trip.listing.city == city}
    end

    def self.most_popular
        count = 0
        pop_list = []
        self.all.each do |listing|
            if listing.trips_count > count
                count = listing.trips_count
                pop_list = listing
            end
        end
        pop_list
    end
end