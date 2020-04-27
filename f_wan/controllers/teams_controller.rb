require('sinatra')
require( 'sinatra/contrib/all' )

require_relative('../models/driver')
require_relative('../models/team')
also_reload('../models/*')

get '/teams' do
    @teams = Team.all()
    erb( :"teams/index" )
end

get '/teams/:id' do
    id = params['id'].to_i
    @team = Team.find(id)
    erb( :"teams/show" )
end
