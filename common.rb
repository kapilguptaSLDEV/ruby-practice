load 'vehicle.rb'
load 'bus.rb'
load 'truck.rb'
load 'car.rb'
load 'suv.rb'
load 'sedan.rb'
load 'hatchback.rb'

require 'json'

v = Vehicle.new('Suzuki', '2019', 'Baleno', 4)
v1 = Truck.new('Suzuki', '2020', 'Truck', 8)
v2 = Bus.new('Suzuki', '2018', 'Green', 6)
v3 = Vehicle.new('Suzuki', '2012', 'WagonR', 4)
v4 = Car.new('Jeep', '2018', 'Compass', 4)

puts Vehicle.get_hash.to_json;