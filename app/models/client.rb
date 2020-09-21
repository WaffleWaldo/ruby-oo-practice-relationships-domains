class Client
    attr_accessor :trainer
    attr_reader :name

    @@all = []

    def initialize(name, trainer=nil)
        @name = name
        @trainer = trainer

        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end
end