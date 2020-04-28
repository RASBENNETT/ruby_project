require('sinatra')
require( 'sinatra/contrib/all' )

require_relative('../models/race')
require_relative('../models/race')
require_relative('../models/race')
also_reload('../models/*')




get '/races' do
    @races = Race.all()
    erb( :"races/index" )
end

get '/races/new' do
    @races = Race.all()
    erb(:"races/new")
end

get '/races/:id' do
    id = params['id'].to_i
    @race = Race.find(id)
    erb( :"races/show" )
end

post '/races' do
    @race = Race.new( params )
    @race.save()
    erb(:"races/create")
end

post '/races/:id' do
    id = params[:id].to_i
    race = Race.find( id )
    changes = params
    p changes[:location]
    race.location = changes[:location] if changes[:location].length != 0 
    race.date = changes[:date] if changes[:date].length != 0  
    race.update()
    erb(:"races/update")
end

get '/races/:id/edit' do
    @races = Race.all()
    id = params[:id].to_i
    @race = Race.find(id)
    erb(:"races/edit")
end

get '/races/:id/delete' do
    id = params['id'].to_i
    race = Race.find(id)
    race.delete
    erb(:"races/destroy")
end