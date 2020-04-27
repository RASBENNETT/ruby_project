require('sinatra')
require( 'sinatra/contrib/all' )

require_relative('../models/driver')
require_relative('../models/team')
require_relative('../models/result')
require_relative('../models/race')
also_reload('../models/*')

get '/results' do
    @races = Race.all()
    @drivers = Driver.all()
    @results = Result.all()
    erb( :"results/index" )
end

get '/results/:id' do
    id = params['id'].to_i
    @race = Race.find(id)
    erb( :"results/show" )
end
