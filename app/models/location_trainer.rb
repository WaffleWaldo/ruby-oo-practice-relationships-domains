class LocationTrainer
    attr_accessor :location, :trainer

    @@all = []

    def initialize(location, trainer)
        @location = location
        @trainer = trainer

        @@all << self
    end

    def self.all
        @@all
    end
end