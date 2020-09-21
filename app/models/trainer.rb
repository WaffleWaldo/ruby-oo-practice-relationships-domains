class Trainer
    attr_reader :name

    @@all =[]

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def clients
        Client.all.select {|clients| clients.trainer == self}
    end

    def locations
        LocationTrainer.all.select {|locations| locations.trainer == self}
    end

    def client_count
        self.clients.count {|client| client}
    end

    def self.most_clients
        clients = 0
        best_trainers = []
        self.all.each do |trainer|
            if trainer.client_count > clients
                clients = trainer.client_count
                best_trainers << trainer
            end
        end
        best_trainers[-1]
    end
end