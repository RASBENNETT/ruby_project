require('sinatra')
require( 'sinatra/contrib/all' )

require_relative('../models/driver')
require_relative('../models/team')
require_relative('../models/race')
also_reload('../models/*')




get '/races' do
    @races = Race.all()
    erb( :"races/index" )
end

get '/races/:id' do
    id = params['id'].to_i
    @race = Race.find(id)
    erb( :"races/show" )
end
