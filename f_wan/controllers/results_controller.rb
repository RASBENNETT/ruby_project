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

get '/results/:id/new' do
    id = params['id']
    @race = Race.find(id)
    @drivers = Driver.all()
    @results = Result.all()
    erb(:"results/new")
end

get '/results/:id' do
    id = params['id'].to_i
    @race = Race.find(id)
    erb( :"results/show" )
end

post '/results/:id' do
    id = params['id']
    race = Race.find(id)
    info = {}
    params.each do |key, value|
        if key.to_i != 0
        info['driver_id'] = key.to_i
        info['position'] = value.to_i
        info['race_id'] = race.id
        result = Result.new( info )
        result.save()
        end
    end
    erb(:"results/create")
end

post '/results/:id' do
    id = params[:id].to_i
    race = Race.find( id )
    changes = params
    p changes[:location]
    race.location = changes[:location] if changes[:location].length != 0 
    race.date = changes[:date] if changes[:date].length != 0  
    race.update()
    erb(:"results/update")
end

get '/results/:id/edit' do
    @results = Race.all()
    id = params[:id].to_i
    @race = Race.find(id)
    erb(:"results/edit")
end

get '/results/:id/delete' do
    id = params['id'].to_i
    race = Race.find(id)
    race.delete
    erb(:"results/destroy")
end
