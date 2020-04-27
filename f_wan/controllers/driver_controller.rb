require('sinatra')
require( 'sinatra/contrib/all' )

require_relative('../models/driver')
require_relative('../models/team')
also_reload('../models/*')

get '/drivers' do
    @drivers = Driver.all()
    erb( :"drivers/index" )
end

get '/drivers/new' do
    @teams = Team.all()
    erb(:"drivers/new")
end

get '/drivers/:id' do
    id = params['id'].to_i
    @driver = Driver.find(id)
    erb( :"drivers/show" )
end

post '/drivers' do
    @driver = Driver.new( params )
    @driver.save()
    erb(:"drivers/create")
end

post '/drivers/:id' do
    id = params[:id].to_i
    driver = Driver.find( id )
    changes = params
    p changes[:first_name]
    driver.first_name = changes[:first_name] if changes[:first_name].length != 0 
    driver.last_name = changes[:last_name] if changes[:last_name].length != 0  
    driver.team_id = changes[:team_id] if changes[:team_id].length != 0 
    driver.update
    erb(:"drivers/update")
end

get '/drivers/:id/edit' do
    @teams = Team.all()
    id = params[:id].to_i
    @driver = Driver.find(id)
    erb(:"drivers/edit")
end

get '/drivers/:id/delete' do
    id = params['id'].to_i
    driver = Driver.find(id)
    driver.delete
    erb(:"drivers/destroy")
end