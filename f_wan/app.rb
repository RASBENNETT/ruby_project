require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/driver_controller')
require_relative('controllers/teams_controller')
require_relative('controllers/race_controller')
require_relative('controllers/results_controller')



get '/' do
  erb( :index )
end