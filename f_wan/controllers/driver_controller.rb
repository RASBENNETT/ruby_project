require('sinatra')
require( 'sinatra/contrib/all' )

require_relative('../models/driver')
require_relative('../models/team')
also_reload('../models/*')

get '/drivers' do
    @drivers = Driver.all()
    erb( :"drivers/index" )
end

get '/drivers/:id' do
    id = params['id'].to_i
    @driver = Driver.find(id)
    erb( :"drivers/show" )
end

