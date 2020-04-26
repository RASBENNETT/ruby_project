require_relative('../models/team')
require_relative('../models/driver')
require_relative('../models/race')
require_relative('../models/result')

require('pry')

Driver.delete_all
Team.delete_all
Race.delete_all

### TEAMS ###

mercedes = Team.new( 'name' => 'Mercedes')
red_bull = Team.new( 'name' => 'Red Bull')
ferari = Team.new( 'name' => 'Ferari')
haas = Team.new( 'name' => 'Haas')
renault = Team.new( 'name' => 'Renault')
racing_point = Team.new( 'name' => 'Racing Point')
alpha_romero = Team.new( 'name' => 'Alpha Romeo')
mclaren = Team.new( 'name' => 'McLaren')
alpha_tauri = Team.new( 'name' => 'AlphaTauri')
williams = Team.new( 'name' => 'Williams')

mercedes.save()
red_bull.save()
ferari.save()
haas.save()
renault.save()
racing_point.save()
alpha_romero.save()
mclaren.save()
alpha_tauri.save()
williams.save()


### DRIVERS ###

hamilton = Driver.new( 'first_name' => 'Lewis', 'last_name' => 'Hamilton', 'team_id' => mercedes.id )
bottas = Driver.new( 'first_name' => 'Valtteri', 'last_name' => 'Bottas', 'team_id' => mercedes.id )
ricciardo = Driver.new( 'first_name' => 'Daniel', 'last_name' => 'Ricciardo', 'team_id' => renault.id )
hulkenberg = Driver.new( 'first_name' => 'Nico', 'last_name' => 'Hulkenberg', 'team_id' => renault.id )
vettel = Driver.new( 'first_name' => 'Sebastian', 'last_name' => 'Vettel', 'team_id' => ferari.id )
leclerc = Driver.new( 'first_name' => 'Charles', 'last_name' => 'LeClerc', 'team_id' => ferari.id )
gasly = Driver.new( 'first_name' => 'Pierre', 'last_name' => 'Gasly', 'team_id' => alpha_tauri.id )
kvyat = Driver.new( 'first_name' => 'Daniil', 'last_name' => 'Kvyat', 'team_id' => alpha_tauri.id )
magnussen = Driver.new( 'first_name' => 'Kevin', 'last_name' => 'Magnussen', 'team_id' => haas.id )
grosjean = Driver.new( 'first_name' => 'Romain', 'last_name' => 'Grosjean', 'team_id' => haas.id )
sainz = Driver.new( 'first_name' => 'Carlos', 'last_name' => 'Sainz', 'team_id' => mclaren.id )
norris = Driver.new( 'first_name' => 'Lando', 'last_name' => 'Norris', 'team_id' => mclaren.id )
raikkonen = Driver.new( 'first_name' => 'Kimi', 'last_name' => 'Raikkonen', 'team_id' => alpha_romero.id )
giovinazzi = Driver.new( 'first_name' => 'Antonio', 'last_name' => 'Giovinazzi', 'team_id' => alpha_romero.id )
verstappen = Driver.new( 'first_name' => 'Max', 'last_name' => 'Verstappen', 'team_id' => red_bull.id )
albon = Driver.new( 'first_name' => 'Alexander', 'last_name' => 'Albon', 'team_id' => red_bull.id )
perez = Driver.new( 'first_name' => 'Sergio', 'last_name' => 'Perez', 'team_id' => racing_point.id )
stroll = Driver.new( 'first_name' => 'Lance', 'last_name' => 'Stroll', 'team_id' => racing_point.id )
russel = Driver.new( 'first_name' => 'George', 'last_name' => 'Russel', 'team_id' => williams.id )
latifi = Driver.new( 'first_name' => 'Nicholas', 'last_name' => 'Latifi', 'team_id' => williams.id )

hamilton.save()
bottas.save()
ricciardo.save()
hulkenberg.save()
vettel.save()
leclerc.save()
gasly.save()
kvyat.save()
magnussen.save()
grosjean.save()
sainz.save()
norris.save()
raikkonen.save()
giovinazzi.save()
verstappen.save()
albon.save()
perez.save()
stroll.save()
russel.save()
latifi.save()


### RACES ###

australia = Race.new( 'location' => 'Australia', 'date' => '15/04/20')
bahrain = Race.new( 'location' => 'Bahrain', 'date' => '22/03/20')
vietnam = Race.new( 'location' => 'Vietnam', 'date' => '05/04/20')
china = Race.new( 'location' => 'China', 'date' => '19/03/20')
netherlands = Race.new( 'location' => 'Netherlands', 'date' => '03/04/20')
spain = Race.new( 'location' => 'Spain', 'date' => '10/04/20')
monaco = Race.new( 'location' => 'Monaco', 'date' => '24/04/20')
azerbaijan = Race.new( 'location' => 'Azerbaijan', 'date' => '07/06/20')
canada = Race.new( 'location' => 'Canada', 'date' => '14/06/20')
france = Race.new( 'location' => 'France', 'date' => '28/06/20')
austria = Race.new( 'location' => 'Austria', 'date' => '05/07/20')
uk = Race.new( 'location' => 'United Kingdom', 'date' => '19/07/20')
hungary = Race.new( 'location' => 'Hungary', 'date' => '02/08/20')
belgium = Race.new( 'location' => 'Belgium', 'date' => '30/08/20')
italy = Race.new( 'location' => 'Italy', 'date' => '06/09/20')
singapore = Race.new( 'location' => 'Singapore', 'date' => '20/09/20')
russia = Race.new( 'location' => 'Russia', 'date' => '27/09/20')
japan = Race.new( 'location' => 'Japan', 'date' => '11/10/20')
us = Race.new( 'location' => 'United States', 'date' => '25/10/20')
mexico = Race.new( 'location' => 'Mexico', 'date' => '01/11/20')
brazil = Race.new( 'location' => 'Brazil', 'date' => '15/11/20')
abu_dhabi = Race.new( 'location' => 'Abu Dhabi', 'date' => '29/11/20')

australia.save()
bahrain.save()
vietnam.save()
china.save()
netherlands.save()
spain.save()
monaco.save()
azerbaijan.save()
canada.save()
france.save()
austria.save()
uk.save()
hungary.save()
belgium.save()
italy.save()
singapore.save()
russia.save()
japan.save()
us.save()
mexico.save()
brazil.save()
abu_dhabi.save()


### RESULTS ###

driver_results_aus = [verstappen, hamilton, leclerc, albon, norris, bottas, vettel,
                        gasly, ricciardo, sainz, kvyat, giovinazzi, hulkenberg, 
                        grosjean, raikkonen, perez, magnussen, stroll, russel, latifi]

@pos_aus = 1
driver_results_aus.each do |result|
    result_options = { 'position' => @pos_aus , 'driver_id' => result.id, 'race_id' => australia.id }
    aus_results = Result.new( result_options )
    aus_results.save()
    @pos_aus += 1
end


driver_results_bah = [hamilton, bottas, verstappen, leclerc, albon, vettel, gasly,
                        hulkenberg, ricciardo, magnussen, sainz, norris, kvyat, 
                        raikkonen, perez, giovinazzi, stroll, russel, latifi, grosjean]

@pos_bah = 1
driver_results_bah.each do |result|
    result_options = { 'position' => @pos_bah , 'driver_id' => result.id, 'race_id' => bahrain.id }
    aus_results = Result.new( result_options )
    aus_results.save()
    @pos_bah += 1
end




















# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )
# result_aus_1 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => australia.id )



# result2 = Result.new( 'position' => 1, 'driver_id' => bottas.id, 'race_id' => australia.id )
# result3 = Result.new( 'position' => 4, 'driver_id' => vettel.id, 'race_id' => australia.id )
# result4 = Result.new( 'position' => 2, 'driver_id' => hamilton.id, 'race_id' => italy.id )

# result1.save()
# result2.save()
# result3.save()
# result4.save()







### DECLARE VARIABLES (FOR PRY) ###

drivers = Driver.all()
teams = Team.all()
races = Race.all()
results = Result.all()

binding.pry
nil