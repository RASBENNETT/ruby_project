require('sinatra')
require( 'sinatra/contrib/all' )

require_relative('../models/team')
require_relative('../models/team')
also_reload('../models/*')

get '/teams' do
    @teams = Team.all()
    erb( :"teams/index" )
end
get '/teams/new' do
    erb(:"teams/new")
end

get '/teams/:id' do
    id = params['id'].to_i
    @team = Team.find(id)
    erb( :"teams/show" )
end


post '/teams' do
    @team = Team.new( params )
    @team.save()
    erb(:"teams/create")
end

post '/teams/:id' do
    id = params[:id].to_i
    team = Team.find( id )
    changes = params
    team.name = changes[:name] if changes[:name].length != 0 
    team.update
    erb(:"teams/update")
end

get '/teams/:id/edit' do
    id = params[:id].to_i
    @team = Team.find(id)
    erb(:"teams/edit")
end

get '/teams/:id/delete' do
    id = params['id'].to_i
    team = Team.find(id)
    team.delete
    erb(:"teams/destroy")
end