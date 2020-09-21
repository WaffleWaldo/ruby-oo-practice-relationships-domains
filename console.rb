#Airbnb
# require_relative "./app/models/guest.rb"
# require_relative "./app/models/listing.rb"
# require_relative "./app/models/trip.rb"
#----------------------------------------------------------------------
#Lyft
# require_relative "./app/models/passenger.rb"
# require_relative "./app/models/driver.rb"
# require_relative "./app/models/ride.rb"
#----------------------------------------------------------------------
#Gym
# require_relative "./app/models/client.rb"
# require_relative "./app/models/trainer.rb"
# require_relative "./app/models/location.rb"
# require_relative "./app/models/location_trainer.rb"
#----------------------------------------------------------------------
#IMDB
require_relative "./app/models/movie.rb"
require_relative "./app/models/show.rb"
require_relative "./app/models/character.rb"
require_relative "./app/models/actor.rb"
require_relative "./app/models/episodes.rb"
#----------------------------------------------------------------------
require "pry"
#----------------------------------------------------------------------

#Airbnb

# bob = Guest.new("Bob")
# waldo = Guest.new("Waldo")
# mary = Guest.new("Mary")
# kim = Guest.new("Kim")

# listing_1 = Listing.new("house", "Brooklyn")
# listing_2 = Listing.new("appartment", "Manhattan")
# listing_3 = Listing.new("studio", "Manhattan")
# listing_4 = Listing.new("studio", "Bronx")
# listing_5 = Listing.new("house", "Queens")
# listing_6 = Listing.new("appartment", "Queens")

# trip_1 = Trip.new(bob, listing_1)
# trip_2 = Trip.new(waldo, listing_2)
# trip_3 = Trip.new(mary, listing_3)
# trip_4 = Trip.new(kim, listing_4)
# trip_5 = Trip.new(bob, listing_2)
# trip_6jnb = Trip.new(waldo, listing_6)

#----------------------------------------------------------------------

#Lyft

# driver_1 = Driver.new("waldo")
# driver_2 = Driver.new("harrison")
# driver_3 = Driver.new("yan")
# driver_4 = Driver.new("jason")
# driver_5 = Driver.new("chris")

# passenger_1 = Passenger.new("kimberly")
# passenger_2 = Passenger.new("mildred")
# passenger_3 = Passenger.new("maximo")
# passenger_4 = Passenger.new("fabian")
# passenger_5 = Passenger.new("elly")

# Ride.new(100.1, passenger_1,driver_1)
# Ride.new(1.6, passenger_2,driver_1)
# Ride.new(2.3, passenger_2,driver_2)
# Ride.new(0.8, passenger_3,driver_2)
# Ride.new(3.7, passenger_3,driver_2)
# Ride.new(2.2, passenger_4,driver_3)
# Ride.new(1.5, passenger_4,driver_4)
# Ride.new(0.9, passenger_4,driver_4)
# Ride.new(3.2, passenger_4,driver_4)
# Ride.new(2.9, passenger_5,driver_5)

#----------------------------------------------------------------------

#Gym

# trainer_1 = Trainer.new("kim")
# trainer_2 = Trainer.new("chris")
# trainer_3 = Trainer.new("jason")
# trainer_4 = Trainer.new("lenny")
# trainer_5 = Trainer.new("hailey")
# trainer_6 = Trainer.new("sam")
# trainer_7 = Trainer.new("bob")

# client_1 = Client.new("waldo", trainer_1)
# client_2 = Client.new("saka", trainer_2)
# client_3 = Client.new("aang", trainer_3)
# client_4 = Client.new("momo", trainer_4)
# client_5 = Client.new("toph", trainer_4)
# client_6 = Client.new("zoro", trainer_4)
# client_7 = Client.new("iroh", trainer_5)
# client_8 = Client.new("zuku", trainer_6)
# client_9 = Client.new("the boulder", trainer_7)
# client_10 = Client.new("lee", trainer_7)

# location_1 = Location.new("Park Slope")
# location_2 = Location.new("Bushwick")
# location_3 = Location.new("The East Village")
# location_4 = Location.new("Hells Kitchen")
# location_5 = Location.new("Greenpoint")

# loaction_trainer_1 = LocationTrainer.new(location_1, trainer_7)
# loaction_trainer_2 = LocationTrainer.new(location_2, trainer_7)
# loaction_trainer_3 = LocationTrainer.new(location_2, trainer_6)
# loaction_trainer_4 = LocationTrainer.new(location_3, trainer_6)
# loaction_trainer_5 = LocationTrainer.new(location_3, trainer_5)
# loaction_trainer_6 = LocationTrainer.new(location_3, trainer_4)
# loaction_trainer_7 = LocationTrainer.new(location_4, trainer_3)
# loaction_trainer_8 = LocationTrainer.new(location_4, trainer_2)
# loaction_trainer_9 = LocationTrainer.new(location_5, trainer_2)
# loaction_trainer_10 = LocationTrainer.new(location_5, trainer_1)

#----------------------------------------------------------------------

#IMDB



#----------------------------------------------------------------------

binding.pry