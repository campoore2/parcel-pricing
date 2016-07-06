require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/parcels') do
  length = params.fetch('length').to_i()
  width = params.fetch('width').to_i()
  height = params.fetch('height').to_i()
  weight = params.fetch('weight').to_i()
  distance = params.fetch('distance').to_i()
  parcel = Parcel.new(length, width, height, weight)
  @cost = parcel.cost_to_ship(distance)
  erb(:parcels)
end
