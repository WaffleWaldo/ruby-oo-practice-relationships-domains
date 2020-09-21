class Location
    attr_reader :location_name

    @@all =[]

    def initialize(location_name)
        @location_name = location_name
        
        @@all << self
    end

    def self.all
        @@all
    end

    def trainers
        LocationTrainer.all.select {|location| location.location == self}
    end

    def self.least_clients
        total_clients = []
        location_array = []
        Location.all.each do |location|
            clients = 0
            location.trainers.each do |trainers|
                clients += trainers.trainer.client_count
            end
            if location_array == []
                location_array << location
            end
            
            total_clients << clients

            if total_clients[-1] > clients
                location_array << location
            end
        end
        location_array[-1]
    end
end

# we want to check the locationtrainer database
# we want to look at the trainers there and count there clients 
# then we want to add that number to the locations that they are in 
# then we want to compare the locations and see which as the least